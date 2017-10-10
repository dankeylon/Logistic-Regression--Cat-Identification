function [ w, b ] = Initialize_With_Zeros( dim )
%     This function creates a vector of zeros of shape (dim, 1) for w and initializes b to 0.
%     
%     Argument:
%     dim -- size of the w vector we want (or number of parameters in this case)
%     
%     Returns:
%     w -- initialized vector of shape (dim, 1)
%     b -- initialized scalar (corresponds to the bias)

w = zeros(dim, 1);
b = 0;

end

