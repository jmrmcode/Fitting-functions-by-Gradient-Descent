# Fitting-functions-by-Gradient-Descent
Fitting a function to data using gradient descent
## What does it do
Fit an arbitrary univariate function to data by gradient descent using [Julia programming language](https://julialang.org/).

The gradient descent method makes use of the first derivative of a cost function to iteratively find a local minimum. This local minimum corresponds to the parameter value that yields the best fit of the target function to the data.
The periodic function shown below is used as an example to illustrate the code:

![Local functions](https://github.com/jmrmcode/Fitting-functions-by-Gradient-Descent/blob/main/math-202011.png)

The sum of squared errors is used as the cost function (which has only one local minimum):

![Local functions](https://github.com/jmrmcode/Fitting-functions-by-Gradient-Descent/blob/main/math-20201113.png)

The algorithm starts with an initial value of the parameter to estimate &theta; and gradually gets closer to the value of &theta; that corresponds to the best fit of *f*. The equation that gets the parameter closer is:

![Local functions](https://github.com/jmrmcode/Fitting-functions-by-Gradient-Descent/blob/main/math-20201112.png)

where &lambda; is the step size and determines the distance of the next step. It should be as small as possible to avoid going over the minimum.

The workflow is as follows:

1. Calculate &theta;<sub>j</sub> using the equation above.
2. If the absolute difference &theta;<sub>j-1</sub> - &theta;<sub>j</sub> is greater than a value &epsilon;, then &theta;<sub>j-1</sub> = &theta;<sub>j</sub> and return to step 1. Otherwise, the algorithm jumps to step 3.
3. &theta;<sub>j</sub> is an approximate value of &theta; for which the difference between *y<sub>i</sub>* (the observed value)and *f(t)* (the fitted value) is minimum. The value of &epsilon; determines when to stop the algorithm.

Since one &theta; is estimated for each obervation, 
