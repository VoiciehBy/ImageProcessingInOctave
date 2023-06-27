function test()
    input = imread("[image_name].[image_extension]");
    subplot(1,3,1),imshow(input,[]);

    output = ideal_lowpass_filter(input,30);
    subplot(1,3,2),imshow(output,[]);

    output = ideal_highpass_filter(input,30);
    subplot(1,3,3),imshow(output,[]);
end
test();
