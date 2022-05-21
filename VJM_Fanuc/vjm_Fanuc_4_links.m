clear all 
clc 
close all
%%%%%%%%%%%%%%%%%%%%%
F = [0,0,100,0,0,0]';

count = 1;

Kth1 = 1000000;

E = 70 *10e11; %Young's modulus
G = 25.5*10e11; %shear modulus
d = 10*10e-2;
l= 0.8;
K11 = Kth1;
K22 = k_cylinder(E,G,d,l);
            
Ktheta = [K11, zeros(1,6);
            zeros(6,1), K22];