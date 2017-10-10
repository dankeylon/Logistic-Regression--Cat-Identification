function [train_set_x, train_set_y, test_set_x, test_set_y] = Load_Data_h5()
%LOAD_DATA Summary of this function goes here
%   Detailed explanation goes here

raw_train_x = h5read('train_catvnoncat.h5','/train_set_x');
ndim = numel(size(raw_train_x));
train_set_x = permute(raw_train_x, [ndim:-1:1]);

raw_train_y = h5read('train_catvnoncat.h5','/train_set_y');
ndim = numel(size(raw_train_y));
train_set_y = permute(raw_train_y, [ndim:-1:1]);
%train_set_x = permute(train_set_x, [4 3 2 1]);
%train_set_y = train_set_y';

raw_test_x = h5read('test_catvnoncat.h5','/test_set_x');
ndim = numel(size(raw_test_x));
test_set_x = permute(raw_test_x, [ndim:-1:1]);

raw_test_y = h5read('test_catvnoncat.h5','/test_set_y');
ndim = numel(size(raw_test_y));
test_set_y = permute(raw_test_y, [ndim:-1:1]);

%test_set_y = test_set_y';
%test_set_x = permute(test_set_x, [4 3 2 1]);

end

