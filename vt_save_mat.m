function[]= vt_save_mat(mat,filename);
% based on save_mat by Stephan Moratti
% usage: save_mat(mat,filename);
% mat =  datamatrix
% filename = filename (full path)
%
% Julian Keil 2016
%%
[lines,columns]=size(mat);

fid = fopen(filename,'w');

if iscell(mat) == 1
    
    for l=1:lines
        for c = 1:columns
            fprintf(fid,mat{l,c},'\t');
            fprintf(fid,'\t');
        end
        fprintf(fid,'\n');
    end
    
else    
    for l=1:lines
        for c = 1:columns
            fprintf(fid,'%g ',mat(l,c));
        end
        fprintf(fid,'\n');
    end
end
fclose(fid);