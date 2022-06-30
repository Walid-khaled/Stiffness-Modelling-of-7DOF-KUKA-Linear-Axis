function K = K_link(E, G, L, d)
% The stiffness matrix K_theta for cylinder link
S = pi*d^2/4;
Iy = pi*d^4/64;
Iz = pi*d^4/64;
J = Iy + Iz;

K = [E*S/L      0                  0                 0           0                 0;
    0           12*E*Iz/L^3        0                 0           0                 -6*E*Iz/L^2;
    0           0                  12*E*Iy/L^3       0           6*E*Iy/L^2        0;
    0           0                  0                 G*J/L       0                 0;
    0           0                  6*E*Iy/L^2        0           4*E*Iy/L          0;
    0           -6*E*Iz/L^2        0                 0           0                 4*E*Iz/L];

end