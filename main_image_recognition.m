%% Se receber apenas 1 parâmetro, o param1 é o path para a imagem

function [img_out] = main_image_recognition(param1,param2)

    switch(nargin)
        case 1
            img = imread(param1);
            img_out = rgb2gray(img);
        case 2
            
            
    end
end

