function [ img_out ] = segmentation(param1,param2)
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

end

