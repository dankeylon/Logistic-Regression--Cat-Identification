clear

[train_set_x_orig, train_set_y, test_set_x_orig, test_set_y] = Load_Data_mat();

train_set_x_orig(1,1,1,1:3);
size(train_set_x_orig);
size(test_set_x_orig);

[m_train, m_test, num_px] = Get_Dims(train_set_x_orig, train_set_y, test_set_x_orig, test_set_y);

%index = 15;
%Get_Imag(train_set_x_orig,index);

train_set_x_flat = reshape(train_set_x_orig, [], m_train);
test_set_x_flat = reshape(test_set_x_orig, [], m_test);

%train_set_x_flat(1:5, 1:3)

train_set_x = (train_set_x_flat/255);
test_set_x  = (test_set_x_flat/255);

train_set_x = double(train_set_x);
test_set_x = double(test_set_x);
train_set_y = double(train_set_y);
test_set_y = double(test_set_y);
% size(train_set_x);
% size(train_set_x);
% size(test_set_x);
% 
% train_set_x(1, 1:3);

d = Model_Run(train_set_x, train_set_y, test_set_x, test_set_y, 2000, 0.005, 1)

costs = d('costs');
plot(costs)