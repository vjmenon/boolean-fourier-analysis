function [f, F] = random_juntas(n, K)
      %n is the number of agents.
      %K - vector which contains the indices of the agents(bits) who are part of the junta.  |k| = 1 => dictator.
      
      %Generate a random junta function (jF). i.e. it randomly assigns 0/1 considering only the relevant bits
      j = length(K);
      
      for y=0:2^j - 1
          jF(y + 1) = randi(2) - 1;     %random assignment
      end      
      
      for x=0:2^n - 1
        f(x + 1) =  jF(bi2de(bitget(x, K)) + 1);   %look at the relevant bits alone and see the corresponding jF function value
      end      
           
      F = bool_ft(f);
 
 end      