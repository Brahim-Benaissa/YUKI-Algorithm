%% YUKI Alogrithm by BRAHIM BENAISSA
%% REFERENCE PAPER:YUKI Algorithm and POD-RBF for Elastostatic and dynamic crack identification
%% DOWNOALD PAPER: https://brahimbenaissa.com/assets/files/Projects/YUKI%20ALGORITHM%201.0/YA-JCS-paper.pdf
%%

function [Results] =yuki_gif_show(Pop,Max_Its,z,Function,Targeted_fitness,Max_Evaluation,filename)

tic;
Eva=0; % initial value
filename = ([ 'YUKI_SOLVE_' num2str(Function) '.gif']);
[lb,up,Evaluate,Dim] = Benchmarking(Function);
Global_bnd = [lb',up'];

%% Initialization
Rand_mat = rand(Dim, Pop);
for i=1:Pop
    Pos(:,i) = Rand_mat(:,i).* (Global_bnd(2) - Global_bnd(1)) + Global_bnd(1);
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

Local_bnd=[Center-Dist_MeanBest,Center+Dist_MeanBest];

%%% Trim the extra boundaries
Local_bnd(Local_bnd>Global_bnd(2))=Global_bnd(2);
Local_bnd(Local_bnd<Global_bnd(1))=Global_bnd(1);

%%% generate the new population inside the newly calculated local search area
Rand_mat = rand(Dim, Pop);
PosLoc = Rand_mat.*(Local_bnd(:,2) - Local_bnd(:,1)) + Local_bnd(:,1);

%%% dispurse the population to search around the potential opyimum area,
%%% while slowly focusing on the center of the search area

for i=1:Pop
      if  rand<0.5
          Explore=PosLoc(:,i)-Best_Poses(:,i);
          Pos(:,i)=PosLoc(:,i)+Explore;
      else
          Dist_Center=PosLoc(:,i)-Center;
          Pos(:,i)=PosLoc(:,i)+rand*Dist_Center;
      end
end

%%% put back particles that went outside the search field

upid=Pos>Global_bnd(2);
upr = rand(1,nnz(upid));
Pos(upid) = upr*(Global_bnd(2)-Global_bnd(1))+ Global_bnd(1);

downid=Pos<Global_bnd(1);
downr = rand(1,nnz(downid));
Pos(downid) = downr*(Global_bnd(2)-Global_bnd(1))+ Global_bnd(1);


%%% evaluate and update the best points
for i=1:Pop
        Fit(i) = Evaluate(Pos(:,i));
        Eva=Eva+1;
        if Fit(i)<Best_Fits(i)
           Best_Fits(i) = Fit(i);
           Best_Poses(:,i) = Pos(:,i);
        end
end

% update the MeanBest and get the best fitness in this iteration
MeanBest=mean(Best_Poses,2);

[It_BestFit,ind]=min(Fit); %% find best fitness of this It and its Pos in the list of solution
It_BestPos=Pos(:,ind); %% extract the the point corresponding to the best fitness
Dist_MeanBest=Center-MeanBest; %% calcualte the distance


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
    if mod (It,100)==1
        disp(It_BestFit);
    end

%% OPTIONAL: for show=1, desplay the search progress

ax=ones(2,1).*Global_bnd;
Show_progress(ax,Pos(1:2,:),Evaluate,z,It,Max_Its,Center(1:2),MeanBest(1:2),filename);

%% OPTIONAL: result report for every It
Results.It_Details(It,:)=[toc,It,Eva,Optimum_Fit,It_BestFit,zeros(1),Center',zeros(1),Dist_MeanBest'];

end
Results.fit = Optimum_Fit;
Results.Optimum = Center;
end
