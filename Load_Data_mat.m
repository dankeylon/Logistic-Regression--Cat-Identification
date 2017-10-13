function [train_set_x, train_set_y, test_set_x, test_set_y] = Load_Data_mat()
%LOAD_DATA: loads the data from the .mat file data_sets.mat which contains
%the 4 data sets train_set_x, train_set_y, test_set_x, test_set_y
%which were created in the Ipython notebook using scipy.io.savemat.

%filepath = 'C:\Users\Gothmog\Google Drive\Code Projects\Matlab\Logistic Regression-Cat ID';
filepath = 'data_sets.mat';
load(filepath);

%train_set_y = train_set_y';
%test_set_y = test_set_y';

%ndim = numel(size(train_set_x));
%train_set_x = permute(train_set_x, [ndim:-1:1]);

%ndim = numel(size(test_set_x));
%test_set_x = permute(test_set_x, [ndim:-1:1]);

end