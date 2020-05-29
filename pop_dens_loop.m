% This function sets up the loop population density function
 
% Uniform density will be simulated here:
N_total = 1e6; % total number of nephrons in 1 kidney

rho = N_total/(L_max)*ones(N_xlocations,1);
