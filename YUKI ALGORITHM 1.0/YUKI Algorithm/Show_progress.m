%% YUKI Alogrithm by BRAHIM BENAISSA
%% REFERENCE PAPER:YUKI Algorithm and POD-RBF for Elastostatic and dynamic crack identification
%% DOWNOALD PAPER: https://brahimbenaissa.com/assets/files/Projects/YUKI%20ALGORITHM%201.0/YA-JCS-paper.pdf
%% 

function Show_progress(ax,Solutions,Function,SAVE,Iteration,Max_iterations,Reference1,Reference2,filename)


pause_time=0.1;

%% Plotting the Swarms
    fig = figure(1);
    if Iteration==1
        x1 = linspace(ax(1,1),ax(1,2));
        x2 = linspace(ax(2,1),ax(2,2));

        [X,Y] = meshgrid(x1,x2); Z = zeros(size(X));

        for j = 1:length(x1)
            for k = 1:length(x2)
                Z(j,k) = Function([X(j,k); Y(j,k)]); 
            end
        end
            contour(X,Y,Z,10);  
    end
    hold on;
    
    s = scatter(Solutions(1,:),Solutions(2,:),15,'y','filled','MarkerEdgeColor','k');
    s.MarkerFaceAlpha = 0.3;

    hold on;
    scatter(Reference1(1,:),Reference1(2,:),'MarkerFaceColor','r','MarkerEdgeColor','k','MarkerFaceAlpha',1,'MarkerEdgeAlpha',1);
    scatter(Reference2(1,:),Reference2(2,:),'MarkerFaceColor','g','MarkerEdgeColor','k','MarkerFaceAlpha',1,'MarkerEdgeAlpha',1)

    text(ax(1,1)+ax(1,2)*0.1,ax(2,2)-ax(2,2)*0.1,['Iteration: ' num2str(Iteration) ' / ' ...
        num2str(Max_iterations)],'BackgroundColor','w');
    axis([ax(1,1) ax(1,2) ax(2,1) ax(2,2)]); pause(pause_time);

    if SAVE == 'y'         % For making a GIF
        frame = getframe(fig); 
        im = frame2im(frame); 
        [imind,cm] = rgb2ind(im,256);
        if Iteration == 1 
            imwrite(imind,cm,filename,'gif','Loopcount',inf); 
        else 
            imwrite(imind,cm,filename,'gif','WriteMode','append'); 
        end
    end
        
    hold off;

end