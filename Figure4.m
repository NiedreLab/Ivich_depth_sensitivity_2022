%%Code for Figure 4

%Simulation data available in the folder "SimulationsData". 
%Experimental data avaliable in the folders "LabExperimentsData-X"


x=[.75,1,1.5,2,3,4,5];
nx=[.75,1,1.5,2,2.5,3,3.5,4,5];
figure;
tiledlayout(2,3);

%blue-green
nexttile;
a=[1.45E+15/2.60E+15	 4.05E+14/2.60E+15	5.79E+13/2.60E+15	1.34E+13/2.60E+15	1.33E+12/2.60E+15	1.89E+11/2.60E+15	3.21E+10/2.60E+15];
semilogy(x,a,'-','LineWidth',2, 'color',[0,.75,.75]);
hold on;
g=[1 0.092987791 0.026562155 0.008812035 0 0 0];
semilogy(x,g,'*','LineWidth',2,'color',[0,.5,.75]);
err=[1 0.005082779 0.009429443 0.033357257 0 0 0];
errorbar(x,g,zeros(size(g)),err,'LineStyle','none','LineWidth',2, 'color', [0 .5 .75]);
%errorbar(x,g,err,zeros(size(g)),U);
%'LineStyle','none','LineWidth',2, 'color', [0 .5 .75]);
hold off
ylim([.0001, 10]);
xlim([.5,5]);
ax = gca;
ax.FontSize = 15;
legend('488nm Simulation','488nm-lab-experiment','FontSize',20 );

%Red
nexttile;
b=[2.40E+15/2.60E+15	 9.84E+14/2.60E+15	1.32E+14/2.60E+15	2.70E+13/2.60E+15	3.36E+12/2.60E+15	7.87E+11/2.60E+15	2.42E+11/2.60E+15];
semilogy(x,b,'-','LineWidth',2,'color','r');
hold on
h=[1 5.09E-02 1.12E-02 2.47E-03 0 0 0];
semilogy(x,h,'o','LineWidth',2,'color',[194,94,87]/255);
erro=[1 0.180310592 0.01870245 0.072153922 0 0 0];
errorbar(x,h,zeros(size(h)),erro,'LineStyle','none','LineWidth',2, 'color', [194,94,87]/255);
hold off
ax = gca;
ax.FontSize = 15;
legend('640nm Simulation','640nm-lab-experiment','FontSize',20 );
xlim([.5,5]);
ylim([.0001, 10]);

%NIR
nexttile;
c=[2.60E+15/2.60E+15	 1.48E+15/2.60E+15	2.73E+14/2.60E+15	5.44E+13/2.60E+15	6.22E+12/2.60E+15	1.69E+12/2.60E+15	6.72E+11/2.60E+15];
semilogy(x,c,'-','LineWidth',2,'color',[173,102,57]./255);
hold on;
s=[1 3.87E-01 3.71E-02 6.73E-03 3.98E-03 4.25E-03 2.02E-03 0 0.00E+00];
semilogy(nx,s,'^','LineStyle','none','LineWidth',2,'color',[173,102,57]./255);
error=[1 0.467255935 0.11912179 0.017405736 0.003071415 0.003813152 0.039442662 0.028520815 0];
errorbar(nx,s,zeros(size(s)),error,'LineStyle','none','LineWidth',2, 'color', [173,102,57]./255)
hold off
ax = gca;
ax.FontSize = 15;
legend('780nm Simulation','780nm-lab-experiment','FontSize',20 );
xlim([.5,5]);
ylim([.0001, 10]);

%Blue-green
nexttile;
z=[9.21E+12/9.21E+12 	8.58E+12/9.21E+12	5.43E+12/9.21E+12	2.71E+12/9.21E+12	5.43E+11/9.21E+12	1.04E+11/9.21E+12	2.07E+10/9.21E+12];
semilogy(x,z,'-','LineWidth',2, 'color',[0,.75,.75]);
hold on;
g=[.50206154 1 0 0 0 0 0];
semilogy(x,g,'*','LineStyle','none','LineWidth',2,'color',[0,.5,.75]);
err=[0.080057907 1.000000013 0.985106785 0 0 0 0 ];
errorbar(x,g,zeros(size(g)),err,'LineStyle','none','LineWidth',2, 'color', [0 .5 .75]);
hold off
ylim([.01 5]);
xlim([.5,5]);
ax = gca;
ax.FontSize = 15;
%legend('488nm','488nm-lab-experiment','FontSize',13 );

%Red
nexttile;
w=[5.93E+12/9.21E+12 	6.21E+12/9.21E+12	5.63E+12/9.21E+12	4.03E+12/9.21E+12	1.45E+12/9.21E+12	4.92E+11/9.21E+12	1.77E+11/9.21E+12];
semilogy(x,w,'-','LineWidth',2,'color','r');
hold on
i=[1 7.72E-01 7.42E-01 7.72E-01 0 0 0 ];
semilogy(x,i,'o','LineWidth',2,'color',[194,94,87]/255);
erro=[1.00E+00 7.74E-01 7.43E-01 7.74E-01 0.00E+00 0.00E+00 0.00E+00 ];
errorbar(x,i,zeros(size(i)),erro,'LineStyle','none','LineWidth',2, 'color', [194,94,87]/255);
hold off
ylim([.01 5]);
xlim([.5,5]);
ax = gca;
ax.FontSize = 15;
%legend('640nm','640nm-lab-experiment','FontSize',13 );

%NIR
nexttile;
F=[4.44E+12/9.21E+12	 4.92E+12/9.21E+12	5.35E+12/9.21E+12	4.70E+12/9.21E+12	2.40E+12/9.21E+12	1.07E+12/9.21E+12	5.17E+11/9.21E+12];
semilogy(x,F,'-','LineWidth',2,'color',[173,102,57]./255);
hold on
p=[5.27E-01 1 8.10E-01 5.76E-01 3.99E-01 4.17E-01 3.06E-01 0 0.00E+00];
semilogy(nx,p,'^','LineWidth',2,'color',[173,102,57]/255);
erro=[0.106910606 0.294848009 0.267397144 0.19381929 0.10165212 0.049155833 0.883202701 1.000753545 0];
errorbar(nx,p,zeros(size(p)),erro,'LineStyle','none','LineWidth',2, 'color', [173,102,57]/255);
hold off
ylim([.01 5]);
xlim([.5,5]);
ax = gca;
ax.FontSize = 15;
%legend('780nm','780nm-lab-experiment','FontSize',13 );

fig=gcf;
tl=fig.Children;
xlabel(tl,'Tissue Depth (mm)','FontSize',40);
ylabel(tl,'Normalized Voxel Value or Mean Fluorescence','FontSize',30);