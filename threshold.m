function [f, F] = threshold(n, k)
      %n is the number of agents.
      %k - threshold value. i.e. if number of 1's in input >= k then output 1. else 0.
      
      for x=0:2^n - 1          
          s = 0;          
          for i = 1:n             
             s = s + bitget(x, i);
          end         
          
          if s >= k
              f(x + 1) = 1;
          else
              f(x + 1) = 0;
          end
      end
      
      F = bool_ft(f);      
end
     
     
      