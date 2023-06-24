function test()
    input = imread("[image_name].[image_extension]");
    output = (ideal_lowpass_filter(input,30));
    imshow(output,[]);

    input = imread("[image_name].[image_extension]");
    output = (ideal_lowpass_filter(input,30));
    figure
    imshow(output,[]);
end
