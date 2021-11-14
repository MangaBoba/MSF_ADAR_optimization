function [fig1,fig2] = plotter(all_data,separateplot,fn,t)%P(1-alpha,2-gam,3-mu,4-beta,5-del,6-lamb,7-0,,8-Y2const,9-ro1,10-ro1,11-T1,12-T2)
data=all_data{1};

if(size(all_data,1)>1)
    noc=all_data{2};
end


fig1 = figure('Name',fn,'DefaultAxesFontSize',18);

set(0, 'DefaultLineLineWidth',2.5); 

set(groot,'defaultAxesXGrid','on')
set(groot,'defaultAxesYGrid','on')
set(groot,'defaultAxesZGrid','on')
set(fig1,'color','w');
    
   r=2;
   c=3;
%    t=1:1:size(data(:,1));
if(separateplot==1)
        
        subplot(r,c,1);
            hold on
           plot(t,noc(:,1),"--k");
            plot(t,data(:,1),'r');
        
            hold off
        title("Y1");
        xlabel("t");
        legend('Y1',        'Y1u','Location','westoutside');
box on;
        subplot(r,c,2);
            hold on
            plot(t,noc(:,2),"--k");
        plot(t,data(:,2),'r');
       
            hold off
            
        title("Y2");
        xlabel("t");
        legend('Y2',       'Y2u','Location','westoutside');
        box on;
        subplot(r,c,3);
            hold on
        
            plot(t,noc(:,3),"--k");
        plot(t,data(:,3),'r');
            hold off
        title("Y3");
        xlabel("t");
        legend('Y3',       'Y3u','Location','westoutside');
        box on;
        subplot(r,c,4);
        plot3(data(:,1),data(:,2),data(:,3),'k');
        title("Фазоый портрет");
        xlabel("Y1");
        ylabel("Y2");
        zlabel("Y3");
        hZLabel = get(gca,'ZLabel');
        set(hZLabel,'rotation',0,'VerticalAlignment','middle')
        hXLabel = get(gca,'XLabel');
        set(hXLabel,'rotation',0,'VerticalAlignment','middle')
        
        
        subplot(r,c,5);
        plot(t(2:end),data(2:end,4),'k');
        title("ψ");
        xlabel("t");
        legend('ψ','Location','westoutside');
        
        subplot(r,c,6);
        plot(t(2:end),data(2:end,5),'k');
        title("u");
        xlabel("t");
        legend('u','Location','westoutside');
        
        fig2 = figure('Name',fn,'DefaultAxesFontSize',18);
        
           r=1;
           c=3;
        
        set(0, 'DefaultLineLineWidth',2.5); 

        set(groot,'defaultAxesXGrid','on')
        set(groot,'defaultAxesYGrid','on')
        set(groot,'defaultAxesZGrid','on')
        set(fig2,'color','w');
        
        subplot(r,c,1);
        plot(data(:,2),data(:,1),'k');
        xlabel("Y2");
        legend('Y1','Location','westoutside');
        
        subplot(r,c,2);
        plot(data(:,3),data(:,2),'k');
        xlabel("Y3");
        legend('Y2','Location','westoutside');
        
        subplot(r,c,3);
        plot(data(:,3),data(:,1),'k');
        xlabel("Y3");
        legend('Y1','Location','westoutside');

        
else

end