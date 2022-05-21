function K = k_cylinder(E,G,d,L)

S = pi*d^2/4;
Iy = pi*d^4/64;
Iz = pi*d^4/64;
J = Iy + Iz;

K = [E*S/L ,        0,               0,          0,          0,          0;
        0,      12*E*Iz/L^3,         0,          0,          0,      6*E*Iy/L^2;
        0,          0,           12*E*Iy/L^3,    0,    -6*E*Iy/L^2,      0;
        0,          0,               0,        G*J/L,        0,          0;
        0,          0,           -6*E*Iy/L^2,    0        4*E*Iy/L,      0;
        0,       6*E*Iy/L^2,         0,          0           0,        4*E*Iz/L];


end