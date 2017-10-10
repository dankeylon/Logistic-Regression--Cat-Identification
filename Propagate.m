function [grads, cost] = Propagate(w, b, X, Y)
%     Implement the cost function and its gradient for the propagation explained above
% 
%     Arguments:
%     w -- weights, a numpy array of size (num_px * num_px * 3, 1)
%     b -- bias, a scalar
%     X -- data of size (num_px * num_px * 3, number of examples)
%     Y -- true "label" vector (containing 0 if non-cat, 1 if cat) of size (1, number of examples)
% 
%     Return:
%     cost -- negative log-likelihood cost for logistic regression
%     dw -- gradient of the loss with respect to w, thus same shape as w
%     db -- gradient of the loss with respect to b, thus same shape as b
%     
%     Tips:
%     - Write your code step by step for the propagation. np.log(), np.dot()

m = size(X, 2);

%Forward propagation
A = double(Sigmoid(w' * X + b));
cost = (-1/m) * sum((Y * log(A') + (1 - Y) * log(1 - A')));

%Backward propagation
dw = (1/m) * (X * (A - Y)');
db = (1/m) * sum(A - Y);

if size(dw) ~= size(w)
    message = 'dw ~= w'
end
assert(isfloat(db));
cost = squeeze(cost);

keySet = {'dw', 'db'};
valueSet = {dw, db};
grads = containers.Map(keySet, valueSet); 

end

