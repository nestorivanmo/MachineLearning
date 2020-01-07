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

% lists without the first parameter
theta_m = theta(2:end,1); % 27 x 1 
X_m = X(:,2:end); % 118 x 27 

%hypothesis
h_m = sigmoid(theta_m' * X_m')'; %118 x 1  

%parameters 
left = -y' * log(h_m); % 
right = (1-y)' * log(1-h_m);% 117 x 117 
central = sum(left - right);

%cost function 
j = ((1/m) * central) + ((lambda/m)*sum(theta_m));
J = round(1000 * j) / 1000;

%gradient for j = 0

h_z = sigmoid(theta(1)' * X(:,1)')';
d = h_z - y; 
c = sum(d' * X(:,1));
grad_z = round(10000 * ((1/m) * c)) / 10000;

%0.008475

grad_m = round(10000 * ((1/m)*X_m'*(h_m-y) + ((lambda/m)*theta_m)) ) / 10000;

grad = [grad_z; grad_m];

% =============================================================

end
