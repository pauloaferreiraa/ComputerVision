function [ img_out ] = processimage( param1,param2, param3,param4)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
    switch (nargin)
        case 2
            if strcmp(param2,'contrast')
                img_out = histeq(param1);
            end
            
            if strcmp(param2,'sobel') || strcmp(param2,'prewitt')
                h=fspecial(param2);
                img_out = imfilter(param1,h);
            end
            
        case 3
            if param2=='average'
                 h = fspecial(param2,param3);
                 img_out = imfilter(param1,h);
            end

        case 4
            if strcmp(param2,'gaussian')
                %no caso de ser filtro gaussian
                 h = fspecial(param2,param3,param4);
                 img_out = imfilter(param1,h);
            end
     
            
            
            
    end
end

