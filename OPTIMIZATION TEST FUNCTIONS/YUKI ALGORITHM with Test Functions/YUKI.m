%% YUKI Alogrithm by BRAHIM BENAISSA
%% REFERENCE PAPER:YUKI Algorithm and POD-RBF for Elastostatic and dynamic crack identification
%% DOWNOALD PAPER: https://brahimbenaissa.com/assets/files/Projects/YUKI%20ALGORITHM%201.0/YA-JCS-paper.pdf
%% 

function [Results] =YUKI(Pop,Max_Its,Function,Number_of_Runs,Fitness_target,Max_Evaluation)

for Run=1:Number_of_Runs
disp('%%%%%%%%%%%%%%%%%%%%%%%%%%')
disp(['%%%% RUN: ' num2str(Run) ' FOR: '  num2str(Function) ' %%%%%'])
disp('%%%%%%%%%%%%%%%%%%%%%%%%%%')

tic;
Eva=0; 
[lb,ub,Evaluate,Dim] = Benchmarking(Function);

%% Initialization    
for i=1:Pop
    Pos(:,i) = rand(Dim,1).*(ub-lb)+lb;
    Fit(i) = Evaluate(Pos(:,i));
    Eva=Eva+1;
end
    
% %%% initial values 
Best_Poses=Pos;
Best_Fits=Fit;
MeanBest=mean(Best_Poses,2);
[Optimum_Fit,ind]=min(Fit); 
Center=Pos(:,ind); 
Dist_MeanBest=abs(Center-MeanBest); 

%%  Itirative search START HERE
for It=1:Max_Its
Local_lb=Center-Dist_MeanBest;
Local_ub=Center+Dist_MeanBest;

%%% Trim the extra boundaries
Local_lb=(Local_lb.*~(Local_lb<lb))+(lb.*(Local_lb<lb)); 
Local_ub=(Local_ub.*~(Local_ub>ub))+(ub.*(Local_ub>ub));

%%% generate the new population inside the newly calculated local search area
PosLoc = rand(Dim, Pop).*(Local_ub - Local_lb) + Local_lb;     

%%% dispurse the population to search around the potential opyimum area, while slowly focusing on the center of the search area
for i=1:Pop
      if  rand<1-It/Max_Its
          Explore=PosLoc(:,i)-randi(10).*Best_Poses(:,i);
          Pos(:,i)=PosLoc(:,i)+rand*Explore;
      else
          Dist_Center=PosLoc(:,i)-Center;
          Pos(:,i)=PosLoc(:,i)-rand*Dist_Center;   
      end
end 

%%% put back particles that went outside the search field

upid=Pos>ub;
upr = rand(1,nnz(upid));
Pos(upid) = upr*(ub-lb)+ lb;

downid=Pos<lb;
downr = rand(1,nnz(downid));
Pos(downid) = downr*(ub-lb)+ lb;


%%% evaluate and update the best points

for i=1:Pop       
        Fit(i) = Evaluate(Pos(:,i));
        Eva=Eva+1;
        if Fit(i)<Best_Fits(i)
           Best_Fits(i) = Fit(i);
           Best_Poses(:,i) = Pos(:,i);
        end
end

% update the MeanBest and the rest of the search parameters
MeanBest=mean(Best_Poses,2);
[It_BestFit,ind]=min(Fit); 
It_BestPos=Pos(:,ind);  
Dist_MeanBest=Center-MeanBest;  
 
%%% check if we found a new best solution and add the reference point and distances in that case
if  It_BestFit<Optimum_Fit 
	Optimum_Fit=It_BestFit;
	Center=It_BestPos;  
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% End of the Algoritm %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 

%% OPTIONAL: Stopping criteria

% %% chech the stopage conditions
% if  It_BestFit<Targeted_fitness 
%     break
% end

% if  Eva>=Max_Evaluation 
% 	break
% end

%% OPTIONAL: desplay the progress every 100 Its
if mod (It,10)==1  
    disp(It_BestFit);
end

%% OPTIONAL: result report for every It
Results.It_Details(It,:)=[toc,It,Eva,Optimum_Fit,It_BestFit,zeros(1),Center',zeros(1),Dist_MeanBest'];
end

%% report results for every run
disp(['Stopped in: ' num2str(It) ' Its ' ]);
display(['Fit: ', num2str(Optimum_Fit)]);
display(['Sol: ', num2str(Center')]);
Results.Runs_Details(Run,:)=[toc,It,Eva,Optimum_Fit,mean(Results.It_Details(:,end-1)),mean(Results.It_Details(:,end)),zeros(1),Center'];
end

Results.Summary = [mean(Results.Runs_Details(:,1:6));std(Results.Runs_Details(:,1:6)); max(Results.Runs_Details(:,1:6));min(Results.Runs_Details(:,1:6));];
Results.Dim = Dim;
end