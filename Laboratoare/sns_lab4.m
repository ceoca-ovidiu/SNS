clc; close all; clear all;

den = [1, 1.2, 25, 2, 3]; % min min max max 
num = [3.2, 3.3];

[Re, Im, w] = nyquist(num, den);
plot(Re, Im.*w); grid; shg; % criteriul popov

k = 2.0871; % din tabel

plot(Re, Im.*w, [-1.5, 0], 1/1.34*([-1.5 0] + 1/k), '--'); shg; grid; % acel 1/1.34 e panta ce trebuie sa o calculam imediat

% stabilitate 

[N0, D0] = feedback(num, den, 1);

step(N0, D0); shg; grid;


