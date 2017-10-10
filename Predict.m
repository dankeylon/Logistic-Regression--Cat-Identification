function [ Y_prediction ] = Predict( w, b, X )   
%     Predict whether the label is 0 or 1 using learned logistic regression parameters (w, b)
%     
%     Arguments:
%     w -- weights, a numpy array of size (num_px * num_px * 3, 1)
%     b -- bias, a scalar
%     X -- data of size (num_px * num_px * 3, number of examples)
%     
%     Returns:
%     Y_prediction -- a numpy array (vector) containing all predictions (0/1) for the examples in X

m = size(X, 2);
Y_prediction = zeros(1, m);
w = reshape(w, size(X, 1), 1);

A = Sigmoid(w' * X + b);

for iter = 1:size(A,2)
   if A(1, iter) <= .5
      Y_prediction(1,iter) = 0;
   elseif A(1, iter) > .5
      Y_prediction(1,iter) = 1;
   end
   
end

if size(Y_prediction) ~= [1, m]
    message = ["Size isn't correct"]
end

    
end

