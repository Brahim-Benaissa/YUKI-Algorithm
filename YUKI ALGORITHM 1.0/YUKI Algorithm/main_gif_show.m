%% YUKI Alogrithm by BRAHIM BENAISSA
%% REFERENCE PAPER:YUKI Algorithm and POD-RBF for Elastostatic and dynamic crack identification
%% DOWNOALD PAPER: https://brahimbenaissa.com/assets/files/Projects/YUKI%20ALGORITHM%201.0/YA-JCS-paper.pdf
%% 

clear, close, clc
populationsize = 10;
Max_iterations=30; %%% if this maximum number of iterations is reached stop the search
Targeted_fitness=1e-6;  %%% if this value of objective fundtion is reached, stop the search
Max_Evaluation=10e6;  %%% if this maximum number of evaluations is reached stop the search

filename = 'YUKI_SOLVE.gif'; 

SAVE='n';       % set save=y if you want to save the gif file

% FUNCTIONS
% 21:30 FIX-DIM UNIIMODAL, % 31:40 FIX-DIM MULTIMODAL.

for fcn = 21:40 % Select functions to be evaluated    
    
if fcn==36 % skip F36, a 3D function
	fcn=fcn+1;
end

Fcn = strcat('F',num2str(fcn)); 

[Results] = yuki_gif_show (populationsize,Max_iterations,SAVE,Fcn,Targeted_fitness,Max_Evaluation,filename);

end