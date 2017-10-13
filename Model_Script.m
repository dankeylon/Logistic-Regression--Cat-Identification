clear
%Collection of Matlab commands to set up the Machine Learning Problem
%And collect the results.
[train_set_x_orig, train_set_y, test_set_x_orig, test_set_y] = Load_Data_mat();

size_train = size(train_set_x_orig);
size_test = size(test_set_x_orig);

[m_train, m_test, num_px] = Get_Dims(train_set_x_orig, train_set_y, test_set_x_orig, test_set_y);

%Recovers an image from the train set; Change index for new picture
% index = 15;
% Get_Imag(train_set_x_orig,index);

train_set_x_perm = permute(train_set_x_orig, [2 3 4 1]);
test_set_x_perm = permute(test_set_x_orig, [2 3 4 1]);

train_set_x_flat = reshape(train_set_x_perm, [], m_train);
test_set_x_flat = reshape(test_set_x_perm, [], m_test);

train_set_x = (double(train_set_x_flat)/255);
test_set_x  = (double(test_set_x_flat)/255);

train_set_y = double(train_set_y);
test_set_y = double(test_set_y);

d = Model_Run(train_set_x, train_set_y, test_set_x, test_set_y, 2000, 0.005, 1)

costs = d('costs');
plot(costs)