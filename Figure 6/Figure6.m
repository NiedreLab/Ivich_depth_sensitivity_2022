%%Code for Figure 6
figure;
x=[.75,1,1.5,2,2.5,3,3.5,4,5];

% figure;
tiledlayout(2,2);

%0mmSD
%nexttile;
% 
% %blue-green
% b=[0.159733991	0.039292052	0.005230225	0.00119051	0.000347331	0.000116384	4.22056E-05	1.63429E-05	2.79639E-06];
% semilogy(x,b,'-*','LineWidth',2, 'color',[0,.75,.75]);
% hold on
% % %red
% a=[0.938152583	0.303004147	0.03259873	0.00621523	0.001893909	0.00075142	0.000346259	0.000174774	5.35659E-05];
% semilogy(x,a,'-o','LineWidth',2, 'color','r');
% % %NIR
% l=[4.642750699	2.002510892	0.277426812	0.049220044	0.013583836	0.005276775	0.002546201	0.001422788	0.000562565];
% semilogy(x,l,'-^','LineWidth',2, 'color',[173,102,57]./255);
% % %Limits of Detection
% % % Found by dividing 5x average noise (threshold) by the background signal
%  bg=.01;
%  yline(bg,'--','LineWidth',2, 'color',[0,0,0]);
%  hold off
% ax = gca;
% ax.FontSize = 14;
% legend('488nm','640nm','780nm','Theoretical threshold','FontSize',14);
% ylim([.000001,10]);
% title('0mmSD','FontSize',16);

%0.3mmSD
nexttile;
%  figure;
%blue-green
b=[0.217523865	0.060225024	0.008609948	0.00199263	0.000586904	0.000197776	7.21749E-05	2.8105E-05	4.77339E-06];
semilogy(x,b,'-*','LineWidth',2, 'color',[0,.75,.75]);
hold on
%red
a=[1.118137921	0.45834106	0.061484776	0.012576432	0.003911643	0.001565067	0.000723238	0.00036658	0.000112722];
semilogy(x,a,'-o','LineWidth',2, 'color','r');
%NIR
 l=[4.802693557	2.735356562	0.50320082	0.100346833	0.028984412	0.011468684	0.005574578	0.003116871	0.001238871];
semilogy(x,l,'-^','LineWidth',2, 'color',[173,102,57]./255);
%Limits of Detection
% Found by dividing 5x average noise (threshold) by the background signal
bg=.01;
yline(bg,'--','LineWidth',2, 'color',[0,0,0]);;
hold off
ax = gca;
ax.FontSize = 14;
ylim([.000001,10]);
 legend('488nm','640nm','780nm','FontSize',14);
% title('0.3mmSD','FontSize',16);


%1mmSD
 nexttile;
%figure;
% %blue-green
b=[0.149122464	0.078707898	0.018584479	0.005058933	0.001591393	0.000552966	0.000206912	8.13395E-05	1.40801E-05];
semilogy(x,b,'-*','LineWidth',2, 'color',[0,.75,.75]);
hold on
%red
 a=[0.176372877	0.171829652	0.077688026	0.027959761	0.011567406	0.005639723	0.003076253	0.001830875	0.000766613];
 semilogy(x,a,'-o','LineWidth',2, 'color','r');
% %NIR
l=[0.48485527	0.605032509	0.406997906	0.166363346	0.065725961	0.029603043	0.015240317	0.008758885	0.003575716];
semilogy(x,l,'-^','LineWidth',2, 'color',[173,102,57]./255);
% %Limits of Detection
% % Found by dividing 5x average noise (threshold) by the background signal
 bg=.01;
 yline(bg,'--','LineWidth',2, 'color',[0,0,0]);
 hold off
ax = gca;
ax.FontSize = 14;
%legend('488nm','640nm','780nm','Theoretical threshold','FontSize',13);
ylim([.000001,10]);
% title('1mmSD','FontSize',16);


%2mmSD
% nexttile;
% figure;
% % %blue-green
% b=[0.072813058	0.057713584	0.025621991	0.009675234	0.003602752	0.001391902	0.000556382	0.000228415	4.19394E-05];
% semilogy(x,b,'-*','LineWidth',2, 'color',[0,.75,.75]);
% hold on
% % %red
% a=[0.050143806	0.054258599	0.044771179	0.026903919	0.014819694	0.0083397	0.004944191	0.003090066	0.001362861];
% semilogy(x,a,'-o','LineWidth',2, 'color','r');
% % %NIR
% l=[0.118542267	0.14264824	0.152871619	0.111560199	0.066867828	0.038039531	0.022429257	0.013734798	0.006036074];
% semilogy(x,l,'-^','LineWidth',2, 'color',[173,102,57]./255);
% % %Limits of Detection
% % % Found by dividing 5x average noise (threshold) by the background signal
%  bg=.01;
%  yline(bg,'--','LineWidth',2, 'color',[0,0,0]);
% ax = gca;
% ax.FontSize = 14;
% %legend('488nm','640nm','780nm','Theoretical threshold','FontSize',13);
% ylim([.000001,10]);
% title('2mmSD','FontSize',16);
% 


%3mmSD
 nexttile;
% figure;
%blue-green
b=[0.042583583	0.039675438	0.025109281	0.012531519	0.005673865	0.002510928	0.001087421	0.000480914	9.57205E-05];
semilogy(x,b,'-*','LineWidth',2, 'color',[0,.75,.75]);
hold on
%RED
a=[0.033607114	0.035193959	0.031906923	0.022839236	0.014069649	0.008217591	0.004764503	0.002788314	0.001003113];
semilogy(x,a,'-o','LineWidth',2, 'color','r');
%NIR
c=[0.069592903	0.077032895	0.083741419	0.073643392	0.055267394	0.037665156	0.025137776	0.016757995	0.008100194];
semilogy(x,c,'-^','LineWidth',2, 'color',[173,102,57]./255)
%Limits of detection
% Found by dividing 5x average noise (threshold) by the background signal
bg=.01;
yline(bg,'--','LineWidth',2, 'color',[0,0,0]);
hold off
ax = gca;
ax.FontSize = 14;
ylim([.000001,10]);
% title('3mmSD','FontSize',16);

%4mmSD
% nexttile;
% figure;
% %blue-green
% b=[0.027073211	0.027729487	0.021842521	0.013482932	0.007255142	0.003606102	0.001743279	0.000822419	0.000182037];
% semilogy(x,b,'-*','LineWidth',2, 'color',[0,.75,.75]);
% hold on
% %RED
% a=[0.023528472	0.024650207	0.023623365	0.019085481	0.013559712	0.00894032	0.005656522	0.003565979	0.001405316  ];
% semilogy(x,a,'-o','LineWidth',2, 'color','r');
% %NIR
% c=[0.049705544	0.05303281	0.057160246	0.053776472	0.044999453	0.034441263	0.025347793	0.018375681	0.009731799];
% semilogy(x,c,'-^','LineWidth',2, 'color',[173,102,57]./255)
% %Limits of detection
% % Found by dividing 5x average noise (threshold) by the background signal
% bg=.01;
% yline(bg,'--','LineWidth',2, 'color',[0,0,0]);
% hold off
% ax = gca;
% ax.FontSize = 14;
% ylim([.000001,10]);
% title('4mmSD','FontSize',16);

% %5mmSD
 nexttile;
% figure;
%blue-green
b=[0.017985899	0.019605853	0.017969679	0.01298486	0.007997638	0.004503308	0.002369794	0.001211315	0.000301883];
semilogy(x,b,'-*','LineWidth',2, 'color',[0,.75,.75]);
hold on
%RED
a=[0.017506948	0.018502484	0.018534489	0.016094163	0.01256481	0.009044218	0.006213931	0.004168786	0.001807462];
semilogy(x,a,'-o','LineWidth',2, 'color','r');
%NIR
c=[0.037687667	0.040001904	0.042700805	0.041559323	0.03710598	0.030798432	0.024646001	0.018876983	0.010961666];
semilogy(x,c,'-^','LineWidth',2, 'color',[173,102,57]./255)
%Limits of detection
% Found by dividing 5x average noise (threshold) by the background signal
bg=.01;
yline(bg,'--','LineWidth',2, 'color',[0,0,0]);
hold off
ax = gca;
ax.FontSize = 12;
ylim([.000001,10]);
ax = gca;
ax.FontSize = 14;
% title('5mmSD','FontSize',16);

% % %6mmSD
% nexttile;
% figure;
% %blue-green
% b=[1.26E-02	0.014249541	0.01453171	0.011710019	0.008097548	0.005050827	0.002930679	0.001615418	0.000447182];
% semilogy(x,b,'-*','LineWidth',2, 'color',[0,.75,.75]);
% hold on;
% %RED
% a=[1.34E-02	0.014302244	0.014742313	0.013614636	0.01134388	0.008828885	0.006449487	0.004593221	0.002192094];
% semilogy(x,a,'-o','LineWidth',2, 'color','r');
% %NIR
% c=[0.02922003	0.031127761	0.033500485	0.033612335	0.031096342	0.027290516	0.022848361	0.018505488	0.011729987];
% semilogy(x,c,'-^','LineWidth',2, 'color',[173,102,57]./255);
% %Limits of Detection
% % Found by dividing 5x average noise (threshold) by the background signal
% bg=.01;
% yline(bg,'--','LineWidth',2, 'color',[0,0,0]);
% hold off
% ylim([.000001,10]);
% ax = gca;
% ax.FontSize = 14;
%  title('6mmSD','FontSize',16);
fig=gcf;
tl=fig.Children;
xlabel(tl,'Tissue Depth (mm)','FontSize',34);
ylabel(tl,'Theoretical Peak Amplitude/Background Intensity','FontSize',25);
