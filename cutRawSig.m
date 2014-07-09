function rec = cutRawSig(rec,m,M)

% min
if ~isnan(m)
   % check vicon sync error (mine...;()
   if m < rec.RawTime(1) 
      m = m+rec.RawTime(1); 
   end    
   % R
   [v iR] = min(abs(rec.tRaw-m));
   rec.tRaw(1:iR) = [];
   rec.Raw(1:iR,:) = []; rec.Filt(1:iR,:) = [];
   % KIN
   [v iK] = min(abs(rec.tKIN-m));
   rec.tKIN(1:iK) = [];
   rec.KIN(1:iK,:) = [];
   rec.Angles{1}(1:iK,:) = []; rec.Angles{2}(1:iK,:) = [];
   % ANA
   [v iA] = min(abs(rec.tANA-m));
   rec.tANA(1:iA) = [];
   rec.ANA(1:iA,:) = [];
end

% max
if ~isnan(M)
   % check vicon sync error (mine...;()
   if M < rec.RawTime(1)
      M = M+rec.RawTime(1); 
   end        
   % R
   [v iR] = min(abs(rec.tRaw-M));
   rec.tRaw(iR:end) = [];
   rec.Raw(iR:end,:) = [];   rec.Filt(iR:end,:) = [];
   % KIN
   [v iK] = min(abs(rec.tKIN-M));
   rec.tKIN(iK:end) = [];
   rec.KIN(iK:end,:) = [];
   rec.Angles{1}(iK:end,:) = []; rec.Angles{2}(iK:end,:) = [];
   % ANA
   [v iA] = min(abs(rec.tANA-M));
   rec.tANA(iA:end) = [];
   rec.ANA(iA:end,:) = [];
end

