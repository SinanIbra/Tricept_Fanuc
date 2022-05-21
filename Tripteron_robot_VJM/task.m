clear all
close all
clc
%%


F = [100,100,100,0,0,0]';

count = 1;

null_133 = zeros(13,3);
null_33 = zeros(3,3);
null_313 = zeros(3,13);
null_36 = zeros(3,6);
null_16 = zeros(1,6);
null_66 = zeros(6,6);

Kth1 = 1000000;
E = 70 *10e9; %Young's modulus
G = 25.5*10e9; %shear modulus
d = 10*10e-3;


tx1 = 0; 
tx2 = 0; tx3 = 0; tx4 = 0; tx5 = 0; tx6 = 0; tx7 = 0;
tx8 = 0; tx9 = 0; tx10 = 0; tx11 = 0; tx12 = 0; tx13 = 0;

thetax = [tx1 tx2 tx3 tx4 tx5 tx6 tx7 ... 
    tx8 tx9 tx10 tx11 tx12 tx13];


ty1 = 0; 
ty2 = 0; ty3 = 0; ty4 = 0; ty5 = 0; ty6 = 0; ty7 = 0;
ty8 = 0; ty9 = 0; ty10 = 0; ty11 = 0; ty12 = 0; ty13 = 0;

thetay = [ty1 ty2 ty3 ty4 ty5 ty6 ty7 ...
    ty8 ty9 ty10 ty11 ty12 ty13];

tz1 = 0; 
tz2 = 0; tz3 = 0; tz4 = 0; tz5 = 0; tz6 = 0; tz7 = 0;
tz8 = 0; tz9 = 0; tz10 = 0; tz11 = 0; tz12 = 0; tz13 = 0;

thetaz = [tz1 tz2 tz3 tz4 tz5 tz6 tz7 ...
    tz8 tz9 tz10 tz11 tz12 tz13];
            
for xc = 0.5:0.1:1.3
    for yc = 0.5:0.1:1.3
        for zc = 0.5:0.1:1.3
            pose = [xc,yc,zc]
           
            bounding_cube = 2;
            position.x = pose(1);
            position.y = pose(2);
            position.z = pose(3);
            leg_param = 1;
            L = leg_param;
            
            [q1,q2,q3 ]= Inverse_kin_trip(position,leg_param,bounding_cube,'x');
            [q4,q5,q6 ]= Inverse_kin_trip(position,leg_param,bounding_cube,'y');
            [q7,q8,q9 ]= Inverse_kin_trip(position,leg_param,bounding_cube,'z');

            bases = transform_to_base(position,bounding_cube);

            [rotx, transx, Tx02]= forward_kin([q1,q2,q3],bases,'x');
            [roty, transy, Ty02]= forward_kin([q4,q5,q6],bases,'y');
            [rotz, transz, Tz02]= forward_kin([q7,q8,q9],bases,'z');


            %%
            %VJM 


            qx = [q1 q2 q3]';
            qy = [q4 q5 q6]';
            qz = [q7 q8 q9]';


            % forward kinematics considering virtual joints
            [etransx, ETx] = elastic_fk(qx, thetax, bases,'x');
            [etransy, ETy] = elastic_fk(qy, thetay, bases,'y');
            [etransz, ETz] = elastic_fk(qz, thetaz, bases,'z');

            %jacobians for x leg,, passive joints
            Jxq1 = jacobian_q1(qx,thetax,bases ,'x');
            Jxq2 = jacobian_q2(qx,thetax,bases ,'x');
            Jxq3 = jacobian_q3(qx,thetax,bases ,'x');
            Jxq = [Jxq1, Jxq2, Jxq3];

            %Jacobians for leg x ,, virtual joints 
            Jtx = jacobian_t(qx,thetax,bases ,'x');

            %jacobians for y leg,, passive joints
            Jyq1 = jacobian_q1(qy,thetay,bases ,'y');
            Jyq2 = jacobian_q2(qy,thetay,bases ,'y');
            Jyq3 = jacobian_q3(qy,thetay,bases ,'y');
            Jyq = [Jyq1, Jyq2, Jyq3];

            %Jacobians for leg y ,, virtual joints 
            Jty = jacobian_t(qy,thetay,bases ,'y');

            %jacobians for z leg,, passive joints
            Jzq1 = jacobian_q1(qz,thetaz,bases ,'z');
            Jzq2 = jacobian_q2(qz,thetaz,bases ,'z');
            Jzq3 = jacobian_q3(qz,thetaz,bases ,'z');
            Jzq = [Jzq1, Jzq2, Jzq3];

            %Jacobians for leg x ,, virtual joints 
            Jtz = jacobian_t(qz,thetaz,bases ,'z');

            %constructing K_theta
            K11 = Kth1;
            K22 = k_cylinder(E,G,d,leg_param);
            K33 = k_cylinder(E,G,d,leg_param);
            Ktheta = [K11, null_16, null_16;
                    null_16', K22, null_66;
                    null_16', null_66, K33]; 

            %constructing full matrix for xleg
            System_matrix_x = [null_66, Jtx, Jxq;
                Jtx', -Ktheta, null_133;
                Jxq', null_313, null_33];

            inv_system_matrix_x = inv(System_matrix_x);

            System_matrix_y = [null_66, Jty, Jyq;
                Jty', -Ktheta, null_133;
                Jyq', null_313, null_33];

            inv_system_matrix_y = inv(System_matrix_y);

            System_matrix_z = [null_66, Jtz, Jzq;
                Jtz', -Ktheta, null_133;
                Jzq', null_313, null_33];

            inv_system_matrix_z = inv(System_matrix_z);

            %Extracting Kc
            Kxc = inv_system_matrix_x(1:6,1:6);
            Kyc = inv_system_matrix_y(1:6,1:6);
            Kzc = inv_system_matrix_z(1:6,1:6);

            Kc = Kxc+Kyc+Kzc

            
            delta= inv(Kc)* F
            delta_t(count) = norm(delta(1:3));
            x_position(count)= xc;
            y_position(count) = yc;
            z_position(count) = zc;
            
            count = count+1
        end
    end
end


scatter3(x_position,y_position,z_position,50,delta_t)
cb = colorbar;                                     % create and label the colorbar
cb.Label.String = 'Deflection [m]';
xlabel('x')
ylabel('y')
zlabel('z')



figure('name','elastostatic modeling , kinematics')
graph_bounds(bounding_cube)
hold on
graph_manipulator(transx,bases.x,'r-')
graph_manipulator(transy,bases.y,'g-')
graph_manipulator(transz,bases.z,'b-')
grid on

%% MSA 