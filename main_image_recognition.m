%% Se receber apenas 1 parâmetro, o param1 é o path para a imagem

function [img_out] = main_image_recognition(param1,param2,param3,param4)

    switch(nargin)
        case 1
            img = imread(param1);
            img_out = rgb2gray(img);
        case 2
            %No caso da segmentação ser do tipo kmeans 
            if param2=='kmeans'
                col = double(param1(:));
                clusters = kmeans(col,2);
                img_out = zeros(size(param1));
                for i=1:2
                    inds=find(clusters==i);
                    meanval = mean(col(inds));
                    img_out(inds) = meanval;
                end
            end
            if param2=='otsus'
                level = graythresh(param1);
                img_out= im2bw(param1,level);
            end
            
        case 3
            if(param2=='salt & pepper')
                img_out = imnoise(param1,param2,param3);
            end
            
        case 4
            img_out = imnoise(param1,param2,param3,param4);
    end
end