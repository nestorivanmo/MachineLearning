## Week 1 

**Machine Learning** is the science of getting computers to learn without being explicitly programmed. 

<u>Examples of appliance:</u>

1. Database mining (web click data, medical records, human genome, engineering data sets)
2. Applications that cannot be programmed by hand (handwriting recognition, Natural Language Processing, Computer Vision)
3. Self-customizing programs 
4. Understanding human learning 

---

###Introduction 

What is Machine Learning ? 

Field of study that gives computer the ability to learn without being explicitely programmed ~ Arthur Samuel (1959) 

A computer program is said to *learn* from experience E with respect to some task T and some measure of performance P, if its performance on T, as measured by P, improves with experience E ~ Tom Mitchel (1998)

**Machine Learning algorithms**

1. Supervised learning: we're going to teach the computer how to do something.	
2. Unsupervised learning: the computer will learng by itself. 
3. Others: Reinforcement learning and recommender systems. 

---

### Introduction: Supervised Learning 

1. **Regression problem**

![Screen Shot 2019-08-06 at 15.45.56](/Users/nestorivanmo/Desktop/MachineLearning/Week1/Screen Shot 2019-08-06 at 15.45.56.png)

Rights answers were given to this algorithm. The task of the algorithm was just to produce more right answers. This is also called a **regression problem** where the algorithm should produce continious valued output (price). 

2. **Classification problem**: discrete value output (0 or 1)

   ![Screen Shot 2019-08-06 at 15.59.33](/Users/nestorivanmo/Desktop/MachineLearning/Week1/Screen Shot 2019-08-06 at 15.59.33.png)

![Screen Shot 2019-08-06 at 16.03.02](/Users/nestorivanmo/Desktop/MachineLearning/Week1/Screen Shot 2019-08-06 at 16.03.02.png) 

We can work with an infinite long list of features. 

---

### Introduction: Unsupervised Learning 

Data that has no labels. Given a dataset, can you find some structure? Unsupervised Learning allows us to approach problems with little or no idea what our results should look like. We can derive a structure by clustering data based on relationships among the variables in the data. 

1. **Clustering algorithms**
   1. organize computing clusters 
   2. social network analysis 
   3. **market segmentation**
   4. astronomical data analysis
2. **Non-clustering algorithms**: The Cocktail Party algorithm 

---

### Linear Regression with one variable (univariate linear regression)

**Model representation**

![Screen Shot 2019-08-06 at 16.46.13](/Users/nestorivanmo/Desktop/MachineLearning/Week1/Screen Shot 2019-08-06 at 16.46.13.png)

![Screen Shot 2019-08-06 at 16.48.27](/Users/nestorivanmo/Desktop/MachineLearning/Week1/Screen Shot 2019-08-06 at 16.48.27.png)

**Cost function**

How to chose $\Theta$ 

$h=\Theta_1 + \Theta_2 x$

Minimize $\Theta_0 , \Theta_1$

![Screen Shot 2019-08-06 at 17.02.08](/Users/nestorivanmo/Desktop/MachineLearning/Week1/Screen Shot 2019-08-06 at 17.02.08.png)

$J(\theta_0, \theta_1) = \dfrac {1}{2m} \displaystyle \sum _{i=1}^m \left ( \hat{y}_{i}- y_{i} \right)^2 = \dfrac {1}{2m} \displaystyle \sum _{i=1}^m \left (h_\theta (x_{i}) - y_{i} \right)^2$

​	