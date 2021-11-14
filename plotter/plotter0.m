function fig = plotter0(all_data,separateplot,fn,t)%P(1-alpha,2-gam,3-mu,4-beta,5-del,6-lamb,7-0,,8-Y2const,9-ro1,10-ro1,11-T1,12-T2)
data=all_data;

% if(size(all_data,1)>1)
%     noc=all_data{2};
% end

fig = figure('Name',fn);

set(0, 'DefaultLineLineWidth',1); 

set(groot,'defaultAxesXGrid','on')
set(groot,'defaultAxesYGrid','on')
set(groot,'defaultAxesZGrid','on')
set(fig,'color','w');
    
   r=1;
   c=3;
%    t=1:1:size(data(:,1));
if(separateplot==1)
        
        subplot(r,c,1);
        plot(data(:,2),data(:,1),'k');
        xlabel("Y2");
        legend('Y1');
        set(gca,'FontSize',20)
        
        subplot(r,c,2);
        plot(data(:,3),data(:,2),'k');
        xlabel("Y3");
        legend('Y2');
        set(gca,'FontSize',20)
        
        subplot(r,c,3);
        plot(data(:,3),data(:,1),'k');
        xlabel("Y3");
        legend('Y1');

        set(gca,'FontSize',20)
else

end