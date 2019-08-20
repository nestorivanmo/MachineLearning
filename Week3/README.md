### Week 3

---

### Logistic Regression: Classification 

Examples: 

- Email: Spam, not Spam? 
- Online Transactions: Fraudalent (y/n) ? 
- Tumor: Malignant/Benign ? 

The variable $y$ is a discrete variable between $0$ and $1$. 

- 0: Negative class 
- 1: Positive class 

Multiclass classification problem: $y$ can be $0,1,2,3,4$ instead of $0$ or $1$. 

---

<u>Note:</u> do not use linear regression for classification problems. 

**Logistic Regression algorithm:** $0 <= h_\Theta <= 1$

![Screen Shot 2019-08-20 at 15.07.48](Screen Shot 2019-08-20 at 15.07.48.png)

####Hypothesis Representation

![Screen Shot 2019-08-20 at 15.18.44](Screen Shot 2019-08-20 at 15.18.44.png)

![Screen Shot 2019-08-20 at 15.25.20](Screen Shot 2019-08-20 at 15.25.20.png)

---

#### Decision Boundary 

$h_\Theta = g(\Theta^Tx) = P(y=1|x;\Theta)$

$g(z) = \frac{1}{1+e^z}$

![Screen Shot 2019-08-20 at 15.32.01](Screen Shot 2019-08-20 at 15.32.01.png)

![Screen Shot 2019-08-20 at 15.35.40](Screen Shot 2019-08-20 at 15.35.40.png)

---

#### Non-linear decision boundaries 

 ![Screen Shot 2019-08-20 at 15.49.30](Screen Shot 2019-08-20 at 15.49.30.png)

<u>Note:</u> $\Theta$ is the vector that defines the decision boundary and NOT the training examples. 

---

#### Cost Function

How can we fit the parameters $\Theta$ to our data? 

**Logistic regression cost function**

![Screen Shot 2019-08-20 at 16.02.17](Screen Shot 2019-08-20 at 16.02.17.png)

![Screen Shot 2019-08-20 at 16.04.54](Screen Shot 2019-08-20 at 16.04.54.png)

We cannot use the same cost function that we use for linear regression because the Logistic Function will cause the output to be wrong, causing many local optima (i.e., it will not be a convex function). 

**Cost function for logistic regression...**

$J_\Theta = \frac{1}{m}\Sigma Cost(h_\Theta(x^{(i)}),y^{(i)})$

$Cost(h_\Theta(x),y) = -log(h_\Theta(x))$ if $y=1$

$Cost(h_\Theta(x),y) = -log(1-h_\Theta(x))$ if $y=0$

<u>Note:</u> we write the cost function this way to guarantee that the cost function is convex for logistic regression. 

---

#### Simplified cost funcition and gradient descent 

$Cost(h_\Theta,y) = -y log(h_\Theta(x)) - (1-y)log(1-h_\Theta(x))$; $y=1$ or $y=0$ --> Simplified cost function

![Screen Shot 2019-08-20 at 16.36.09](Screen Shot 2019-08-20 at 16.36.09.png)

**Gradient Descent**

![Screen Shot 2019-08-20 at 16.38.02](Screen Shot 2019-08-20 at 16.38.02.png)

 ![Screen Shot 2019-08-20 at 16.41.23](Screen Shot 2019-08-20 at 16.41.23.png)

































