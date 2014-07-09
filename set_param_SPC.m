function handles = set_param_SPC(handles)

% parameters for SPC


handles.par.segments = 3;                   %nr. of segments in which the data is cutted.
% % JR: I want to impose Fc (and derivates) from outside. It is not a WaveClus par, then handles.Fc
% %  DO NOTE THAT handles.par.sr is Hz and handles.Fc is kHz
% handles.par.sr = 12221;                     %sampling frequency, in Hz (default 24000).
min_ref_per = 1.5;                          %detector dead time (in ms)
handles.par.ref = floor(min_ref_per ...
    *handles.Fc);                  %number of counts corresponding to the dead time

handles.par.w_pre = floor(2*handles.Fc);                       % number of pre-event data points stored
handles.par.w_post = floor(2*handles.Fc);                      % number of post-event data points stored
%handles.par.detection = 'pos';              % type of threshold
% handles.par.detection = 'neg';              % type of threshold
handles.par.detection = 'both';              % type of threshold
handles.par.stdmin = 5.00;                  % minimum threshold
handles.par.stdmax = 50;                    % maximum threshold
% handles.par.interpolation = 'y';            % interpolation for alignment
handles.par.interpolation = 'n';            % interpolation for alignment
handles.par.int_factor = 4;                 % interpolation factor
handles.par.detect_fmin = 300;              % high pass filter for detection (default 300)
handles.par.detect_fmax = 5000;             % low pass filter for detection (default 3000)
handles.par.sort_fmin = 300;                % high pass filter for sorting (default 300)
handles.par.sort_fmax = 5000;               % low pass filter for sorting (default 3000)

handles.par.max_spk = 20000;                % max. # of spikes before starting templ. match.
handles.par.template_type = 'center';       % nn, center, ml, mahal
handles.par.template_sdnum = 3;             % max radius of cluster in std devs.
% handles.par.permut = 'y';                   % for selection of random 'par.max_spk' spikes before starting templ. match. 
handles.par.permut = 'n';                 % for selection of the first 'par.max_spk' spikes before starting templ. match.

handles.par.features = 'wav';               % choice of spike features (wav,pca,more) - more NON funziona!!
handles.par.thr_dist = 3;                   % default is 3
handles.par.inputs = 10;                    % number of inputs to the clustering (def. 10)
handles.par.scales = 4;                     % scales for wavelet decomposition
if strcmp(handles.par.features,'pca');      % number of inputs to the clustering for pca
    handles.par.inputs=3; 
end
handles.par.tot_inputs = sum(handles.par.inputs)+6; % 3 pca + p2p + max(signed) + energy

handles.par.mintemp = 0;                    % minimum temperature
handles.par.maxtemp = 0.06;                % maximum temperature ( 0.131)
handles.par.tempstep = 0.0001;                % temperature step
handles.par.num_temp = floor(...
(handles.par.maxtemp - ...
handles.par.mintemp)/handles.par.tempstep); % total number of temperatures 
% handles.par.stab = 0.6;                     % stability condition for selecting the temperature
handles.par.SWCycles = 50;                 % number of montecarlo iterations (100)
% handles.par.KNearNeighb = 11;               % number of nearest neighbors (11)
handles.par.randomseed = 0;                 % if 0, random seed is taken as the clock value
%handles.par.randomseed = 147;              % If not 0, random seed   
handles.par.fname_in = 'tmp_data';          % temporary filename used as input for SPC

handles.par.min_clus_abs = 10;              % minimum cluster size (absolute value)
% handles.par.min_clus_rel = 0.005;           % minimum cluster size (relative to the total nr. of spikes)
%handles.par.temp_plot = 'lin';               %temperature plot in linear scale
handles.par.temp_plot = 'log';              % temperature plot in log scale
% PERCHE'?!?!?!?!??!?!?!?!?!?!?!?!?!?!
% handles.par.force_auto = 'y';               % automatically force membership if temp>3.
handles.par.max_spikes = 10000;              % maximum number of spikes to plot.




