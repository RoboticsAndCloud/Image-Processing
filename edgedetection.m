image = imread('subject.jpg');

image =  rgb2gray(image);
subplot(1,6,1), imshow(image)
title('Original image');
%Apply both the Sobel and Canny edge detectors to the image and display them for comparison.%
BW1 = edge(image,'sobel');
BW2 = edge(image,'canny');
subplot(1,6,2), imshow(BW1)
title('sobel filter image');
subplot(1,6,3), imshow(BW2)
title('canny filter image');
BW3 = edge(image,'Prewitt');
subplot(1,6,4), imshow(BW3)
title('Prewitt filter image');
BW4 = edge(image,'Roberts');
subplot(1,6,5), imshow(BW4)
title('Roberts filter image');





