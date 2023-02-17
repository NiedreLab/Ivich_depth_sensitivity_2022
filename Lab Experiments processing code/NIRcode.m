%PreProcessing for NIR data
%make sure to add the location of the "proccodes" folder below.
proccodes_lib = '';
%After hitting run select the folder with the data you want to process.
%Make sure the name of the folder with the data is named the same as the
%data files
clear; close all;
probe_distance = 3;
%% Loading data, processing functions
%Allows for selection of folder with .mat data files
saveDir = uigetdir();


%Getting file name
if ispc
    slash = '\';
else
    slash = '/';
end
index = find(saveDir == slash,1,'last');
stem = saveDir(index+1:end);
if saveDir(end) ~= slash; saveDir = [saveDir slash]; end
fname = [saveDir stem];

rel_thresh = [5 5];
%-----------------------------------------------------------------------------------------------------------------%
%% Running proccessing code
fprintf('Running 2 Fiber 2 Current PMTs preProc...\n\n')

fprintf('Pre-processing %s...\n',stem)

% Load data from both fibers
load([fname '_F1.mat'], 'time', 'data', 'params')
%data_sum1 = data(:,1) + data(:,2);
data1 = data(:,1);
params1 = params;
load([fname '_F2.mat'], 'data', 'params')
%data_sum2 = data(:,1) + data(:,2);
data2 = data(:,1);
params2 = params;

% Sampling frequnecy
fs = 1 ./ (time(2) - time(1));

% Format data from both fibers
data = [-data1 -data2];
params = [params1(1) params2(1)];
params(1).name = [stem ' Fiber 1'];
params(2).name = [stem ' Fiber 2'];
clear data1 data2 params1 params2

% Pre-proc background subtracts data, calculates the noise/ moving peak
% threshhold, and identifies peak candidates. Processes all data in the
% data array
[data_bs, noise, peaks, thresh_curve,in_dat] = preProc(data, time, params, 'RelativeThresh', rel_thresh);

% Calculating SNR based on the estimated run noise, not control noise
snr_fiber_1 = mean(20*log10(peaks(1).pks./noise(1)));
snr_fiber_2 = mean(20*log10(peaks(2).pks./noise(2)));

pk_per_min_fiber_1 = peaks(1).count/time(end);
pk_per_min_fiber_2 = peaks(2).count/time(end);
%Calculating mean background level of the orginal data
mean_background = mean(-data);
%-----------------------------------------------------------------------------------------------------------------%

coinc_pk_count = 0;
%-----------------------------------------------------------------------------------------------------------------%

disp('Saving processed data')


pname = sprintf('%s_proc.mat', fname);
save(pname, 'time', 'data_bs', 'params', 'noise','snr_fiber_1','snr_fiber_2', 'peaks','mean_background', 'thresh_curve', 'in_dat');
%-----------------------------------------------------------------------------------------------------------------%
% Display useful results
%-----------------------------------------------------------------------------------------------------------------%
fprintf('\n\n\n--------------------------------------------------------\n')
try
     fprintf('Detected %4.2g peaks per min in Fiber 1\n', pk_per_min_fiber_1);
     fprintf('Detected %4.2g peaks per min in Fiber 2\n', pk_per_min_fiber_2);
   fprintf('Peaks candidates found for Fiber 1: %g\n', peaks(1).count);
     fprintf('Peaks candidates found for Fiber 2: %g\n',peaks(2).count);
    fprintf('Calculated noise for fiber 1: %.3f nA\n', noise(1));
     fprintf('Calculated noise for fiber 2: %.3f nA\n', noise(2));
     fprintf('Estimated Fiber 1 SNR: %.3f dB\n', snr_fiber_1)
     fprintf('Estimated Fiber 2 SNR: %.3f dB\n', snr_fiber_2)
     fprintf('Average relative threshold for Fiber 1: %.3f nA\n', mean(thresh_curve(1)));
     fprintf('Average relative threshold for Fiber 2: %.3f nA\n', mean(thresh_curve(2)));
     fprintf('Average background level for Fiber 1: %.3f nA\n',mean_background(1));
     fprintf('Average background level for Fiber 2: %.3f nA\n',mean_background(2));
    fprintf('Average peak amplitude for Fiber 1: %.3f nA\n', mean(peaks(1).pks));
     fprintf('Average peak amplitude for Fiber 2: %.3f nA\n', mean(peaks(2).pks));
     fprintf('Peak amplitude standard deviation for Fiber 1: %.3f nA\n', std(peaks(1).pks));
     fprintf('Peak amplitude standard deviation for Fiber 2: %.3f nA\n', std(peaks(2).pks));
     fprintf('Largest peak amplitude for Fiber 1: %.3f nA\n', max(peaks(1).pks));
     fprintf('Smallest peak amplitude for Fiber 1: %.3f nA\n', min(peaks(1).pks));
     fprintf('Largest peak amplitude for Fiber 2: %.3f nA\n', max(peaks(2).pks));
     fprintf('Smallest peak amplitude for Fiber 2: %.3f nA\n', min(peaks(2).pks));
catch
    fprintf('Peaks found for Fiber 1: %g\n', peaks(1).count);
     fprintf('Peaks found for Fiber 2: %g\n', peaks(2).count);
    fprintf('Calculated noise for fiber 1: %.3f nA\n', noise(1));
     fprintf('Calculated noise for fiber 2: %.3f nA\n', noise(2));
         fprintf('Estimated Fiber 1 SNR: %.3f dB\n', snr_fiber_1)
       fprintf('Estimated Fiber 2 SNR: %.3f dB\n', snr_fiber_2)
     fprintf('Average relative threshold for Fiber 1: %.3f nA\n', mean(thresh_curve(1)));
     fprintf('Average relative threshold for Fiber 2: %.3f nA\n', mean(thresh_curve(2)));
     fprintf('Average background level for Fiber 1: %.3f nA\n',mean_background(1));
     fprintf('Average background level for Fiber 2: %.3f nA\n',mean_background(2));
    fprintf('Average peak amplitude for Fiber 1: %.3f nA\n', mean(peaks(1).pks));
    fprintf('Average peak amplitude for Fiber 2: %.3f nA\n', mean(peaks(2).pks));
    fprintf('Peak amplitude standard deviation for Fiber 1: %.3f nA\n', std(peaks(1).pks));
     fprintf('Peak amplitude standard deviation for Fiber 2: %.3f nA\n', std(peaks(2).pks));
    fprintf('Largest peak amplitude for Fiber 1: %.3f nA\n', max(peaks(1).pks));
    fprintf('Smallest peak amplitude for Fiber 1: %.3f nA\n', min(peaks(1).pks));
     fprintf('Largest peak amplitude for Fiber 2: %.3f nA\n', max(peaks(2).pks));
    fprintf('Smallest peak amplitude for Fiber 2: %.3f nA\n', min(peaks(2).pks));
end
