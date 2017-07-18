function data = wave_length_distribution(range,alpha,beta)

range = mat2gray(range);

data = range.^(alpha-1).*(1-range).^(beta-1);
data = mat2gray(data);

end