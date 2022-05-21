function J = jacobian_t(angles,passive_deflection,bases ,flag)
t = -passive_deflection;
q1 = angles(1);
q2 = angles(2);
q3 = angles(3);

if flag =='x'
    base = bases.x;
    % for t1
    T01 = base* Tdx(t(1)) *Rx(-q1) * Tx(0) * Ty(1) ;
    T_sp1 = Rx(t(2))* Ry(t(3)) * Rz(t(4)) * Tx(t(5)) * Ty(t(6)) * Tz(t(7));
    T12 = Rx(-q2) * Tx(0) * Ty(1) ;
    T_sp2 = Rx(t(8))* Ry(t(9)) * Rz(t(10)) * Tx(t(11)) * Ty(t(12)) * Tz(t(13));
    T23 = Rx(q3);
    T03 = T01* T_sp1*T12*T_sp2*T23;
    
    J1 = [T03(1,4), T03(2,4), T03(3,4), T03(3,2), T03(1,3), T03(2,1)]';
    
    %for t2 
    T01 = base* Tx(t(1)) *Rx(-q1) * Tx(0) * Ty(1) ;
    T_sp1 = Rdx(t(2))* Ry(t(3)) * Rz(t(4)) * Tx(t(5)) * Ty(t(6)) * Tz(t(7));
    T12 = Rx(-q2) * Tx(0) * Ty(1) ;
    T_sp2 = Rx(t(8))* Ry(t(9)) * Rz(t(10)) * Tx(t(11)) * Ty(t(12)) * Tz(t(13));
    T23 = Rx(q3);
    T03 = T01* T_sp1*T12*T_sp2*T23;
    
    J2 = [T03(1,4), T03(2,4), T03(3,4), T03(3,2), T03(1,3), T03(2,1)]';
    
    %for t3
    T01 = base* Tx(t(1)) *Rx(-q1) * Tx(0) * Ty(1) ;
    T_sp1 = Rx(t(2))* Rdy(t(3)) * Rz(t(4)) * Tx(t(5)) * Ty(t(6)) * Tz(t(7));
    T12 = Rx(-q2) * Tx(0) * Ty(1) ;
    T_sp2 = Rx(t(8))* Ry(t(9)) * Rz(t(10)) * Tx(t(11)) * Ty(t(12)) * Tz(t(13));
    T23 = Rx(q3);
    T03 = T01* T_sp1*T12*T_sp2*T23;
    
    J3 = [T03(1,4), T03(2,4), T03(3,4), T03(3,2), T03(1,3), T03(2,1)]';
    
    %for t4
    T01 = base* Tx(t(1)) *Rx(-q1) * Tx(0) * Ty(1) ;
    T_sp1 = Rx(t(2))* Ry(t(3)) * Rdz(t(4)) * Tx(t(5)) * Ty(t(6)) * Tz(t(7));
    T12 = Rx(-q2) * Tx(0) * Ty(1) ;
    T_sp2 = Rx(t(8))* Ry(t(9)) * Rz(t(10)) * Tx(t(11)) * Ty(t(12)) * Tz(t(13));
    T23 = Rx(q3);
    T03 = T01* T_sp1*T12*T_sp2*T23;
    
    J4 = [T03(1,4), T03(2,4), T03(3,4), T03(3,2), T03(1,3), T03(2,1)]';
    
    %for t5
    T01 = base* Tx(t(1)) *Rx(-q1) * Tx(0) * Ty(1) ;
    T_sp1 = Rx(t(2))* Ry(t(3)) * Rz(t(4)) * Tdx(t(5)) * Ty(t(6)) * Tz(t(7));
    T12 = Rx(-q2) * Tx(0) * Ty(1) ;
    T_sp2 = Rx(t(8))* Ry(t(9)) * Rz(t(10)) * Tx(t(11)) * Ty(t(12)) * Tz(t(13));
    T23 = Rx(q3);
    T03 = T01* T_sp1*T12*T_sp2*T23;
    
    J5 = [T03(1,4), T03(2,4), T03(3,4), T03(3,2), T03(1,3), T03(2,1)]';
    
    %for t6 
    T01 = base* Tx(t(1)) *Rx(-q1) * Tx(0) * Ty(1) ;
    T_sp1 = Rx(t(2))* Ry(t(3)) * Rz(t(4)) * Tx(t(5)) * Tdy(t(6)) * Tz(t(7));
    T12 = Rx(-q2) * Tx(0) * Ty(1) ;
    T_sp2 = Rx(t(8))* Ry(t(9)) * Rz(t(10)) * Tx(t(11)) * Ty(t(12)) * Tz(t(13));
    T23 = Rx(q3);
    T03 = T01* T_sp1*T12*T_sp2*T23;
    
    J6 = [T03(1,4), T03(2,4), T03(3,4), T03(3,2), T03(1,3), T03(2,1)]';
    
    %for t7
    T01 = base* Tx(t(1)) *Rx(-q1) * Tx(0) * Ty(1) ;
    T_sp1 = Rx(t(2))* Ry(t(3)) * Rz(t(4)) * Tx(t(5)) * Ty(t(6)) * Tdz(t(7));
    T12 = Rx(-q2) * Tx(0) * Ty(1) ;
    T_sp2 = Rx(t(8))* Ry(t(9)) * Rz(t(10)) * Tx(t(11)) * Ty(t(12)) * Tz(t(13));
    T23 = Rx(q3);
    T03 = T01* T_sp1*T12*T_sp2*T23;
    
    J7 = [T03(1,4), T03(2,4), T03(3,4), T03(3,2), T03(1,3), T03(2,1)]';
    
    %for t8
    T01 = base* Tx(t(1)) *Rx(-q1) * Tx(0) * Ty(1) ;
    T_sp1 = Rx(t(2))* Ry(t(3)) * Rz(t(4)) * Tx(t(5)) * Ty(t(6)) * Tz(t(7));
    T12 = Rx(-q2) * Tx(0) * Ty(1) ;
    T_sp2 = Rdx(t(8))* Ry(t(9)) * Rz(t(10)) * Tx(t(11)) * Ty(t(12)) * Tz(t(13));
    T23 = Rx(q3);
    T03 = T01* T_sp1*T12*T_sp2*T23;
    
    J8 = [T03(1,4), T03(2,4), T03(3,4), T03(3,2), T03(1,3), T03(2,1)]';
    
    %for t9 
    T01 = base* Tx(t(1)) *Rx(-q1) * Tx(0) * Ty(1) ;
    T_sp1 = Rx(t(2))* Ry(t(3)) * Rz(t(4)) * Tx(t(5)) * Ty(t(6)) * Tz(t(7));
    T12 = Rx(-q2) * Tx(0) * Ty(1) ;
    T_sp2 = Rx(t(8))* Rdy(t(9)) * Rz(t(10)) * Tx(t(11)) * Ty(t(12)) * Tz(t(13));
    T23 = Rx(q3);
    T03 = T01* T_sp1*T12*T_sp2*T23;
    
    J9 = [T03(1,4), T03(2,4), T03(3,4), T03(3,2), T03(1,3), T03(2,1)]';
    
    %for t10
    T01 = base* Tx(t(1)) *Rx(-q1) * Tx(0) * Ty(1) ;
    T_sp1 = Rx(t(2))* Ry(t(3)) * Rz(t(4)) * Tx(t(5)) * Ty(t(6)) * Tz(t(7));
    T12 = Rx(-q2) * Tx(0) * Ty(1) ;
    T_sp2 = Rx(t(8))* Ry(t(9)) * Rdz(t(10)) * Tx(t(11)) * Ty(t(12)) * Tz(t(13));
    T23 = Rx(q3);
    T03 = T01* T_sp1*T12*T_sp2*T23;
    
    J10 = [T03(1,4), T03(2,4), T03(3,4), T03(3,2), T03(1,3), T03(2,1)]';
    
    %for t11 
    T01 = base* Tx(t(1)) *Rx(-q1) * Tx(0) * Ty(1) ;
    T_sp1 = Rx(t(2))* Ry(t(3)) * Rz(t(4)) * Tx(t(5)) * Ty(t(6)) * Tz(t(7));
    T12 = Rx(-q2) * Tx(0) * Ty(1) ;
    T_sp2 = Rx(t(8))* Ry(t(9)) * Rz(t(10)) * Tdx(t(11)) * Ty(t(12)) * Tz(t(13));
    T23 = Rx(q3);
    T03 = T01* T_sp1*T12*T_sp2*T23;
    
    J11 = [T03(1,4), T03(2,4), T03(3,4), T03(3,2), T03(1,3), T03(2,1)]';
    
    %for t12
    T01 = base* Tx(t(1)) *Rx(-q1) * Tx(0) * Ty(1) ;
    T_sp1 = Rx(t(2))* Ry(t(3)) * Rz(t(4)) * Tx(t(5)) * Ty(t(6)) * Tz(t(7));
    T12 = Rx(-q2) * Tx(0) * Ty(1) ;
    T_sp2 = Rx(t(8))* Ry(t(9)) * Rz(t(10)) * Tx(t(11)) * Tdy(t(12)) * Tz(t(13));
    T23 = Rx(q3);
    T03 = T01* T_sp1*T12*T_sp2*T23;
    
    J12 = [T03(1,4), T03(2,4), T03(3,4), T03(3,2), T03(1,3), T03(2,1)]';
    
    %for t13
    T01 = base* Tx(t(1)) *Rx(-q1) * Tx(0) * Ty(1) ;
    T_sp1 = Rx(t(2))* Ry(t(3)) * Rz(t(4)) * Tx(t(5)) * Ty(t(6)) * Tz(t(7));
    T12 = Rx(-q2) * Tx(0) * Ty(1) ;
    T_sp2 = Rx(t(8))* Ry(t(9)) * Rz(t(10)) * Tx(t(11)) * Ty(t(12)) * Tdz(t(13));
    T23 = Rx(q3);
    T03 = T01* T_sp1*T12*T_sp2*T23;
    
    J13 = [T03(1,4), T03(2,4), T03(3,4), T03(3,2), T03(1,3), T03(2,1)]';
    
    
elseif flag =='y'
    base = bases.y;
    
    %for t1 
    T01 = base* Tdy(t(1))* Ry(-q1) * Ty(0) * Tz(1);
    T_sp1 = Rx(t(2))* Ry(t(3)) * Rz(t(4)) * Tx(t(5)) * Ty(t(6)) * Tz(t(7));
    T12 = Ry(-q2) * Ty(0) * Tz(1);
    T_sp2 = Rx(t(8))* Ry(t(9)) * Rz(t(10)) * Tx(t(11)) * Ty(t(12)) * Tz(t(13));
    T23 = Ry(q3);
    T03 = T01*T_sp1*T12*T_sp2*T23;
    
    J1 = [T03(1,4), T03(2,4), T03(3,4), T03(3,2), T03(1,3), T03(2,1)]';
    
    %for t2
    T01 = base* Ty(t(1))* Ry(-q1) * Ty(0) * Tz(1);
    T_sp1 = Rdx(t(2))* Ry(t(3)) * Rz(t(4)) * Tx(t(5)) * Ty(t(6)) * Tz(t(7));
    T12 = Ry(-q2) * Ty(0) * Tz(1);
    T_sp2 = Rx(t(8))* Ry(t(9)) * Rz(t(10)) * Tx(t(11)) * Ty(t(12)) * Tz(t(13));
    T23 = Ry(q3);
    T03 = T01*T_sp1*T12*T_sp2*T23;
    
    J2 = [T03(1,4), T03(2,4), T03(3,4), T03(3,2), T03(1,3), T03(2,1)]';
    
    %for t3
    T01 = base* Ty(t(1))* Ry(-q1) * Ty(0) * Tz(1);
    T_sp1 = Rx(t(2))* Rdy(t(3)) * Rz(t(4)) * Tx(t(5)) * Ty(t(6)) * Tz(t(7));
    T12 = Ry(-q2) * Ty(0) * Tz(1);
    T_sp2 = Rx(t(8))* Ry(t(9)) * Rz(t(10)) * Tx(t(11)) * Ty(t(12)) * Tz(t(13));
    T23 = Ry(q3);
    T03 = T01*T_sp1*T12*T_sp2*T23;
    
    J3 = [T03(1,4), T03(2,4), T03(3,4), T03(3,2), T03(1,3), T03(2,1)]';
    
    %for t4
    T01 = base* Ty(t(1))* Ry(-q1) * Ty(0) * Tz(1);
    T_sp1 = Rx(t(2))* Ry(t(3)) * Rdz(t(4)) * Tx(t(5)) * Ty(t(6)) * Tz(t(7));
    T12 = Ry(-q2) * Ty(0) * Tz(1);
    T_sp2 = Rx(t(8))* Ry(t(9)) * Rz(t(10)) * Tx(t(11)) * Ty(t(12)) * Tz(t(13));
    T23 = Ry(q3);
    T03 = T01*T_sp1*T12*T_sp2*T23;
    
    J4 = [T03(1,4), T03(2,4), T03(3,4), T03(3,2), T03(1,3), T03(2,1)]';
    
    %for t5
    T01 = base* Ty(t(1))* Ry(-q1) * Ty(0) * Tz(1);
    T_sp1 = Rx(t(2))* Ry(t(3)) * Rz(t(4)) * Tdx(t(5)) * Ty(t(6)) * Tz(t(7));
    T12 = Ry(-q2) * Ty(0) * Tz(1);
    T_sp2 = Rx(t(8))* Ry(t(9)) * Rz(t(10)) * Tx(t(11)) * Ty(t(12)) * Tz(t(13));
    T23 = Ry(q3);
    T03 = T01*T_sp1*T12*T_sp2*T23;
    
    J5 = [T03(1,4), T03(2,4), T03(3,4), T03(3,2), T03(1,3), T03(2,1)]';
    
    %for t6
    T01 = base* Ty(t(1))* Ry(-q1) * Ty(0) * Tz(1);
    T_sp1 = Rx(t(2))* Ry(t(3)) * Rz(t(4)) * Tx(t(5)) * Tdy(t(6)) * Tz(t(7));
    T12 = Ry(-q2) * Ty(0) * Tz(1);
    T_sp2 = Rx(t(8))* Ry(t(9)) * Rz(t(10)) * Tx(t(11)) * Ty(t(12)) * Tz(t(13));
    T23 = Ry(q3);
    T03 = T01*T_sp1*T12*T_sp2*T23;
    
    J6 = [T03(1,4), T03(2,4), T03(3,4), T03(3,2), T03(1,3), T03(2,1)]';
    
    %for t7 
    T01 = base* Ty(t(1))* Ry(-q1) * Ty(0) * Tz(1);
    T_sp1 = Rx(t(2))* Ry(t(3)) * Rz(t(4)) * Tx(t(5)) * Ty(t(6)) * Tdz(t(7));
    T12 = Ry(-q2) * Ty(0) * Tz(1);
    T_sp2 = Rx(t(8))* Ry(t(9)) * Rz(t(10)) * Tx(t(11)) * Ty(t(12)) * Tz(t(13));
    T23 = Ry(q3);
    T03 = T01*T_sp1*T12*T_sp2*T23;
    
    J7 = [T03(1,4), T03(2,4), T03(3,4), T03(3,2), T03(1,3), T03(2,1)]';
    
    %for t8 
    T01 = base* Ty(t(1))* Ry(-q1) * Ty(0) * Tz(1);
    T_sp1 = Rx(t(2))* Ry(t(3)) * Rz(t(4)) * Tx(t(5)) * Ty(t(6)) * Tz(t(7));
    T12 = Ry(-q2) * Ty(0) * Tz(1);
    T_sp2 = Rdx(t(8))* Ry(t(9)) * Rz(t(10)) * Tx(t(11)) * Ty(t(12)) * Tz(t(13));
    T23 = Ry(q3);
    T03 = T01*T_sp1*T12*T_sp2*T23;
    
    J8 = [T03(1,4), T03(2,4), T03(3,4), T03(3,2), T03(1,3), T03(2,1)]';
    
    %for t9
    T01 = base* Ty(t(1))* Ry(-q1) * Ty(0) * Tz(1);
    T_sp1 = Rx(t(2))* Ry(t(3)) * Rz(t(4)) * Tx(t(5)) * Ty(t(6)) * Tz(t(7));
    T12 = Ry(-q2) * Ty(0) * Tz(1);
    T_sp2 = Rx(t(8))* Rdy(t(9)) * Rz(t(10)) * Tx(t(11)) * Ty(t(12)) * Tz(t(13));
    T23 = Ry(q3);
    T03 = T01*T_sp1*T12*T_sp2*T23;
    
    J9 = [T03(1,4), T03(2,4), T03(3,4), T03(3,2), T03(1,3), T03(2,1)]';
    
    %for t10
    T01 = base* Ty(t(1))* Ry(-q1) * Ty(0) * Tz(1);
    T_sp1 = Rx(t(2))* Ry(t(3)) * Rz(t(4)) * Tx(t(5)) * Ty(t(6)) * Tz(t(7));
    T12 = Ry(-q2) * Ty(0) * Tz(1);
    T_sp2 = Rx(t(8))* Ry(t(9)) * Rdz(t(10)) * Tx(t(11)) * Ty(t(12)) * Tz(t(13));
    T23 = Ry(q3);
    T03 = T01*T_sp1*T12*T_sp2*T23;
    
    J10 = [T03(1,4), T03(2,4), T03(3,4), T03(3,2), T03(1,3), T03(2,1)]';
    
    %for t11
    T01 = base* Ty(t(1))* Ry(-q1) * Ty(0) * Tz(1);
    T_sp1 = Rx(t(2))* Ry(t(3)) * Rz(t(4)) * Tx(t(5)) * Ty(t(6)) * Tz(t(7));
    T12 = Ry(-q2) * Ty(0) * Tz(1);
    T_sp2 = Rx(t(8))* Ry(t(9)) * Rz(t(10)) * Tdx(t(11)) * Ty(t(12)) * Tz(t(13));
    T23 = Ry(q3);
    T03 = T01*T_sp1*T12*T_sp2*T23;
    
    J11 = [T03(1,4), T03(2,4), T03(3,4), T03(3,2), T03(1,3), T03(2,1)]';
    
    %for t12
    T01 = base* Ty(t(1))* Ry(-q1) * Ty(0) * Tz(1);
    T_sp1 = Rx(t(2))* Ry(t(3)) * Rz(t(4)) * Tx(t(5)) * Ty(t(6)) * Tz(t(7));
    T12 = Ry(-q2) * Ty(0) * Tz(1);
    T_sp2 = Rx(t(8))* Ry(t(9)) * Rz(t(10)) * Tx(t(11)) * Tdy(t(12)) * Tz(t(13));
    T23 = Ry(q3);
    T03 = T01*T_sp1*T12*T_sp2*T23;
    
    J12 = [T03(1,4), T03(2,4), T03(3,4), T03(3,2), T03(1,3), T03(2,1)]';
    
    %for t13
    T01 = base* Ty(t(1))* Ry(-q1) * Ty(0) * Tz(1);
    T_sp1 = Rx(t(2))* Ry(t(3)) * Rz(t(4)) * Tx(t(5)) * Ty(t(6)) * Tz(t(7));
    T12 = Ry(-q2) * Ty(0) * Tz(1);
    T_sp2 = Rx(t(8))* Ry(t(9)) * Rz(t(10)) * Tx(t(11)) * Ty(t(12)) * Tdz(t(13));
    T23 = Ry(q3);
    T03 = T01*T_sp1*T12*T_sp2*T23;
    
    J13 = [T03(1,4), T03(2,4), T03(3,4), T03(3,2), T03(1,3), T03(2,1)]';
    
     
elseif flag == 'z' 
    base = bases.z;
    %for t1
    T01 = base*Tdz(t(1))* Rz(-q1) * Tz(0) * Ty(1);
    T_sp1 = Rx(t(2))* Ry(t(3)) * Rz(t(4)) * Tx(t(5)) * Ty(t(6)) * Tz(t(7));
    T12 = Rz(-q2) * Ty(0) * Ty(1);
    T_sp2 = Rx(t(8))* Ry(t(9)) * Rz(t(10)) * Tx(t(11)) * Ty(t(12)) * Tz(t(13));
    T23 = Rz(q3);
    T03 = T01*T_sp1*T12*T_sp2*T23;
    
    J1 = [T03(1,4), T03(2,4), T03(3,4), T03(3,2), T03(1,3), T03(2,1)]';
   
    
    %for t2
    T01 = base*Tz(t(1))* Rz(-q1) * Tz(0) * Ty(1);
    T_sp1 = Rdx(t(2))* Ry(t(3)) * Rz(t(4)) * Tx(t(5)) * Ty(t(6)) * Tz(t(7));
    T12 = Rz(-q2) * Ty(0) * Ty(1);
    T_sp2 = Rx(t(8))* Ry(t(9)) * Rz(t(10)) * Tx(t(11)) * Ty(t(12)) * Tz(t(13));
    T23 = Rz(q3);
    T03 = T01*T_sp1*T12*T_sp2*T23;
    
    J2 = [T03(1,4), T03(2,4), T03(3,4), T03(3,2), T03(1,3), T03(2,1)]';
    
    %for t3
    T01 = base*Tz(t(1))* Rz(-q1) * Tz(0) * Ty(1);
    T_sp1 = Rx(t(2))* Rdy(t(3)) * Rz(t(4)) * Tx(t(5)) * Ty(t(6)) * Tz(t(7));
    T12 = Rz(-q2) * Ty(0) * Ty(1);
    T_sp2 = Rx(t(8))* Ry(t(9)) * Rz(t(10)) * Tx(t(11)) * Ty(t(12)) * Tz(t(13));
    T23 = Rz(q3);
    T03 = T01*T_sp1*T12*T_sp2*T23;
    
    J3 = [T03(1,4), T03(2,4), T03(3,4), T03(3,2), T03(1,3), T03(2,1)]';
    
    %for t4
    T01 = base*Tz(t(1))* Rz(-q1) * Tz(0) * Ty(1);
    T_sp1 = Rx(t(2))* Ry(t(3)) * Rdz(t(4)) * Tx(t(5)) * Ty(t(6)) * Tz(t(7));
    T12 = Rz(-q2) * Ty(0) * Ty(1);
    T_sp2 = Rx(t(8))* Ry(t(9)) * Rz(t(10)) * Tx(t(11)) * Ty(t(12)) * Tz(t(13));
    T23 = Rz(q3);
    T03 = T01*T_sp1*T12*T_sp2*T23;
    
    J4 = [T03(1,4), T03(2,4), T03(3,4), T03(3,2), T03(1,3), T03(2,1)]';
    
    %for t5
    T01 = base*Tz(t(1))* Rz(-q1) * Tz(0) * Ty(1);
    T_sp1 = Rx(t(2))* Ry(t(3)) * Rz(t(4)) * Tdx(t(5)) * Ty(t(6)) * Tz(t(7));
    T12 = Rz(-q2) * Ty(0) * Ty(1);
    T_sp2 = Rx(t(8))* Ry(t(9)) * Rz(t(10)) * Tx(t(11)) * Ty(t(12)) * Tz(t(13));
    T23 = Rz(q3);
    T03 = T01*T_sp1*T12*T_sp2*T23;
    
    J5 = [T03(1,4), T03(2,4), T03(3,4), T03(3,2), T03(1,3), T03(2,1)]';
    
    %for t6
    T01 = base*Tz(t(1))* Rz(-q1) * Tz(0) * Ty(1);
    T_sp1 = Rx(t(2))* Ry(t(3)) * Rz(t(4)) * Tx(t(5)) * Tdy(t(6)) * Tz(t(7));
    T12 = Rz(-q2) * Ty(0) * Ty(1);
    T_sp2 = Rx(t(8))* Ry(t(9)) * Rz(t(10)) * Tx(t(11)) * Ty(t(12)) * Tz(t(13));
    T23 = Rz(q3);
    T03 = T01*T_sp1*T12*T_sp2*T23;
    
    J6 = [T03(1,4), T03(2,4), T03(3,4), T03(3,2), T03(1,3), T03(2,1)]';
    
    %for t7
    T01 = base*Tz(t(1))* Rz(-q1) * Tz(0) * Ty(1);
    T_sp1 = Rx(t(2))* Ry(t(3)) * Rz(t(4)) * Tx(t(5)) * Ty(t(6)) * Tdz(t(7));
    T12 = Rz(-q2) * Ty(0) * Ty(1);
    T_sp2 = Rx(t(8))* Ry(t(9)) * Rz(t(10)) * Tx(t(11)) * Ty(t(12)) * Tz(t(13));
    T23 = Rz(q3);
    T03 = T01*T_sp1*T12*T_sp2*T23;
    
    J7 = [T03(1,4), T03(2,4), T03(3,4), T03(3,2), T03(1,3), T03(2,1)]';
    
    %for t8
    T01 = base*Tz(t(1))* Rz(-q1) * Tz(0) * Ty(1);
    T_sp1 = Rx(t(2))* Ry(t(3)) * Rz(t(4)) * Tx(t(5)) * Ty(t(6)) * Tz(t(7));
    T12 = Rz(-q2) * Ty(0) * Ty(1);
    T_sp2 = Rdx(t(8))* Ry(t(9)) * Rz(t(10)) * Tx(t(11)) * Ty(t(12)) * Tz(t(13));
    T23 = Rz(q3);
    T03 = T01*T_sp1*T12*T_sp2*T23;
    
    J8 = [T03(1,4), T03(2,4), T03(3,4), T03(3,2), T03(1,3), T03(2,1)]';
    
    %for t9
    T01 = base*Tz(t(1))* Rz(-q1) * Tz(0) * Ty(1);
    T_sp1 = Rx(t(2))* Ry(t(3)) * Rz(t(4)) * Tx(t(5)) * Ty(t(6)) * Tz(t(7));
    T12 = Rz(-q2) * Ty(0) * Ty(1);
    T_sp2 = Rx(t(8))* Rdy(t(9)) * Rz(t(10)) * Tx(t(11)) * Ty(t(12)) * Tz(t(13));
    T23 = Rz(q3);
    T03 = T01*T_sp1*T12*T_sp2*T23;
    
    J9 = [T03(1,4), T03(2,4), T03(3,4), T03(3,2), T03(1,3), T03(2,1)]';
    
    %for t10
    T01 = base*Tz(t(1))* Rz(-q1) * Tz(0) * Ty(1);
    T_sp1 = Rx(t(2))* Ry(t(3)) * Rz(t(4)) * Tx(t(5)) * Ty(t(6)) * Tz(t(7));
    T12 = Rz(-q2) * Ty(0) * Ty(1);
    T_sp2 = Rx(t(8))* Ry(t(9)) * Rdz(t(10)) * Tx(t(11)) * Ty(t(12)) * Tz(t(13));
    T23 = Rz(q3);
    T03 = T01*T_sp1*T12*T_sp2*T23;
    
    J10 = [T03(1,4), T03(2,4), T03(3,4), T03(3,2), T03(1,3), T03(2,1)]';
    
    %for t11
    T01 = base*Tz(t(1))* Rz(-q1) * Tz(0) * Ty(1);
    T_sp1 = Rx(t(2))* Ry(t(3)) * Rz(t(4)) * Tx(t(5)) * Ty(t(6)) * Tz(t(7));
    T12 = Rz(-q2) * Ty(0) * Ty(1);
    T_sp2 = Rx(t(8))* Ry(t(9)) * Rz(t(10)) * Tdx(t(11)) * Ty(t(12)) * Tz(t(13));
    T23 = Rz(q3);
    T03 = T01*T_sp1*T12*T_sp2*T23;
    
    J11 = [T03(1,4), T03(2,4), T03(3,4), T03(3,2), T03(1,3), T03(2,1)]';
    
    %for t12
    T01 = base*Tz(t(1))* Rz(-q1) * Tz(0) * Ty(1);
    T_sp1 = Rx(t(2))* Ry(t(3)) * Rz(t(4)) * Tx(t(5)) * Ty(t(6)) * Tz(t(7));
    T12 = Rz(-q2) * Ty(0) * Ty(1);
    T_sp2 = Rx(t(8))* Ry(t(9)) * Rz(t(10)) * Tx(t(11)) * Tdy(t(12)) * Tz(t(13));
    T23 = Rz(q3);
    T03 = T01*T_sp1*T12*T_sp2*T23;
    
    J12 = [T03(1,4), T03(2,4), T03(3,4), T03(3,2), T03(1,3), T03(2,1)]';
    
    %for t13
    T01 = base*Tz(t(1))* Rz(-q1) * Tz(0) * Ty(1);
    T_sp1 = Rx(t(2))* Ry(t(3)) * Rz(t(4)) * Tx(t(5)) * Ty(t(6)) * Tz(t(7));
    T12 = Rz(-q2) * Ty(0) * Ty(1);
    T_sp2 = Rx(t(8))* Ry(t(9)) * Rz(t(10)) * Tx(t(11)) * Ty(t(12)) * Tdz(t(13));
    T23 = Rz(q3);
    T03 = T01*T_sp1*T12*T_sp2*T23;
    
    J13 = [T03(1,4), T03(2,4), T03(3,4), T03(3,2), T03(1,3), T03(2,1)]';
end

J = [J1, J2, J3, J4, J5, J6, J7, J8, J9, J10, J11, J12, J13];


end