# Fitting-functions-by-Gradient-Descent
Fitting a function to data using gradient descent
## What does it do
Fit an arbitrary univariate function to data by gradient descent using [Julia programming language](https://julialang.org/).

The gradient descent method makes use of the first derivative of the cost function to iteratively find its global minimum. This global minimum corresponds to the parameter value that yields the best fit of the target function to the data.
The periodic univariate function shown below is used as an example to illustrate code:

![Local functions](https://github.com/jmrmcode/Fitting-functions-by-Gradient-Descent/blob/main/math-202011.png)

and the sum of squared errors as the cost function:

![Local functions](https://github.com/jmrmcode/Fitting-functions-by-Gradient-Descent/blob/main/math-20201111.png)

The algorithm starts with an initial value of the parameter to estimate ($\theta$) and gradually get closer to the value of theta that corresponds to the best fit of f to the data.
