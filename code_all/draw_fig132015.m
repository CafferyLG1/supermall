clear all;clc;close all;
% f = './bwp2011/bwp162011.dat';
f1 = './bwp152014.mat';
% f2 = './bwp192008.mat';
% f3 = './bwp282004.mat';


figure('color','w')
set(gcf,'Position',[50 100 800 600]);
set(gca,'Position',[.1 .1 .8 .8]);
% for i = 1:3
%     file = files(i).name;
% i = 1
  
%     disp([datestr(data.time1(1),31),'  -   ',datestr(data.time1(end),31)])
%     figure('color','w')
%     set(gca,'Position',[.2 .2 .7 .65]);
    clf
    coast = load('coast');
    mapshow(coast.long,coast.lat,'DisplayType','polygon','edgecolor', 'k', 'facecolor', 'none','LineWidth',2)
    
    

    lonmin = 105.04;
    lonmax = 128;
    latmin = 10;
    latmax = 28;

%     set(gca,'xlim',[110 160], 'ylim', [15 45]);
    set(gca,'xlim',[lonmin lonmax], 'ylim', [latmin latmax]);
    set(gca,'FontSize',14,'fontweight','bold');
    set(gca,'LineWidth',2);
    ylabel('Latitude / °N','fontsize',14,'fontweight','bold');
    xlabel('Longitude / °E','fontsize',14,'fontweight','bold');
    box on;
%     colormap(jet);
    
    data1 = load(f1);
    data1.lat(end) = NaN;
    data1.lon(end) = NaN;
    data1.Vmax(end) = NaN;
    

%     index1 = find(data1.lon>=lonmin & data1.lon<=lonmax);
%     max(data1.Vmax(index1))
%     min(data1.Vmax(index1))
%     data2 = load(f2);
%     data2.lat(end) = NaN;
%     data2.lon(end) = NaN;
%     data2.Vmax(end) = NaN;
%     max(data2.Vmax)
%     min(data2.Vmax)
    
%     data3 = load(f3);
%     data3.lat(end) = NaN;
%     data3.lon(end) = NaN;
%     data3.Vmax(end) = NaN;
%     max(data3.Vmax)
%     min(data3.Vmax)
    
    fig_patch1 = patch(data1.lon, data1.lat, data1.Vmax,'EdgeColor','Interp','LineWidth',4);    %colorbar为速度，渐变台风轨迹
    colormap(jet);
    caxis([28 41])

    hBar1 = colorbar('north');
    set(hBar1, 'Position', [ 0.18 0.32 0.3 0.02]);
%     hBar1.Label.String = 'Maximum sustained wind speed / knots';
%     hBar1.Ticks = [15:10:75]
    text(106.5,15.5,'Maximum sustained wind speed (m/s)','fontsize',10,'fontweight','bold')

    
%     hold on
%     fig_patch2 = patch(data2.lon, data2.lat, data2.Vmax,'EdgeColor','Interp','LineWidth',4);    %colorbar为速度，渐变台风轨迹
%     colormap(jet);
%     caxis([10 79])
%     
%     hold on
%     fig_patch3 = patch(data3.lon, data3.lat, data3.Vmax,'EdgeColor','Interp','LineWidth',4);    %colorbar为速度，渐变台风轨迹
%     colormap(jet);
%     caxis([10 79])
    
    hold on
    k = 15;
    plot(data1.lon(k),data1.lat(k),'k.','MarkerSize',20);
%     text(data1.lon(k),data1.lat(k)+0.2,datestr(data1.time1(k),'mmddThh'),'fontweight','bold','fontsize',12)
    
    hold on
    k = 17;
    plot(data1.lon(k),data1.lat(k),'k.','MarkerSize',20);
%     text(data1.lon(k),data1.lat(k)+0.2,datestr(data1.time1(k),'mmddThh'),'fontweight','bold','fontsize',12)
    
    hold on
    k = 19;
    plot(data1.lon(k),data1.lat(k),'k.','MarkerSize',20);
    text(data1.lon(k),data1.lat(k)+0.3,datestr(data1.time1(k),'mmddThh'),'fontweight','bold','fontsize',12)

    k = 22;
    plot(data1.lon(k),data1.lat(k),'k.','MarkerSize',20);
%     m_text(typhoon.lon(k),typhoon.lat(k)+0.2,datestr(typhoon.time1(k),'mmddThh'),'fontweight','bold','fontsize',12)
 
    k = 25;
    plot(data1.lon(k),data1.lat(k),'k.','MarkerSize',20);
    text(data1.lon(k),data1.lat(k)+0.2,datestr(data1.time1(k),'mmddThh'),'fontweight','bold','fontsize',12)
 
    k = 28;
    plot(data1.lon(k),data1.lat(k),'k.','MarkerSize',20);
%     m_text(typhoon.lon(k),typhoon.lat(k)+0.2,datestr(typhoon.time1(k),'mmddThh'),'fontweight','bold','fontsize',12)
 
    k = 31;
    plot(data1.lon(k),data1.lat(k),'k.','MarkerSize',20);
    text(data1.lon(k),data1.lat(k)+0.3,datestr(data1.time1(k),'mmddThh'),'fontweight','bold','fontsize',12)
 
    k = 33;
    plot(data1.lon(k),data1.lat(k),'k.','MarkerSize',20);
%     m_text(typhoon.lon(k),typhoon.lat(k)+0.2,datestr(typhoon.time1(k),'mmddThh'),'fontweight','bold','fontsize',12)

    k = 35;
    plot(data1.lon(k),data1.lat(k),'k.','MarkerSize',20);
    text(data1.lon(k),data1.lat(k)+0.4,datestr(data1.time1(k),'mmddThh'),'fontweight','bold','fontsize',12)
    
    k = 37;
    plot(data1.lon(k),data1.lat(k),'k.','MarkerSize',20);
%     m_text(typhoon.lon(k),typhoon.lat(k)+0.2,datestr(typhoon.time1(k),'mmddThh'),'fontweight','bold','fontsize',12)
 
    k = 40;
    plot(data1.lon(k),data1.lat(k),'k.','MarkerSize',20);
    text(data1.lon(k),data1.lat(k)+0.4,datestr(data1.time1(k),'mmddThh'),'fontweight','bold','fontsize',12)
 
    k = 43;
    plot(data1.lon(k),data1.lat(k),'k.','MarkerSize',20);
%     m_text(typhoon.lon(k),typhoon.lat(k)+0.2,datestr(typhoon.time1(k),'mmddThh'),'fontweight','bold','fontsize',12)
 
    k = 46;
    plot(data1.lon(k),data1.lat(k),'k.','MarkerSize',20);
    text(data1.lon(k),data1.lat(k)+0.4,datestr(data1.time1(k),'mmddThh'),'fontweight','bold','fontsize',12)
 
    k = 49;
    plot(data1.lon(k),data1.lat(k),'k.','MarkerSize',20);
%     m_text(typhoon.lon(k),typhoon.lat(k)+0.2,datestr(typhoon.time1(k),'mmddThh'),'fontweight','bold','fontsize',12)
 
    k = 52;
    plot(data1.lon(k),data1.lat(k),'k.','MarkerSize',20);
    text(data1.lon(k),data1.lat(k)+0.4,datestr(data1.time1(k),'mmddThh'),'fontweight','bold','fontsize',12)
 
 
    
    
 
%     leg1 = legend([fig_patch1 fig_patch2 fig_patch3],'Soudelor','Jangmi','Nock-ten');

    text(109,16.5,'KALMAEGI','fontsize',14,'fontweight','bold')
%     text(131.8,18,'Nock-ten','fontsize',14,'fontweight','bold')
%     text(129.3,16.8,'Jangmi','fontsize',14,'fontweight','bold')
%     title([datestr(time1(1),31),'  -   ',datestr(time1(end),31)])
%     printf(gcf,'-dpng','test.png') 

%     set(get(h,'Title'),'string','℃','fontsize',15,'fontweight','bold');
%     set(h,'fontweight','bold','fontsize',15)

%     hold on
%     line1 = line([122 123.2 123.2 122 122],[23.2 23.2 24.2 24.2 23.2],'LineWidth',2);
%     line1.Color = 'k';
%     line1.LineStyle = '--';

    print(['./figure/cases of typhoons_152014'],'-dtiff','-r300')
    
% end
% 
% 
% Fig = figure('color','w');
% set(gcf,'Position',[50 100 800 600]);
% set(gca,'Position',[.1 .1 .8 .8]);
% clf
% m_proj('Mercator', ...
%         'lon',[lonmin lonmax], ...
%         'lat',[latmin latmax]);
%     
%     m_patch(data1.lon, data1.lat,'r');    %colorbar为速度，渐变台风轨迹

    
    
    
    
    
    


