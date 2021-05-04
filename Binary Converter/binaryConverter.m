function [base2] = binaryConverter(base10)
%binary A simple function to convert a base10 number to binary
%   Inputs:
%       base10 - A number in base10
%   Outputs:
%       base2 - The base10 number converted to binary
if base10 == 0
    base2 = [0]
else
    a =  log2(base10)
    b = floor(a)
    c = (2^a)-(2^b)
    base2 = zeros(1,(b+1))
    base2(1,1) = 1
    for d = 2:b
        e =  log2(c)
        f = floor(e)
        g = abs(f)
        c = (2^e)-(2^f)
        if c >= 0
            base2(1,((b+1)-g)) = 1
        else 
            base2(1,((b+1)-g)) = 0
        end
    end
end
end