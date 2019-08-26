function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

Xh = X(2:118,2:28);
th = theta(2:28,1);
yh = y(2:118,1);

h = sigmoid(Xh*th)';
left = log(h)*(-yh);
right = log(1-h)*(1-yh);
s = sum(left - right);
J = ((1/m) * s) + ((lambda/(2*m))*sum(th.^2));


X1 = X(1,:);
t1 = theta(1,1);
y1 = y(1,1);
gradZero = (1/m) * sum((sigmoid(X1*t1)'-y1)*X1);

originalGrad = (1/m) * sum((sigmoid(Xh*th)'-yh)*Xh);
regularizedP = (lambda/m) * th;
gradAll = originalGrad + regularizedP;

%grad = [gradZero;gradAll];
% =============================================================

end
