clear all
close all
clc
%%


F = [100,100,100,0,0,0]';

count = 1;

Kth1 = 1000000;

E = 70 *10e5; %Young's modulus
G = 25.5*10e5; %shear modulus
d = 10*10e-2;
l= 0.8;
K11 = Kth1;
K22 = k_cylinder(E,G,d,l);
            
Ktheta = [K11, zeros(1,6);
            zeros(6,1), K22];

th = zeros(1,7);
q = zeros(1,5);


% loop
th(1) = 0;
Jq_l1 = Jacobian_q(q,th,'l1');
Jt_l1 = Jacobian_th(q,th,'l1'); 

System_matrix_l1 = [zeros(6,6), Jt_l1, Jq_l1;
                    Jt_l1', -Ktheta, zeros(7,5);
                    Jq_l1', zeros(5,7), zeros(5,5)];

inv_system_matrix_l1 = pinv(System_matrix_l1);
Kc1= inv_system_matrix_l1(1:6,1:6);

th(1) = 0;
Jq_l2 = Jacobian_q(q,th,'l2');
Jt_l2 = Jacobian_th(q,th,'l2');

System_matrix_l2 = [zeros(6,6), Jt_l2, Jq_l2;
                    Jt_l2', -Ktheta, zeros(7,5);
                    Jq_l2', zeros(5,7), zeros(5,5)];

inv_system_matrix_l2 = pinv(System_matrix_l2);

Kc2 = inv_system_matrix_l2(1:6,1:6);

th(1) = 0;
Jq_l3 = Jacobian_q(q,th,'l3');
Jt_l3 = Jacobian_th(q,th,'l3');

System_matrix_l3 = [zeros(6,6), Jt_l3, Jq_l3;
                    Jt_l3', -Ktheta, zeros(7,5);
                    Jq_l3', zeros(5,7), zeros(5,5)];

inv_system_matrix_l3 = pinv(System_matrix_l3);

Kc3 = inv_system_matrix_l3(1:6,1:6);

Kc = Kc1 + Kc2 + Kc3;

delta= pinv(Kc) * F
delta_t(count) = norm(delta(1:3))
%disp(Kc);
% x_position(count)= xc;
% y_position(count) = yc;
% z_position(count) = zc;



% scatter3(x_position,y_position,z_position,50,delta_t)
% cb = colorbar;                                        % create and label the colorbar
% cb.Label.String = 'Deflection [m]';
% xlabel('x')
% ylabel('y')
% zlabel('z')

% figure('name','elastostatic modeling , kinematics')
% graph_bounds(bounding_cube)
% hold on
% graph_manipulator(transx,bases.x,'r-')
% graph_manipulator(transy,bases.y,'g-')
% graph_manipulator(transz,bases.z,'b-')
% grid on