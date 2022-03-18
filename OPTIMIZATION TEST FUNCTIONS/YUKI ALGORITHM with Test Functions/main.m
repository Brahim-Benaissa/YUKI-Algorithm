%% YUKI Alogrithm by BRAHIM BENAISSA
%% REFERENCE PAPER:YUKI Algorithm and POD-RBF for Elastostatic and dynamic crack identification
%% DOWNOALD PAPER: https://brahimbenaissa.com/assets/files/Projects/YUKI%20ALGORITHM%201.0/YA-JCS-paper.pdf
%% 

clear, close,  clc

Number_of_Runs = 20;
populationsize = 10;

Max_iterations=500; %%% if this maximum number of iterations is reached stop the search
Fitness_target=1e-6; %% if this value of objective fundtion is reached, stop the search
Max_Evaluation=1e6; %% if this maximum number of evaluations is reached stop the search

% FUNCTIONS
% 1:10 MULTI-DIM UNIMODAL,  11:20 MULTI-DIM MULTIMODAL,  21:30 FIX-DIM UNIIMODAL,
% 31:40 FIX-DIM MULTIMODAL, 41:50 COMPOSITE FUNCTIONS, 51:45 ENGINEERING PROBLEMS.  

for fcn = 1:50 % Select functions to be evaluated   
Fcn = strcat('F',num2str(fcn)); 
 
% YUKI algorithm
[Results] = YUKI(populationsize,Max_iterations,Fcn,Number_of_Runs,Fitness_target,Max_Evaluation);

if Number_of_Runs>1
All_Runs_stats(fcn,1)=Results.Summary(1,4);
All_Runs_stats(fcn,2)=Results.Summary(2,4);
end

end