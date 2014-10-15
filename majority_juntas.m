function [f, F] = majority_juntas(n, K)
      %n is the number of agents.
      %K - vector which contains the indices of the agents(bits) who are part of the junta.  |k| = 1 => dictator.
      
      for x=0:2^n - 1     
          j = 0;
          for i = 1:length(K)
              j = j + bitget(x, K(i)); %checking if the all the k-junta bits are 1; complete consensus junta
          end              
          
          if j >= length(K)/2
              f(x + 1) =  1;
          else
              f(x + 1) =  0;
          end 
      end
      
      F = bool_ft(f);
 
 end      