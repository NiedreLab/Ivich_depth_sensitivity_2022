%Code for Figure 3

%Simulation data available in the folder "MC-SIMULATION DATA". Values used here were extracted from those
%matrices


%0.3mm%SD%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%&%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %Simulation%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
x=[.25,.5,.75,1,1.5,2,2.5,3,3.5,4,5];
figure;
tiledlayout(3,2);

nexttile(1);
load('0.3mmSD.mat');
imagesc(log10(abs(squeeze(Jmua1(100,80:120,1:40)))))
data1=Jmua1;
colorbar
color2=colormap(gca);
cl=caxis;
colorbar('Ticks',[0,5,10,15],...
'TickLabels',{'10^{-15}','10^{-10}','10^{-5}','10^0'})
axis equal;
ylim([1,40]);
xlim([1,40]);
xticks([0 10 20 30 40]);
xticklabels([0 2.5 5 7.5 10]);
%xlabel('Tissue depth (mm)','FontSize',12);
%title('0.3mm SD','FontSize',13);
set(gca,'ytick',[]);

nexttile(2);
%Blue-Green
b=[8.15E+15/8.15E+15 5.39E+15/8.15E+15 1.46E+15/8.15E+15 4.05E+14/8.15E+15 5.79E+13/8.15E+15 1.34E+13/8.15E+15 3.9468e+12/8.15E+15 1.33E+12/8.15E+15 4.8536e+11/8.15E+15 1.89E+11/8.15E+15 3.21E+10/8.15E+15];
semilogy(x,b,'-*','LineWidth',1,'color',[0,.75,.75]);
hold on;
%red
h=[1.96E+15/8.15E+15 3.60E+15/8.15E+15 2.40E+15/8.15E+15	 9.84E+14/8.15E+15	1.32E+14/8.15E+15	2.70E+13/8.15E+15 8.3978e+12/8.15E+15	3.36E+12/8.15E+15  1.5527e+12/8.15E+15	7.87E+11/8.15E+15	2.42E+11/8.15E+15];
semilogy(x,h,'-o','LineWidth',1,'color','r');
%NIR
k=[1.10E+15/8.15E+15 3.09E+15/8.15E+15 2.60E+15/8.15E+15	 1.48E+15/8.15E+15	2.73E+14/8.15E+15	5.44E+13/8.15E+15 1.5711e+13/8.15E+15	6.22E+12/8.15E+15   3.0217e+12/8.15E+15	1.69E+12/8.15E+15	6.72E+11/8.15E+15];
semilogy(x,k,'-.','LineWidth',1.5,'color',[150,115,55]./255);
hold off;
ylim([.00000001,10]);
legend('488nm','640nm','780nm','FontSize',14);
%xlabel('Tissue depth (mm)','FontSize',12);
ylabel('Voxel value','FontSize',14);
xlim([0,5]);


% %3mm SD
nexttile(3);
load('3mmSD.mat');
imagesc(log10(abs(squeeze(Jmua1(100,80:120,1:40)))))
colorbar
colormap(gca,color2);
caxis(cl);
colorbar('Ticks',[0,5,10,15],...
'TickLabels',{'10^{-15}','10^{-10}','10^{-5}','10^0'})
axis equal;
xticks([0 10 20 30 40]);
xticklabels([0 2.5 5 7.5 10]);
xlim([1,40]);
ylim([1,40]);
%xlabel('Tissue depth (mm)','FontSize',12);
%title('3mm SD','FontSize',13);
set(gca,'ytick',[]);

nexttile(4)
%Blue-green
n=[6.98E+12/8.15E+15 8.56E+12/8.15E+15 9.21E+12/8.15E+15 8.58E+12/8.15E+15 5.43E+12/8.15E+15 2.71E+12/8.15E+15 1.2270e+12/8.15E+15 5.43E+11/8.15E+15 2.3516e+11/8.15E+15 1.04E+11/8.15E+15 2.07E+10/8.15E+15];
semilogy(x,n,'-*','LineWidth',1,'color',[0,.75,.75]);
hold on;
%Red
t=[5.06E+12/8.15E+15 5.42E+12/8.15E+15 5.93E+12/8.15E+15 6.21E+12/8.15E+15 5.63E+12/8.15E+15 4.03E+12/8.15E+15 2.4826e+12/8.15E+15 1.45E+12/8.15E+15    8.4070e+11/8.15E+15 4.92E+11/8.15E+15 1.77E+11/8.15E+15 ];
semilogy(x,t,'-o','LineWidth',1,'color','r');
%NIR
w=[3.77E+12/8.15E+15 3.99E+12/8.15E+15 4.44E+12/8.15E+15 4.92E+12/8.15E+15 5.35E+12/8.15E+15 4.70E+12/8.15E+15 3.5285e+12/8.15E+15 2.40E+12/8.15E+15 1.6049e+12/8.15E+15 1.07E+12/8.15E+15 5.17E+11/8.15E+15 ];
semilogy(x,w,'-.','LineWidth',1.5,'color',[150,115,55]./255);
hold off
ylim([.00000001,10]);
ylabel('Voxel value','FontSize',14);
%xlabel('Tissue depth (mm)','FontSize',14);
xlim([0,5]);
nexttile(5);
load('6mmSD.mat');
imagesc(log10(abs(squeeze(Jmua1(100,80:120,1:40)))))
colorbar
colormap(gca, color2);
caxis(cl);
colorbar('Ticks',[0,5,10,15],...
      'TickLabels',{'10^{-15}','10^{-10}','10^{-5}','10^0'})
axis equal;
set(gca,'ytick',[]);
xticks([0 10 20 30 40]);
xticklabels([0 2.5 5 7.5 10]);
xlim([1,40]);
ylim([1,40]);
xlabel('Tissue depth (mm)','FontSize',16);
%title('6mm SD','FontSize',12);

nexttile(6);
%Blue-green
n=[1.0194e+11/8.15E+15 1.3975e+11/8.15E+15   1.7929e+11/8.15E+15 2.0174e+11/8.15E+15  2.0599e+11/8.15E+15  1.6633e+11/8.15E+15  1.1479e+11/8.15E+15 7.1564e+10/8.15E+15 4.1545e+10/8.15E+15  2.2890e+10/8.15E+15   6.3392e+09/8.15E+15];
semilogy(x,n,'-*','LineWidth',1,'color',[0,.75,.75]);
hold on;
%Red
t=[4.2195e+11/8.15E+15 4.4975e+11/8.15E+15 4.8843e+11/8.15E+15 5.1958e+11/8.15E+15   5.3628e+11/8.15E+15  4.9501e+11/8.15E+15  4.1244e+11/8.15E+15 3.2072e+11/8.15E+15    2.3449e+11/8.15E+15 1.6678e+11/8.15E+15 7.9694e+10/8.15E+15 ];
semilogy(x,t,'-o','LineWidth',1,'color','r');
%NIR
w=[6.4194e+11/8.15E+15 6.6131e+11/8.15E+15 6.9752e+11/8.15E+15  7.4306e+11/8.15E+15 7.9970e+11/8.15E+15 8.0237e+11/8.15E+15 7.4231e+11/8.15E+15 6.5146e+11/8.15E+15 5.4542e+11/8.15E+15 4.4175e+11/8.15E+15 2.8001e+11/8.15E+15 ];
semilogy(x,w,'-.','LineWidth',1.5,'color',[150,115,55]./255);
hold off
ylim([.00000001,10]);
ylabel('Voxel value','FontSize',14);
xlabel('Tissue depth (mm)','FontSize',16);
xlim([0,5]);

% %Code for Signal decay over increasing Source-Detector Separation
% 
% x = [0.3 3 4 5 6 12];
% 
% nexttile
% x = [0.3,3,4,5,6,12];
% %blue-green
% a=[.25 .5 1 1 1.5 2 ];
% plot(x,a,'-*','lineWidth',2, 'color',[0,.75,.75]);
% hold on
% %red
% b=[.5 1 1 1.5 1.5 2 ];
% plot(x,b,'-o','LineWidth',2,'color','r');
% %NIR
% c=[.5 1.5 1.5 1.5 2 3 ];
% plot(x,c,'-.','LineWidth',2,'color',[150,115,77]/255);
% hold off
% ax = gca;
% ax.FontSize = 12;
% ylabel('Depth of Maximum Sensitivity (mm)','FontSize',15);
% %xlabel('Source-Dectector Separation (mm)','FontSize',14);
% % legend('488nm','640nm','780nm','FontSize',14);
% 
% 
% nexttile
% %Blue-green
% b= [8.15E+15/8.15E+15	9.21E+12/8.15E+15	2.27E+12/8.15E+15	6.53E+11/8.15E+15	2.12E+11/8.15E+15	694388096/8.15E+15];
% semilogy(x,b,'-*', 'LineWidth',2,'color',[0,.75,.75]);
%  hold on
% %Red
%  r=[3.60E+15/8.15E+15	6.21E+12/8.15E+15	2.48E+12/8.15E+15	1.12E+12/8.15E+15	5.36E+11/8.15E+15	1.61E+10/8.15E+15 ];
%  semilogy(x,r,'-o','LineWidth',2,'color','r');
%  %NIR
%  c=[2.71E+15/8.15E+15	5.35E+12/8.15E+15	2.53E+12/8.15E+15	1.37E+12/8.15E+15	8.08E+11/8.15E+15	7.64E+10/8.15E+15];
%  semilogy(x,c,'-.','LineWidth',2,'color',[150,115,77]/255);
%  hold off
%  ax = gca;
% ax.FontSize = 12;
%  ylabel('Voxel Value of Maximum Sensitivity','FontSize',15);
% fig=gcf;
% tl=fig.Children;
% xlabel(tl,'Source-Dectector Separation (mm)','FontSize',20);
% 
% 
% 
% 
