%% Se receber apenas 1 par�metro, o param1 � o path para a imagem

function [gray_im] = main_image_recognition(param1,param2)

    switch(nargin)
        case 1
            img = imread(param1);
            gray_im = rgb2gray(img);
        case 2
            
            
    end
end

