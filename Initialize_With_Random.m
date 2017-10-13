function [ w, b ] = Initialize_With_Random( dim )
%Alternative to Initialize_With_Zeros
%Creates a w vector and a b offset

w = rand(dim, 1)/10000;
b = 0;

end

