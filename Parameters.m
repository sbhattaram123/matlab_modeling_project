%Parameters for the model:
%Mass of water in Bolus (g)
W = 112.5;
%Mass of product obtained through experimental data (g)
B = 0;
%Total mass of bolus (g)
A = 150;
%Proportion of Water in bolus
P = W/(W + B + A);
%Density g/mL
rho = 1.09;
%Initial velocity of bolus
c0 = 0;
%Average Velocity of waves (m/h)
avg_velocity = 7.2;
%Find the Viscosity
k_tilde = 0;
%Tau is a constant
tau = 0;
%Time between each contraction(s)
lag_time = 10;
%Total intestine length(m)
distance = 18;
%Initial Location of bolus along the intestine(m) (between 0 and 18) 
x1 = 0;
%Variable for initial time (hours)
t1 = 0;
%Second measurement location of bolus along the intestine(m) (Between 0 and 18)
x2 = 18;
%Variable for second time (need to be modified) (hours) Need to modify this
t2 = 0.5;
%Variable for a single location of the bolus: (m)
x = 0;
%Variable for a single measurement of time (h)
%Total time for bolus to travel from one end of intestine to other end(h)
total_time = 2.5;
%Velocity of Bolus traveling at that time (wasn't able to get the
%derivative equation)
vt = (x2 - x1) / (t2 - t1);
%Calculation of the individual pulse at a location along the intestine
at = (t - x) / c;

%Average effect of pulses: NEED TO FIND THE UNITS FOR THIS SHIT
%Modeling the abart
syms x(t);
Dx = diff(x(t) , t);
abart = tau * (1 - ((1/c) * Dx));










% NOW PLOT RESULTS
