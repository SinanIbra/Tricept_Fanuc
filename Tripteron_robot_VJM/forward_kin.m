function [Rot, trans, T02] = forward_kin(angles,bases ,flag)

q1 = angles(1);
q2 = angles(2);
q3 = angles(3);

if flag =='x'
    base = bases.x;
    T01 = base *Rx(-q1) * Tx(0) * Ty(1) ;
    T12 = Rx(-q2) * Tx(0) * Ty(1) ;
    T02 = T01*T12;
    %in_angles = angles.x;
elseif flag =='y'
    base = bases.y;
    T01 = base* Ry(-q1) * Ty(0) * Tz(1);
    T12 = Ry(-q2) * Ty(0) * Tz(1);
    T02 = T01*T12;
    %in_angles = angles.y;
elseif flag == 'z'
    base = bases.z;
    T01 = base* Rz(-q1) * Tz(0) * Ty(1);
    T12 = Rz(-q2) * Ty(0) * Ty(1);
    T02 = T01*T12;
    %in_angles = angles.z;
end

    



Rot.r01 = T01(1:3,1:3);
Rot.r12 = T12(1:3,1:3);
Rot.r02 = T02(1:3,1:3);

trans.o01 = T01(1:3,4);
trans.o12 = T12(1:3,4);
trans.o02 = T02(1:3,4);

end