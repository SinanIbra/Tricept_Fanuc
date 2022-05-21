function J = jacobian_q3(angles,passive_deflection,bases ,flag)
t = -passive_deflection;
q1 = angles(1);
q2 = angles(2);
q3 = angles(3);

if flag =='x'
    base = bases.x;
    T01 = base* Tx(t(1)) *Rx(-q1) * Tx(0) * Ty(1) ;
    T_sp1 = Rx(t(2))* Ry(t(3)) * Rz(t(4)) * Tx(t(5)) * Ty(t(6)) * Tz(t(7));
    T12 = Rx(-q2) * Tx(0) * Ty(1) ;
    T_sp2 = Rx(t(8))* Ry(t(9)) * Rz(t(10)) * Tx(t(11)) * Ty(t(12)) * Tz(t(13));
    T23 = Rdx(q3);
    T03 = T01* T_sp1*T12*T_sp2*T23;
    %in_angles = angles.x;
elseif flag =='y'
    base = bases.y;
    T01 = base* Ty(t(1))* Ry(-q1) * Ty(0) * Tz(1);
    T_sp1 = Rx(t(2))* Ry(t(3)) * Rz(t(4)) * Tx(t(5)) * Ty(t(6)) * Tz(t(7));
    T12 = Ry(-q2) * Ty(0) * Tz(1);
    T_sp2 = Rx(t(8))* Ry(t(9)) * Rz(t(10)) * Tx(t(11)) * Ty(t(12)) * Tz(t(13));
    T23 = Rdy(q3);
    T03 = T01*T_sp1*T12*T_sp2*T23;
    
    %in_angles = angles.y;
elseif flag == 'z' 
    base = bases.z;
    T01 = base*Tz(t(1))* Rz(-q1) * Tz(0) * Ty(1);
    T_sp1 = Rx(t(2))* Ry(t(3)) * Rz(t(4)) * Tx(t(5)) * Ty(t(6)) * Tz(t(7));
    T12 = Rz(-q2) * Ty(0) * Ty(1);
    T_sp2 = Rx(t(8))* Ry(t(9)) * Rz(t(10)) * Tx(t(11)) * Ty(t(12)) * Tz(t(13));
    T23 = Rdz(q3);
    T03 = T01*T_sp1*T12*T_sp2*T23;
    %in_angles = angles.z;
end

J = [T03(1,4), T03(2,4), T03(3,4), T03(3,2), T03(1,3), T03(2,1)]';


end