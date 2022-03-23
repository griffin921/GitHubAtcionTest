%Load Parameters
ModelParameters;

%bodeplot options
opts = bodeoptions;
opts.Title.FontSize = 14;
opts.FreqUnits = 'Hz';
opts.Grid = 'on';

%Plot Plant
s = tf('s');
Gp = 1 / RL / (s*L_typ/RL + 1);

figure(1);
bodeplot(Gp,opts);
grid on;

%Plot Controller 
Gc = (Kp * Ti * s + 1) / (Ti * s);
hold on
bodeplot(Gc,opts);
hold on

%Plot Open Loop
bodeplot(Gc * Gp,opts);
