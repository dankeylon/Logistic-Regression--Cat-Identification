function [d] = Model_Run(X_train, Y_train, X_test, Y_test, num_iterations, learning_rate, print_cost)
%     Builds the logistic regression model by calling the function you've implemented previously
%     
%     Arguments:
%     X_train -- training set represented by a numpy array of shape (num_px * num_px * 3, m_train)
%     Y_train -- training labels represented by a numpy array (vector) of shape (1, m_train)
%     X_test -- test set represented by a numpy array of shape (num_px * num_px * 3, m_test)
%     Y_test -- test labels represented by a numpy array (vector) of shape (1, m_test)
%     num_iterations -- hyperparameter representing the number of iterations to optimize the parameters
%     learning_rate -- hyperparameter representing the learning rate used in the update rule of optimize()
%     print_cost -- Set to true to print the cost every 100 iterations
%     
%     Returns:
%     d -- dictionary containing information about the model.

dim = size(X_train, 1);
%Initialize parameters with zero
[w, b] = Initialize_With_Zeros(dim);
%[w, b] = Initialize_With_Random(dim);

%Perform Gradient Descent
[parameters, grads, costs] = Optimize(w, b, X_train, Y_train, num_iterations, learning_rate, print_cost);

%Retrieve parameters w and b from dictionary "parameters"
w = parameters('w');
b = parameters('b');

%Predict test/train set examples
Y_prediction_test = Predict(w, b, X_test);
Y_prediction_train = Predict(w, b, X_train);

train_accuracy = double(100.0 - mean(abs(double(Y_prediction_train) - double(Y_train))) * 100.0)
test_accuracy = double(100.0 - mean(abs(double(Y_prediction_test) - double(Y_test))) * 100.0)

keySet = {'costs', 'Y_prediction_test', 'Y_prediction_train', 'w', 'b', 'learning_rate', 'num_iterations'};
valueSet = {costs, Y_prediction_test, Y_prediction_train, w, b, learning_rate, num_iterations};
d = containers.Map(keySet, valueSet); 
end

