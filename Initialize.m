%% initialize
clc, close all, clear all;
addpath(genpath('./library/'));
exp_save_path = [];

%% parameter initialize
BnB_param.FlagDepthOrBreadthSearch = 1; % 0-depth, 1-breadth
BnB_param.DimModel = 3;
BnB_param.DimRadius = 1;

BnB_param.equi_multiplier = 5;
BnB_param.IndexFlag = 4;
BnB_param.IndicesBounds = [5 6];
BnB_param.IndexRadius = 7;
BnB_param.IndexSimga = 8;

BnB_param.MinUpperBound = 99999;
BnB_param.MinLowerBound = -1;
BnB_param.MaxUpperBound = -99;
BnB_param.BestAssociated_LowerBound4 = -99.99;

BnB_param.MAXiterations = 200;
BnB_param.MAXcubesToAnalyze = 2000000;

BnB_param.ThreshInlier = 3;   % degree unit (3/5/7)

% Generate Equirect map / LUT
BnB_param.n_subdivision = 3;
BnB_param.angle_resolution = 1;
BnB_param.init_sigma = pi/(2^BnB_param.n_subdivision);
BnB_param.n_sigma = 20;
BnB_param.AngleThreshold = 3; % 1/BnB_param.angle_resolution;
BnB_param.LUT_load_flag = 0;
