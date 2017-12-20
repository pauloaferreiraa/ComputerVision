function [ img_out ] = addnoise(param1,param2,param3,param4 )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
    I = gpuArray(param1);
    if nargin==4
        img_out=imnoise(I, param2,param3,param4);
    end
    
    if nargin==3
        img_out=imnoise(I,param2,param3);
    end

end

