%   Run simulink model using 'sim' command
sim('FM_Mod_Self_Module_Sawtooth.slx');

%%
%   Extracting data for each of both carrier and msg signals, and
%   the modulated signal from the simulink model.
t                    = simout.Time;

msgSignal             = simout.Data(:,1);
modulatedSignal       = simout.Data(:,2);
modulatedSignal1      = simout.Data(:,3);
modulatedSignal2      = simout.Data(:,4);

%%
%   plotting

fig2 = figure('Name','FM / Simulink self-implemented model Sawtooth wave','units','normalized','outerposition',[0 0 1 1]);
set(fig2,'Color','white')
subplot(411)
plot(t, msgSignal,'color','k','LineWidth',1.5);
set(gca,'FontSize',12)
grid on
title('Msg signal','interpreter','LaTeX')
xlabel('Time','interpreter','LaTeX')
ylabel('m(t)','interpreter','LaTeX')
subplot(412)
plot(t, modulatedSignal,'color','k','LineWidth',1.5);
set(gca,'FontSize',12)
grid on
title('Modulated signal with $K_f = 5000$','interpreter','LaTeX')
xlabel('Time','interpreter','LaTeX')
ylabel('$S_{FM}(t)$','interpreter','LaTeX')
subplot(413)
plot(t, modulatedSignal1,'color','k','LineWidth',1.5);
set(gca,'FontSize',12)
grid on
title('Modulated signal with $K_f = 5000$','interpreter','LaTeX')
xlabel('Time','interpreter','LaTeX')
ylabel('$S_{FM}(t)$','interpreter','LaTeX')
subplot(414)
plot(t, modulatedSignal2,'color','k','LineWidth',1.5);
set(gca,'FontSize',12)
grid on
title('Modulated signal with $K_f = 5000$','interpreter','LaTeX')
xlabel('Time','interpreter','LaTeX')
ylabel('$S_{FM}(t)$','interpreter','LaTeX')