Function_gen;
phase_dev_gen;
modulation;
%   =====================
%   Original signal plot
%   =====================
fig2 = figure('Name','FM / Line code','units','normalized','outerposition',[0 0 0.5 0.5]);
set(fig2,'Color','w');
plot(t,signal,'LineWidth',1.5,'color','k');
set(gca,'FontSize',13)
xlabel('Time (sec)','interpreter','LaTeX')
ylabel('m(t)','interpreter','LaTeX')
title('Information signal','interpreter','LaTeX')
grid on;
%   =====================


%   ===============
%   phase deviation
%   ===============
fig3 = figure('Name','FM/ Phase Deviation','units','normalized','outerposition',[0 0 1 1]);
set(fig3,'Color','w');
subplot(311)
plot(t,phi,'LineWidth',1.5,'color','k');
set(gca,'FontSize',13)
xlabel('Time (sec)','interpreter','LaTeX')
ylabel('$\theta(t)$','interpreter','LaTeX')
title(['$\theta(t)$ with $K_f = $',num2str(k_f)],'interpreter','LaTeX')
grid on;
subplot(312)
plot(t,phi1,'LineWidth',1.5,'color','k');
set(gca,'FontSize',13)
xlabel('Time (sec)','interpreter','LaTeX')
ylabel('$\theta(t)$','interpreter','LaTeX')
title(['$\theta(t)$ with $K_f = $',num2str(k_f1)],'interpreter','LaTeX')
grid on;
subplot(313)
plot(t,phi2,'LineWidth',1.5,'color','k');
set(gca,'FontSize',13)
xlabel('Time (sec)','interpreter','LaTeX')
ylabel('$\theta(t)$','interpreter','LaTeX')
title(['$\theta(t)$ with $K_f = $',num2str(k_f2)],'interpreter','LaTeX')
grid on;
% =====================

% =================
% All
% =================
% info signal
fig = figure('Name','FM / All of Part A','units','normalized','outerposition',[0 0 1 1]);
set(fig,'Color','w');
subplot(4,3,[1,2,3])
plot(t,signal,'LineWidth',1.5,'color','r');
set(gca,'FontSize',9)
xlabel('Time (sec)','interpreter','LaTeX')
ylabel('m(t)','interpreter','LaTeX')
title('Information signal','interpreter','LaTeX')
grid on;
% phase
subplot(4,3,4)
plot(t,phi,'LineWidth',1.5,'color','k');
set(gca,'FontSize',9)
xlabel('Time (sec)','interpreter','LaTeX')
ylabel('$\theta(t)$','interpreter','LaTeX')
title(['$\theta(t)$ with $K_f = $',num2str(k_f)],'interpreter','LaTeX')
grid on;
subplot(4,3,5)
plot(t,phi1,'LineWidth',1.5,'color','k');
set(gca,'FontSize',9)
xlabel('Time (sec)','interpreter','LaTeX')
ylabel('$\theta(t)$','interpreter','LaTeX')
title(['$\theta(t)$ with $K_f = $',num2str(k_f1)],'interpreter','LaTeX')
grid on;
subplot(4,3,6)
plot(t,phi2,'LineWidth',1.5,'color','k');
set(gca,'FontSize',9)
xlabel('Time (sec)','interpreter','LaTeX')
ylabel('$\theta(t)$','interpreter','LaTeX')
title(['$\theta(t)$ with $K_f = $',num2str(k_f2)],'interpreter','LaTeX')
grid on;
% modulated
subplot(437)
plot(t,mod,'LineWidth',1.5);
set(gca,'FontSize',9)
xlabel('Time (sec)','interpreter','LaTeX')
ylabel('$S_{FM}(t)$','interpreter','LaTeX')
title(['Modulated signal with $K_f = $',num2str(k_f)],'interpreter','LaTeX')
grid on;
subplot(438)
plot(t,mod1,'LineWidth',1.5,'color','g');
grid on;
set(gca,'FontSize',9)
xlabel('Time (sec)','interpreter','LaTeX')
ylabel('$S_{FM}(t)$','interpreter','LaTeX')
title(['Modulated signal with $K_f = $',num2str(k_f1)],'interpreter','LaTeX')
subplot(4,3,9)
plot(t,mod2,'LineWidth',1.5,'color','m');
grid on;
set(gca,'FontSize',9)
xlabel('Time (sec)','interpreter','LaTeX')
ylabel('$S_{FM}(t)$','interpreter','LaTeX')
title(['Modulated signal with $K_f = $',num2str(k_f2)],'interpreter','LaTeX')

% mod all in one
subplot(4,3,[10,11,12])
plot(t,mod,'LineWidth',1.5);
grid on;
hold on;
plot(t,mod1,'LineWidth',1.5,'color','g');
plot(t,mod2,'LineWidth',1.5,'color','m');
set(gca,'FontSize',9)
xlabel('Time (sec)','interpreter','LaTeX')
ylabel('$S_{FM}(t)$','interpreter','LaTeX')
legend('$K_f = 1000$','$K_f = 3000$','$K_f = 5000$','interpreter','LaTeX')
title('Modulated signal all in one','interpreter','LaTeX')
% =========================

% =========================
% separate modulated signals
% ==========================
fig1 = figure('Name','FM / Modulated Signal','units','normalized','outerposition',[0 0 0.7 0.7]);;
set(fig1,'Color','w');
subplot(311)
plot(t,mod,'LineWidth',1.5,'color','k');
set(gca,'FontSize',13)
xlabel('Time (sec)','interpreter','LaTeX')
ylabel('$S_{FM}(t)$','interpreter','LaTeX')
title(['Modulated signal with $K_f = $',num2str(k_f)],'interpreter','LaTeX')
grid on;
subplot(312)
plot(t,mod1,'LineWidth',1.5,'color','k');
grid on;
set(gca,'FontSize',13)
xlabel('Time (sec)','interpreter','LaTeX')
ylabel('$S_{FM}(t)$','interpreter','LaTeX')
title(['Modulated signal with $K_f = $',num2str(k_f1)],'interpreter','LaTeX')
subplot(313)
plot(t,mod2,'LineWidth',1.5,'color','k');
grid on;
set(gca,'FontSize',13)
xlabel('Time (sec)','interpreter','LaTeX')
ylabel('$S_{FM}(t)$','interpreter','LaTeX')
title(['Modulated signal with $K_f = $',num2str(k_f2)],'interpreter','LaTeX')
% ===========================