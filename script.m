% Load and preprocess the input image
input_image_path = 'naruto.jpeg';
if isfile(input_image_path)
    I = imread(input_image_path);
else
    error('Error: The file %s does not exist. Please ensure the image is located in the project directory.', input_image_path);
end

% Check if the image is already grayscale
if size(I, 3) == 3
    I_gray = rgb2gray(I); % Convert to grayscale if necessary
else
    I_gray = I; % Image is already grayscale
end

% Apply Gaussian filter
sigma = 2; % Standard deviation for Gaussian filter
I_gaussian = imgaussfilt(I_gray, sigma);

% Apply median filter
filter_size = [3 3]; % Size of the median filter
I_median = medfilt2(I_gray, filter_size);

% Apply bilateral filter for edge-preserving smoothing
I_bilateral = imbilatfilt(I_gray);

% Sobel edge detection
edges_sobel = edge(I_gray, 'sobel');

% Prewitt edge detection
edges_prewitt = edge(I_gray, 'prewitt');

% Canny edge detection
edges_canny = edge(I_gray, 'canny');

% Laplacian of Gaussian edge detection
edges_log = edge(I_gray, 'log');

% Roberts edge detection
edges_roberts = edge(I_gray, 'roberts');

% Display results
figure;
subplot(3,3,1), imshow(I_gray), title('Original Image');
subplot(3,3,2), imshow(I_gaussian), title('Gaussian Filtered');
subplot(3,3,3), imshow(I_median), title('Median Filtered');
subplot(3,3,4), imshow(I_bilateral), title('Bilateral Filtered');
subplot(3,3,5), imshow(edges_sobel), title('Sobel Edges');
subplot(3,3,6), imshow(edges_prewitt), title('Prewitt Edges');
subplot(3,3,7), imshow(edges_canny), title('Canny Edges');
subplot(3,3,8), imshow(edges_log), title('Laplacian of Gaussian Edges');
subplot(3,3,9), imshow(edges_roberts), title('Roberts Edges');

% Adjust the axes limits dynamically (optional)
[rows, cols] = size(I_gray);
subplot(3,3,5);
xlim([1 cols]);
ylim([1 rows]);

% Save output images for further inspection
imwrite(I_gaussian, 'output_gaussian.jpg');
imwrite(I_median, 'output_median.jpg');
imwrite(I_bilateral, 'output_bilateral.jpg');
imwrite(edges_sobel, 'output_sobel.jpg');
imwrite(edges_prewitt, 'output_prewitt.jpg');
imwrite(edges_canny, 'output_canny.jpg');
imwrite(edges_log, 'output_log.jpg');
imwrite(edges_roberts, 'output_roberts.jpg');
