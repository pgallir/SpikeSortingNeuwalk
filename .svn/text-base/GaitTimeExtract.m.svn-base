function out = GaitTimeExtract(in)

% in è un cella di stringhe, ogni cella PUO' contenere un valore numerico
% temporale. In generale dalla 3 riga in poi... CONTROLLA!!!
% out = cell{length(in)-1,1};
ind = ones(2,1);
for i = 2:length(in)
    j = 1; %indice stringa
    k = 1; %campi
    while j<=length(in{i})
        if(strcmp(in{i}(j),','))
            ind(2) = j-1; 
            out_{i-1,k} = in{i}(ind(1):ind(2)); k = k+1;
            ind(1) = j+1;
        end
        j = j+1; 
    end    
end

out.left = []; 
out.right = []; 
for i = 2:size(out_,1)
    if strcmp(out_(i-1,2),'Left')
       out.left = [out.left, str2double(cell2mat(out_(i-1,4)))];  
    elseif strcmp(out_(i-1,2),'Right')
       out.right = [out.right, str2double(cell2mat(out_(i-1,4)))];     
    end
    
end




end