function [output] = strong_highboost_filter(input)
  [height, width, numberOfChannels] = size(input);

  if numberOfChannels > 1
    input = rgb2gray(input);
  end

  SHBF = [0 -1 0; -1 5 -1; 0 -1 0];
  convolution = conv2(input, SHBF, "same");
  output = uint8(convolution);
end
