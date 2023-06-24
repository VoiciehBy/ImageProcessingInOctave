close all;
clear all;

function [output] = ideal_lowpass_filter(input,cutOffFrequency)
  [height, width] = size(input);

  input_ff2 = fft2(double(input));

  vector_u = 0:(height-1);
  vector_v = 0:(width-1);

  %indices of values of vector_u that are greater than half of height
  I = find(vector_u>height/2);
  %indices of values of vector_u that are greater than half of width
  J = find(vector_v>width/2);
  vector_u(I) = vector_u(I) - height;
  vector_v(J) = vector_v(J) - width;


  [U,V] = meshgrid(vector_u,vector_v);
  euclidean_distance = sqrt(U.^2 + V.^2);
  filtering_mask = double(euclidean_distance <= cutOffFrequency);
  convolution = filtering_mask.*input_ff2;
  output = real(ifft2(double(convolution)));
end

function [y] = main()
    input = imread("[image_name].[image_extension]");
    input = rgb2gray(input);
    output = (ideal_lowpass_filter(input,30));
    imshow(output,[]);
    printf("%s\n","Hello!");
    y = 0;
end
main();
