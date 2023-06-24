function test()
    input = imread("[image_name].[image_extension]");
    output = (ideal_lowpass_filter(input,30));
    imshow(output,[]);
end
