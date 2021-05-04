# False Position

This function estimates the root of an equation using the following inputs
- func - the function being evaluated
- x_l - the lower guess
- x_u- the upper guess
- es - the desired relative error 
- maxit - the maximum number of iterations to use 
- varargin - any additional parameters used by the function

It produces a matrix of outputs [root, fx, ea, iter] where
- root - the estimated root location
- fx - the function evaluated at the root location
- ea - the approximate relative error (%)
- iter - how many iterations were performed

The function needs at least a function, a lower guess, and an upper guess. 
If there is no desired error provided, it reverts to 0.0001%. 
If there is no maximum number of iterations provided, it reverts to 200
