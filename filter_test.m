function filter_test()
    input = imread("Lenna_(test_image).png");

    m = 2;
    n = 3;
    dimension = m * n;

    subplot(m,n,dimension-4),imshow(input,[]);

    output = ideal_lowpass_filter(input,30);
    subplot(m,n,dimension-3),imshow(output,[]);

    output = ideal_highpass_filter(input,30);
    subplot(m,n,dimension-2),imshow(output,[]);

    output = highboost_filter(input);
    subplot(m,n,dimension-1),imshow(output,[]);

    output = strong_highboost_filter(input);
    subplot(m,n,dimension),imshow(output,[]);
end
