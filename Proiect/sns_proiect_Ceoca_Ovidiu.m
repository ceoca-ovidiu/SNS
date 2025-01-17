 %% 4 TIME DELAY AND LAG
clc; close all; clear all;
T = 2;  % initial e 0.2 -> 2
num = [1];
den = [T 1];
taum = 1; % initial e 1 -> 0.3
b = 0.7;

Tosc = 4.610;
Aosc = 0.5400/2;

Ku = (4*b)/(pi*Aosc); 

% Z-N
Kp = 0.45*Ku;
Ti = 0.8*Tosc;

% DISCRETIZARE

% h1=0.1;
h1 = T/10;
% beta_p1=1;
Tt1 = 0.5;
beta_i1=Kp*h1/Ti;
beta_t1s=0;
beta_t1=h1/Tt1;

% nyquist(tf(num,den,'iodelay',taum));
% Re = 0.261;
% w = 2*pi/Tosc;
% AoscN = (4*b*Re)/pi
%% 4 TIME DELAY AND LAG
% clc; close all; clear all;
% T = 0.2;
% num = [1];
% den = [T 1];
% taum = 1;
% b = 1.1;
% 
% Tosc = 2.626;
% Aosc = 2.185/2;
% 
% Ku = (4*b)/(pi*Aosc); 
% 
% Kp = 0.6*Ku;
% Ti = 0.5*Tosc;
% Td = 0.12*Tosc;
% alfa = 6;
% gamma = 50;
% Td = (tan(gamma) + sqrt(4/alfa + tan(gamma)^2))/(2*0.5);
% Kp = Ku*cos(gamma);
% Ti = alfa*Td;
%% 9 OSCILLATORY SYSTEM
clc; close all; clear all;
zeta = 0.1; % 0.1 era initial
w0 = 1; % 1 era initial
num = [w0^2];
den = conv([1 1],[1 2*zeta*w0 w0^2]);

Tosc = 5.750; % pentru zeta=0.1 w0 = 1
Aosc = 3.989/2; % pentru zeta=0.1 w0 = 1

b = 0.7;
Ku = (4*b)/(pi*Aosc);

Kp = 0.45*Ku*1.5;
Ti = 0.8*Tosc;
sat_value = 2

% DISCRETIZARE
% T = 1; 1/(zeta*W0)=10 -> Te < T/2=0.5
h1=0.1;
% beta_p1=1;
Tt1=0.5;
beta_i1=Kp*h1/Ti;
beta_t1s=0;
beta_t1=h1/Tt1;

% nyquist(tf(num,den));
% w = 2*pi/Tosc;
% Re = 
% AoscN = (4*b*Re)/pi
% T = 2*pi/w

%% 4 TIME DELAY AND LAG CU INTEGRATOR
clc; close all; clear all;
T = 2; % initial e 0.2
num = [1];
den = [T 1];
taum = 1; % initial e 1
b = 0.2;

Tosc = 10;
Aosc = 0.5083/2;

Ku = (4*b)/(pi*Aosc);

Kp = 0.45*Ku;
Ti = 0.8*Tosc; 

% DISCRETIZARE

h1=T/10;
beta_t1s=0;
Tt1=0.5;