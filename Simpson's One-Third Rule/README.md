# Simpson's 1/3 Rule

This function uses Simpson's 1/3 rule to integrate experimental data and estimates the area under the curve. 

The function requires an input of a matrix of x values and a matrix of y values. In return, it outputs a value of I, which is the estimated value under the curve. 

The algorithm splits up the data into sections and adds up area between points, and if there is an odd number of intervals, the trapezoidal rule is used for the last interval.
The user is provided with an error if the trapezoidal rule is necessary.

This code will only work if the x inputs are equally spaced and if there are equal numbers of x and y inputs. 
