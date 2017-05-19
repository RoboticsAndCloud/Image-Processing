%Different types of noise effects
image = imread('subject.jpg');

image =  rgb2gray(image);
subplot(1,4,1), imshow(image)
title('Original image');

J = imnoise(image,'speckle',0.04); %to put speckle noise in the image
subplot(1,4,2), imshow(J)
title('Speckle Noise');

J1 = imnoise(image,'gaussian',0,0.01);  %M is mean, V is variance
subplot(1,4,3), imshow(J1)
title('Gaussian Noise');

J2 = imnoise(image,'salt & pepper',0.05);  %M is mean, V is variance
subplot(1,4,4), imshow(J2)
title('salt & pepper Noise');