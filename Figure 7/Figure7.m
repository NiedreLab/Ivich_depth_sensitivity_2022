%%Code for Figure 7
x=[.75,1,1.5,2,2.5,3,3.5,4,5,5.5];

figure;
tiledlayout(2,2);

%0.3mmSD
nexttile;
%high scattering and absorption
i=[4.6256217	2.218804732	0.345454775	0.070965872	0.022287624	0.009342028	0.004677992	0.002636902	0.001018506 0.000679891];
semilogy(x,i,'-d','LineWidth',2,'color',[184,62,62]/255);
hold on
%NIR
n=[4.802693557	2.735356562	0.50320082	0.100346833	0.028984412	0.011468684	0.005574578		0.003116871	0.001238871 0.000682151];
semilogy(x,n,'-^','LineWidth',2, 'color',[150,115,77]/255);
%low scattering and absorption
n=[4.71379491	3.601982866	1.008555202	0.220121175	0.056569141	0.018810355	0.007944774		0.003962181	0.001412778 9.39E-04];
semilogy(x,n,'-o','LineWidth',2, 'color',[0,0,0]);
%Limits of Detection
% Found by dividing 5x average noise (threshold) by the background signal
 bg=.01;
 yline(bg,'--','LineWidth',2, 'color',[0,0,0]);
hold off
ax = gca;
ax.FontSize = 16;
legend('{\mu}_{a},{\mu}_{s} x 150%','{\mu}_{a},{\mu}_{s}','{\mu}_{a},{\mu}_{s} x 50%','FontSize',16);
ylim([.00001,10]);
xlim([0,5.5]);

%3mmSD
nexttile;
x=[.75,1,1.5,2,2.5,3,3.5,4,5,5.5];
%high scattering and absorption
 b=[0.093660027	0.101163378	0.100321299	0.080188982	0.055509871	0.036082506	0.023097013	0.01509155	0.006800256	0.004760461];
 semilogy(x,b,'-d','LineWidth',2,'color',[184,62,62]/255);
 hold on
% % %NIR
c=[0.069599409	0.077040097	0.083749247	0.073650276	0.055272561	0.037668677	0.025140125		0.016759561	0.008100951 0.005791603];
semilogy(x,c,'-^','LineWidth',2, 'color',[150,115,77]/255);
%low scattering and absorption
n=[4.21E-02	0.0485218	0.060370146	0.062626974	0.053962636	0.040810971	0.02875763		0.019747244	0.009478677 6.84E-03];
semilogy(x,n,'-o','LineWidth',2, 'color',[0,0,0]);
%Limits of detection
% Found by dividing 5x average noise (threshold) by the background signal
 bg=.01;
 yline(bg,'--','LineWidth',2, 'color',[0,0,0]);
hold off
ax = gca;
ax.FontSize = 16;
ylim([.00001,10]);
xlim([0,5.5]);
legend('{\mu}_{a},{\mu}_{s} x 150%','{\mu}_{a},{\mu}_{s}','{\mu}_{a},{\mu}_{s} x 50%','FontSize',16);

 
 %0.3mmSD
nexttile;
x=[.75,1,1.5,2,2.5,3,3.5,4,5,5.5];
%-50% brightness
b=[2.401346778	1.367678281	0.25160041	0.050173417	0.014492206	0.005734342	0.002787289	0.001558436	0.000619435 0.000422267 ];
semilogy(x,b,'-d','LineWidth',2, 'color',[184,62,62]/255);
hold on;
%NIR
n=[4.802693557	2.735356562	0.50320082	0.100346833	0.028984412	0.011468684	0.005574578	0.003116871	0.001238871 0.000844535];
semilogy(x,n,'-^','LineWidth',2, 'color',[173,102,57]./255);
%+50% brightness
a=[7.2	4.103034842	0.75480123	0.15052025	0.043476617	0.017203026	0.008361867	0.004675307	0.001858306 0.001266802];
semilogy(x,a,'-o','LineWidth',2, 'color',[0,0,0]);
%Limits of Detection
% Found by dividing 5x average noise (threshold) by the background signal
nir=0.01;
yline(nir,'--','LineWidth',2, 'color',[0,0,0]);
xlim([0,5.5]);
hold off
ax = gca;
ax.FontSize = 16;
legend('I-{\mu}sphere x 50%','I-{\mu}sphere','I-{\mu}sphere x 150%','FontSize',16);
ylim([.00001,10]);


%3mmSD
nexttile;
x=[.75,1,1.5,2,2.5,3,3.5,4,5,5.5];
%-50%
b=[0.034796452	0.038516448	0.041870709	0.036821696	0.027633697	0.018832578	0.012568888	0.008378997	0.004050097 0.002895802 ];
semilogy(x,b,'-d','LineWidth',2, 'color',[184,62,62]/255);
hold on
%NIR
c=[0.069592903	0.077032895	0.083741419	0.073643392	0.055267394	0.037665156	0.025137776	0.016757995	0.008100194 0.005791603];
semilogy(x,c,'-^','LineWidth',2, 'color',[173,102,57]./255)
%+50%
a=[0.104389355	0.115549343	0.125612128	0.110465087	0.082901091	0.056497734	0.037706663	0.025136992	0.01215029 0.008687405];
semilogy(x,a,'-o','LineWidth',2, 'color',[0,0,0]);
%Limits of detection
% Found by dividing 5x average noise (threshold) by the background signal
nir=0.01;
yline(nir,'--','LineWidth',2, 'color',[0,0,0]);
hold off
ax = gca;
ax.FontSize = 14;
ylim([.0001,10]);
xlim([0,5.5]);
 fig = gcf;
 tl= fig.Children;
 ylabel(tl,'Theoretical Peak Amplitude / Background Intensity','FontSize',25);
  xlabel(tl,'Tissue Depth (mm)','FontSize',34);
legend('I-{\mu}sphere x 50%','I-{\mu}sphere','I-{\mu}sphere x 150%','FontSize',16);