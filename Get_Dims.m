function [m_train, m_test, num_pix ] = Get_Dims(train_set_x, train_set_y, test_set_x, test_set_y)
%CHECK_SIZES: can be used to check the dimensions of the 4 datasets.
%also returns the number of training examples, test examples and the 
%number of pixels per dimension.


size_train_x = size(train_set_x);
size_train_y = size(train_set_y);
size_test_x = size(test_set_x);
size_test_y = size(test_set_y);

m_train = size_train_x(1);
m_test = size_test_x(1);
num_pix = size_test_x(2);

end

