function [root, fx, ea, iter] = falsePosition(func, xl, xu, es, maxit, varargin)
if nargin < 3
    error ('Not enough inputs')
elseif nargin < 4
    es = 0.0001;
    maxit = 200;
elseif nargin < 5
    maxit =200;
else 
   % varagrin
end
eqn = func;
iter = 0; 
ea = es+1;
while abs(ea) > es && iter < maxit
    root = xu- (eqn(xu)*(xu-xl)/(eqn(xu)-eqn(xl)));
    ea = ((root - xu)/xu)*100;
    fx = eqn(root);
    xl = xu;
    xu = root;
    iter = iter +1;
end
iter = iter-1

end