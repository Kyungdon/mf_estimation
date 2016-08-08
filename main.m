%%-------------------------------------------------------------------------
% Globally Optimal Manhattan Frame Estimation in Real-time (CVPR 2016)
%                                                   written by Kyungdon Joo
% refer:
%   https://sites.google.com/site/kdjoocv/cvpr2016_mf
% description:
%   An example code of "Globally Optimal Manhattan Frame Estimation in Real-time".
%   If you use this code, please refer cite our CVPR 2016 paper.
% input:
%   data.normal_data: 3 x N matrix of normal data
%   BnB_param: struct of branch and bound paramater 
% output:
%   esti_mf: 3 x 3 rotation matrix
% contact:
%   kdjoo369@gmail.com
%%-------------------------------------------------------------------------

%% initialize
Initialize;
% load example data (one of the NYUv2 dataset)
load('data.mat');

figure, imshow(img);
data.normal_data = normal_data;

%% MF estimation using efficient branch and bound
est_mf = Fn_BranchnBound (data, BnB_param, exp_save_path);

%% Accuracy
est_mf = est_mf(:,1:3);
[rotError,~] = Fn_CalculateError(GT_mf, est_mf)
