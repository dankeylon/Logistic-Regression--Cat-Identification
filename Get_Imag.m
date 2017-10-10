function [ ] = Get_Imag( imag_set, index )
%GET_IMAG: compactly displays an image from a dataset

size_of = size(imag_set);

image1 = squeeze(imag_set(index,:,:,:));
%image1 = permute(image1, [3 2 1]);
figure
imagesc(image1)
end

