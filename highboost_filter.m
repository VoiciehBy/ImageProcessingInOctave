function [output] = highboost_filter(input)
  [height, width, numberOfChannels] = size(input);

  if numberOfChannels > 1
    input = rgb2gray(input);
  end

  HBF = [0 -1 0; -1 5 -1; 0 -1 0];
  convolution = conv2(input, HBF, "same");
  output = uint8(convolution);
end
