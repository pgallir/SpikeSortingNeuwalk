function rec = filtRawSig(rec)

%%         FILTRO 
% filtro via la media            
M = mean(rec.Filt,2); 
[cAm1,cDm1] = dwt(M,'sym2');
for iCH = 1:32
    [cA_1,cD_1] = dwt(rec.Filt(:,iCH),'sym2');
    cA1 = cA_1-cAm1;     
    cD1 = cD_1-cDm1;
    sig = idwt(cA1,cD1,'sym2');     
    rec.Filt(:,iCH) = sig(1:size(rec.Filt,1));   
end

            