clear all 
clc 
close all
%% 
%number of experiments
iterations = 10;

%defining parameters 
%robot link shifts 
a = 2;
b = 1;
%storing them in transmission structure 
transmission.a = a;
transmission.b = b;

%setting joints limits
ql = [0, 0];
q2 = [0, 0];
q3 = [0, 0];
q4 = [0, 0];

qu = [2*pi,1];

%setting force limits 
fl = -1000;
fu = 1000;

% theta of active joints (VJM notations)
deflections = [0 0 0];

%Joints stiffnes 
K = 1e6*diag([1,2,0.5]);

info_sum = 0;
AT_sum = 0;

for i = 1:iterations 

%generating random force and random position 
% pose generated with bounding cube limits from -4,4
%force is generated between bounds assigned above 
th1 = ql(1) + (qu(1) -ql(1)).*rand(1);
th2 = ql(1) + (qu(1) -ql(1)).*rand(1);
th3 = ql(1) + (qu(1) -ql(1)).*rand(1);
th4 = ql(1) + (qu(1) -ql(1)).*rand(1);
d1d2 = ql(2) + (qu(2) - ql(2)).*rand(1,2);
%pose = -4 + (4+4).*rand(1,3)
F_rand = fl + (fu-fl).* rand(1,3);

%appending values to DH parameter
%qs = inverse_cyl(pose, transmission);
transmission.t01 = [th1, 0 , 0, 0];
transmission.t12 = [-pi/2, d1d2(1)+a, 0, -pi/2];
transmission.t23 = [0 ,d1d2(2)+b, 0, 0];

%assembling wrensh vector
W = [F_rand 0 0 0]';

%appending forces and poses in arrays
forces(:,i) = W;
poses(:,i) = [th1 d1d2]';

%calculating jacobians 
Jth1 = Jth(transmission, deflections,'J1');
Jth2 = Jth(transmission, deflections,'J2');
Jth3 = Jth(transmission, deflections,'J3');

Jth_t = [Jth1 Jth2 Jth3];

%calculating detla_t
dt = Jth_t * inv(K) * Jth_t' * W + normrnd(0,1e-5); %adding random noise to the calculated deflection

%appending delta_t in array
DTs(:,i) = dt;

%calculating matrix A 
a1 = Jth1 * Jth1' * W;
a2 = Jth2 * Jth2' * W;
a3 = Jth3 * Jth3' * W;
A = [a1, a2, a3];

info_mat = A' * A;
AT = A'* dt;
info_sum = info_sum+ info_mat;
AT_sum = AT_sum + AT;
end

k_hat =  inv(info_sum)*(AT_sum);

stiffness= diag(1./k_hat);
%drawing circle
t = linspace(0,2*pi);
x = cos(t);
y = sin(t);
z = (0*t)+2.5;
pnts = [x;y;z];


%assembling wrensh vector
W = [500 500 -500 0 0 0]';
for i = 1:length(t)
    pose = [x(i) y(i) z(i)]';
    qs(:,i) = inverse_cyl(pose,transmission); 
    
    transmission.t01 = [qs(1,i), 0 , 0, 0];
    transmission.t12 = [-pi/2,qs(2,i)+a, 0, -pi/2];
    transmission.t23 = [0 ,qs(3,i)+b, 0, 0];

    %calculating jacobians 
    Jth1 = Jth(transmission, deflections,'J1');
    Jth2 = Jth(transmission, deflections,'J2');
    Jth3 = Jth(transmission, deflections,'J3');

    Jth_t = [Jth1 Jth2 Jth3];

    %calculating detla_t 
    
    dt_uncalib = Jth_t * inv(stiffness) * Jth_t' * W + normrnd(0,1e-5);
    
    uncalib_pose = pose+dt_uncalib(1:3);
    
    %appending delta_t in array
    
    DTs_uncal(:,i) = dt_uncalib;
    
    
    uncalib_poses(:,i) = uncalib_pose;
    
end

%compensation 
difference = [x;y;z]' - uncalib_poses';
calibrated = [x;y;z] + difference';

figure('name','deflection')
plot3(x,y,z,'--r','LineWidth',2)

grid on
hold on
scatter3(uncalib_poses(1,:),uncalib_poses(2,:),uncalib_poses(3,:), 'k')

scatter3(calibrated(1,:),calibrated(2,:),calibrated(3,:), 'b')
xlabel('x')
ylabel('y')
zlabel('z')
legend('target path','real path','compensated path')
