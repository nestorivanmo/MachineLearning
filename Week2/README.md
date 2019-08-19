### Week 2 

#### Linear Regression with Multiple Variables 

![Screen Shot 2019-08-12 at 19.24.13](Screen Shot 2019-08-12 at 19.24.13.png)

New hypothesis: 

$h_\Theta(x) = \Theta_0X_0 + \Theta_1X_1 + ... + \Theta_nX_n$ -> Multivariate linear regression 

$x_0 = 1$ 

$h_\Theta(x) = \Theta^Tx$ 

---

#### Gradient Descent for Multiple Variables 

![Screen Shot 2019-08-12 at 19.38.33](Screen Shot 2019-08-12 at 19.38.33.png)

![Screen Shot 2019-08-12 at 19.46.20](Screen Shot 2019-08-12 at 19.46.20.png)

----

#### Gradient Descent in Practice: Feature Scaling 

We divide our features values so that Gradient Descent takes less time to approach the center of our function. 

![Screen Shot 2019-08-12 at 19.51.16](Screen Shot 2019-08-12 at 19.51.16.png)

We need to get every feature intro approximately $-1 <= x_i <= 1$

**Mean Normalization**

Replace $x_i$ with $x_i - \mu_i$ to make features approximately zero to mean. 

![Screen Shot 2019-08-12 at 19.55.34](Screen Shot 2019-08-12 at 19.55.34.png)

$\mu_i$: average value of $x_i$ in training set 

$s_i$: range (max-min) or standard deviation 

$x_i = \frac{x_i - \mu_i}{s_i}$

![Screen Shot 2019-08-12 at 19.59.01](Screen Shot 2019-08-12 at 19.59.01.png)

----

#### qGradient Descent in Practice: Learning Rate 

1. How to know if G.D. is working correctly? 
2. How to get a proper value of $\alpha$

$J(\Theta)$ should decrease after each iteration 

![Screen Shot 2019-08-12 at 20.04.19](Screen Shot 2019-08-12 at 20.04.19.png)

**When** G.D. is NOT working 

![Screen Shot 2019-08-12 at 20.07.34](Screen Shot 2019-08-12 at 20.07.34.png)

**Notes:** 

1. If $\alpha$ is small enough $J(\Theta)$ should decrease but it may do it very slowly. 
2. If $\alpha$ is too big $J(\Theta)$ may not decrease on every iteration; may not converge. 

**To Choose $\alpha$** try:  ..., 0.001, 0.003, 0.01, 0.03, 0.1, 0.3, 1, ...

---

#### Features and Polynomial Regressions 

We can create our own features besides the ones that are given to us; depending on the insight we have of our problem. 

![Screen Shot 2019-08-12 at 20.15.18](Screen Shot 2019-08-12 at 20.15.18.png)



**Polynomial Regression**

How do we fit one model to our data ?? For example, using a cubic model 

![Screen Shot 2019-08-12 at 20.17.37](Screen Shot 2019-08-12 at 20.17.37.png)

Now, we should use **Feature Scaling**

#### Choice of Features

![Screen Shot 2019-08-12 at 20.21.15](Screen Shot 2019-08-12 at 20.21.15.png)

---

#### Normal Equation 

Solve for the optimal values $\Theta$ in a better way; i.e., solve for $\Theta$ analytically instead of iterative. 

![Screen Shot 2019-08-15 at 14.13.34](/Users/nestorivanmo/Desktop/MachineLearning/Week2/Screen Shot 2019-08-15 at 14.13.34.png)



![Screen Shot 2019-08-15 at 14.16.23](/Users/nestorivanmo/Desktop/MachineLearning/Week2/Screen Shot 2019-08-15 at 14.16.23.png)

$\Theta = (X^TX)^{-1}X^Ty$

**Comparison between Gradient Descent vs Normal Equation**

Given $m$ training examples and $n$ features: 

| <u>Gradient Descent</u>               | <u>Normal Equation</u>                                      |
| :------------------------------------ | ----------------------------------------------------------- |
| - Need to choose $\alpha$             | - No need to choose $\alpha$                                |
| - Needs many iterations               | - Don't need to iterate                                     |
| - Alg. complexity: $O(kn^2)$          | - Need to compute $(X^TX)^{-1}$ ~ alg. complexity: $O(n^3)$ |
| - Works well even with with large $n$ | - Slow if $n$ is very large                                 |

---

#### Normal Equation and non-invertibility 

What if $X^TX$ is non-invertible ? (this case should happen very rarely)

- Redundant features (linearly dependent)
  - $x_1$-> size in $feet^2$
  - $x_2$ -> size in $m^2$
  - Delete either $x_1$ or $x_2$
- Too many features ($m <= n$)
  - Delete some features or use *regularization*
