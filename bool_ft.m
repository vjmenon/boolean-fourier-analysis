function F = bool_ft(f)
    % Calculates the Fourier coefficients of a boolean function f.
    % input: f - a vector of size 2^n representing a boolean function.
    % output: F - a vector of the 2^n Fourier coefficients.

    N = length(f); % N = 2^n
    n = int32(log2(N));
    F = zeros(N,1); % Fourier coefficients

    % for each subset / coefficient
    for S=0:N-1
        f_sum = 0;
 
        % calculate <f,chi_S>
        for x=0:N-1
          % Note: sum(bitget(bitand(S,x),1:n)) = S * x          	
          %f_sum = f_sum + f(x+1) * (-1)^(sum(bitget(bitand(S,x),1:n)))         
          
          f_sum = f_sum + f(x+1) * (-1)^dot(de2bi(S, n), de2bi(x,n));         
          
        end
        F(S+1) = f_sum;
    end
    
    F = 1.0 / N * F;
end