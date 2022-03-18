%% YUKI Alogrithm by BRAHIM BENAISSA
%% REFERENCE PAPER:YUKI Algorithm and POD-RBF for Elastostatic and dynamic crack identification
%% DOWNOALD PAPER: https://brahimbenaissa.com/assets/files/Projects/YUKI%20ALGORITHM%201.0/YA-JCS-paper.pdf
%% 

Quality= 200; % higher values for higer resolution quaity

for fcn = 1:40   %% draw functions from fcn 1 to fcn 50, skipping fcn 36 (wolfe)
    if fcn==36
        fcn=fcn+1;
    end
Function = strcat('F',num2str(fcn)); 
figure(fcn);
[lb,up,Evaluate,Dim] = Benchmarking(Function);

x=lb:(up-lb)/Quality:up;y=x;
L = length(x);
f = zeros(L);

for i=1:L
	for j=1:L
		f(i,j) = Evaluate([x(i),y(j)]');
	end
end
surfc(x,y,f,'LineStyle','none','facealpha',0.8,'edgealpha',0.8);

%% save the image(fig and png) in the file: functions_figs
fname=sprintf('Function plots/F%d.fig',fcn);
saveas(gcf,fname,'fig')
fname=sprintf('Function plots/F%d.png',fcn);
saveas(gcf,fname,'png')

end