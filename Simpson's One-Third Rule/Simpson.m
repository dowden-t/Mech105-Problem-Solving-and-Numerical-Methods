function [I] = Simpson(x, y)
% Numerical evaluation of integral by Simpson's 1/3 Rule
% Inputs
%   x = the vector of equally spaced independent variable
%   y = the vector of function values with respect to x
% Outputs:
%   I = the numerical integral calculated
n= numel(x)
if numel(x)~=numel(y)
    error('Mismatched inputs')
end
d = (max(x)-min(x))/(n-1)
e = x(2)-x(1)
if e ~= d
    error('Not uniform distribution')
end

h = (max(x)-min(x))/(n-1)
if n ==3
    I = (h/3)*(y(1)+4*(y(2))+y(n))
else
    if rem(n,2) ==0
    warning('Trapezoidal rule must be used for last phrase')
    if n==2
        I = (x(n)-x(1))*((y(n)+y(1))/2)
    else
        i_1 = (h/3)*(y(1)+4*(sum(y(2:2:n-2)))+2*(sum(y(3:2:n-1)))+y(n))
        i_2 = (x(n)-x(n-1))*((y(n)+y(n-1))/2)
        I = i_1+i_2
    end
    else
        I= (h/3)*(y(1)+4*(sum(y(2:2:n-2)))+2*(sum(y(3:2:n-1)))+y(n))
            
    end
end