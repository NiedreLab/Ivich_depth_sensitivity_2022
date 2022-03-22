%Code to get the Count Rate figure
%Experimental data avaliable in the folders "LabExperimentsData-X"


%0.3mm%SD%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%&%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Normalized to each color's max
x=[.75,1,1.5,2,3,4,5];
xn=[.75,1,1.5,2,2.5,3,3.5,4,5];
figure;
tiledlayout(1,2);
nexttile
% %Blue-Green
a=[1 0.828583581 0.025095704 0.000850702 0 0 0];
%semilogy(x,a,'-','LineWidth',1, 'color',[0,.75,.75]);
h=[1 0.28048539 0.056826886 0.004681697 0 0 0];
errorbar(x,a,h,'-*','LineWidth',2, 'color', [0 .75 .75]);
hold on;

%Red
z=[0.706377325 1 0.430026572 0.00088574 0 0 0];
%semilogy(x,z,'-x','LineWidth',1,'color',[1 0 0]);
l=[0.7901599 1 0.126517262 0.002769197 0 0 0];
errorbar(x,z,l,'-o','LineWidth',2, 'color', [1 0 0]);

%NIR
s=[0.974535269 0.838298956 1 0.089381207 0.015788133 0.003565062 0.001273237 0 0];
%semilogy(x,s,'-','LineWidth',1,'color',[173,102,57]./255);
rr=[0.779745574 1 0.926000196 0.085067066 0.024448197 0.008344856 0.009329833 0.003406773 0];
t=errorbar(xn,s,rr,'-^','LineWidth',1.5,'color', [173,102,57]./255);
 set(t,'color',[173,102,57]./255)
% xlabel('Tissue depth (mm)','FontSize',18);
% ylabel('DiFC detections/min','FontSize',18);
set(gca, 'yscale', 'log');
ylim([.0001, 100]);
xlim([0,5]);
legend('488nm','640nm','780nm','FontSize',14);

ax = gca;
ax.FontSize = 14;

% %%%%%%%%%3mm SD
% Normalized to each color's max
nexttile
%Blue-Green
d=[0.013611229 0.003402807 0 0 0 0 0 ];
semilogy(x,d,'-','LineWidth',1.5,'color',[0,.75,.75]);
err=[0.022289338 0.004681697 0.00382259 0 0 0 0];
errorbar(x,d,err,'-*','LineWidth',2, 'color', [0 .75 .75]);
hold on;

%Red
e=[0.00044287 0.00044287 0.00044287 0.00044287 0 0 0];
%semilogy(x,e,'-','LineWidth',1,'color','r');
erro=[0.00226104 0.00226104 0.00226104 0.00226104 0 0 0];
errorbar(x,e,erro,'-o','LineWidth',1.5, 'color', [1 0 0]);

%NIR
s=[0.273236567 0.411510059 0.293353705 0.076903489 0.016042781 0.006111536 0.001782531 0 0];
%semilogy(x,s,'-','LineWidth',1,'color',[173,102,57]./255);
rr=[0.116197106 0.237335819 0.486922333 0.056452127 0.027111865 0.009585492 0.007293466 0 0];
t=errorbar(xn,s,rr,'-^','LineWidth',1.5,'color', [173,102,57]./255);
 set(t,'color',[173,102,57]./255)
hold off
% xlabel('Tissue depth (mm)','FontSize',18);
set(gca, 'yscale', 'log');
ylim([.0001, 100]);
xlim([0,5]);
ax = gca;
ax.FontSize = 14;
fig=gcf;
tl=fig.Children;
xlabel(tl,'Tissue Depth (mm)','FontSize',26);
ylabel(tl,'DiFC detections/min','FontSize',22);