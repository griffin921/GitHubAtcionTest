clear all

%Plant Parameters
RL = 0.05;%Ω
L_typ = 5e-4;%H
wr_current_plant = RL / L_typ;
Gain_current_plant = (1 / RL);

%Controller Parameters
Target_fc_current = 500;
Target_wc_current = 2 * pi * Target_fc_current;

Ti = 1 / Target_wc_current * Gain_current_plant;
Kp = 1 / (wr_current_plant * Ti) ;

%Discreate parameters
Tc = 1/10000;

