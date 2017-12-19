%% Gray

gray_img = main_image_recognition('Images/coins.jpg');

%% 
gaussian_noise = 'gaussian';
salt_pepper_noise = 'salt & pepper';
img = main_image_recognition(gray_img,gaussian_noise,0.001,0.01);
imshow(img);