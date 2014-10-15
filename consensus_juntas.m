function [f, F] = testing_juntas(n, K)
      %n is the number of agents.
      %K - vector which contains the indices of the agents(bits) who are part of the junta.  |k| = 1 => dictator.
      
      for x=0:2^n - 1     
          j = 1;                 
          j = and(j, bitget(x, K)); %checking if the all the k-junta bits are 1; complete consensus junta           
          
          if j
              f(x + 1) =  1;
          else
              f(x + 1) =  0;
          end 
      end
      
      F = bool_ft(f);
 
 end      