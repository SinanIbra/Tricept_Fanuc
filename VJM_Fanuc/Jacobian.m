function [J] = Jacobian(th)
%JACOBIAN Summary of this function goes here
%   Detailed explanation goes here
th1 = th(1);
th2 = th(2); th3 = th(3); th4 = th(4); th5 = th(5); th6 = th(6); th7 = th(7);
th8 = th(8);
th9 = th(9); th10 = th(10); th11 = th(11); th12 = th(12); th13 = th(13); th14 = th(14);
th15 = th(15); th16 = th(16); th17 = th(17); th18 = th(18); th19 = th(19);th20 = th(20); th21 = th(21);

T1= Tz(l0)*Rdz(th1)*Tz(l1)*Rx(th2 )*Ry(th3 ) * Rz(th4 )*Tz(th5 )*Ty(th6 )*Tx(th7 )*Ry(th8)* Tz(l2)* Rx(th9 )*Ry(th10 ) * Rz(th11 )*Tz(th12 )*Ty(th13 )*Tx(th14 )* Ry(th15)*Tz(l3)*Rx(th16 )*Ry(th17 ) * Rz(th18 )*Tz(th19 )*Ty(th20 )*Tx(th21 );
J1 = [T1(1,4), T1(2,4), T1(3,4), T1(3,2), T1(1,3), T1(2,1)]';
T2= Tz(l0)*Rz(th1)*Tz(l1)*Rdx(th2 )*Ry(th3 ) * Rz(th4 )*Tz(th5 )*Ty(th6 )*Tx(th7 )*Ry(th8)* Tz(l2)* Rx(th9 )*Ry(th10 ) * Rz(th11 )*Tz(th12 )*Ty(th13 )*Tx(th14 )* Ry(th15)*Tz(l3)*Rx(th16 )*Ry(th17 ) * Rz(th18 )*Tz(th19 )*Ty(th20 )*Tx(th21 );
J2 = [T2(1,4), T2(2,4), T2(3,4), T2(3,2), T2(1,3), T2(2,1)]';

T3= Tz(l0)*Rz(th1)*Tz(l1)*Rx(th2 )*Rdy(th3 ) * Rz(th4 )*Tz(th5 )*Ty(th6 )*Tx(th7 )*Ry(th8)* Tz(l2)* Rx(th9 )*Ry(th10 ) * Rz(th11 )*Tz(th12 )*Ty(th13 )*Tx(th14 )* Ry(th15)*Tz(l3)*Rx(th16 )*Ry(th17 ) * Rz(th18 )*Tz(th19 )*Ty(th20 )*Tx(th21 );
J3 = [T3(1,4), T3(2,4), T3(3,4), T3(3,2), T3(1,3), T3(2,1)]';

T4= Tz(l0)*Rz(th1)*Tz(l1)*Rx(th2 )*Ry(th3 ) * Rdz(th4 )*Tz(th5 )*Ty(th6 )*Tx(th7 )*Ry(th8)* Tz(l2)* Rx(th9 )*Ry(th10 ) * Rz(th11 )*Tz(th12 )*Ty(th13 )*Tx(th14 )* Ry(th15)*Tz(l3)*Rx(th16 )*Ry(th17 ) * Rz(th18 )*Tz(th19 )*Ty(th20 )*Tx(th21 );
J4 = [T4(1,4), T4(2,4), T4(3,4), T4(3,2), T4(1,3), T4(2,1)]';

T5= Tz(l0)*Rz(th1)*Tz(l1)*Rx(th2 )*Ry(th3 ) * Rz(th4 )*Tdz(th5 )*Ty(th6 )*Tx(th7 )*Ry(th8)* Tz(l2)* Rx(th9 )*Ry(th10 ) * Rz(th11 )*Tz(th12 )*Ty(th13 )*Tx(th14 )* Ry(th15)*Tz(l3)*Rx(th16 )*Ry(th17 ) * Rz(th18 )*Tz(th19 )*Ty(th20 )*Tx(th21 );
J5 = [T5(1,4), T5(2,4), T5(3,4), T5(3,2), T5(1,3), T5(2,1)]';

T6= Tz(l0)*Rz(th1)*Tz(l1)*Rx(th2 )*Ry(th3 ) * Rz(th4 )*Tz(th5 )*Tdy(th6 )*Tx(th7 )*Ry(th8)* Tz(l2)* Rx(th9 )*Ry(th10 ) * Rz(th11 )*Tz(th12 )*Ty(th13 )*Tx(th14 )* Ry(th15)*Tz(l3)*Rx(th16 )*Ry(th17 ) * Rz(th18 )*Tz(th19 )*Ty(th20 )*Tx(th21 );
J6 = [T6(1,4), T6(2,4), T6(3,4), T6(3,2), T6(1,3), T6(2,1)]';

T7= Tz(l0)*Rz(th1)*Tz(l1)*Rx(th2 )*Ry(th3 ) * Rz(th4 )*Tz(th5 )*Ty(th6 )*Tdx(th7 )*Ry(th8)* Tz(l2)* Rx(th9 )*Ry(th10 ) * Rz(th11 )*Tz(th12 )*Ty(th13 )*Tx(th14 )* Ry(th15)*Tz(l3)*Rx(th16 )*Ry(th17 ) * Rz(th18 )*Tz(th19 )*Ty(th20 )*Tx(th21 );
J7 = [T7(1,4), T7(2,4), T7(3,4), T7(3,2), T7(1,3), T7(2,1)]';

T8= Tz(l0)*Rz(th1)*Tz(l1)*Rx(th2 )*Ry(th3 ) * Rz(th4 )*Tz(th5 )*Ty(th6 )*Tx(th7 )*Rdy(th8)* Tz(l2)* Rx(th9 )*Ry(th10 ) * Rz(th11 )*Tz(th12 )*Ty(th13 )*Tx(th14 )* Ry(th15)*Tz(l3)*Rx(th16 )*Ry(th17 ) * Rz(th18 )*Tz(th19 )*Ty(th20 )*Tx(th21 );
J8 = [T8(1,4), T8(2,4), T8(3,4), T8(3,2), T8(1,3), T8(2,1)]';

T9= Tz(l0)*Rz(th1)*Tz(l1)*Rx(th2 )*Ry(th3 ) * Rz(th4 )*Tz(th5 )*Ty(th6 )*Tx(th7 )*Ry(th8)* Tz(l2)* Rdx(th9 )*Ry(th10 ) * Rz(th11 )*Tz(th12 )*Ty(th13 )*Tx(th14 )* Ry(th15)*Tz(l3)*Rx(th16 )*Ry(th17 ) * Rz(th18 )*Tz(th19 )*Ty(th20 )*Tx(th21 );
J9 = [T9(1,4), T9(2,4), T9(3,4), T9(3,2), T9(1,3), T9(2,1)]';

T10= Tz(l0)*Rz(th1)*Tz(l1)*Rx(th2 )*Ry(th3 ) * Rz(th4 )*Tz(th5 )*Ty(th6 )*Tx(th7 )*Ry(th8)* Tz(l2)* Rx(th9 )*Rdy(th10 ) * Rz(th11 )*Tz(th12 )*Ty(th13 )*Tx(th14 )* Ry(th15)*Tz(l3)*Rx(th16 )*Ry(th17 ) * Rz(th18 )*Tz(th19 )*Ty(th20 )*Tx(th21 );
J10 = [T10(1,4), T10(2,4), T10(3,4), T10(3,2), T10(1,3), T10(2,1)]';

T11= Tz(l0)*Rz(th1)*Tz(l1)*Rx(th2 )*Ry(th3 ) * Rz(th4 )*Tz(th5 )*Ty(th6 )*Tx(th7 )*Ry(th8)* Tz(l2)* Rx(th9 )*Ry(th10 ) * Rdz(th11 )*Tz(th12 )*Ty(th13 )*Tx(th14 )* Ry(th15)*Tz(l3)*Rx(th16 )*Ry(th17 ) * Rz(th18 )*Tz(th19 )*Ty(th20 )*Tx(th21 );
J11 = [T11(1,4), T11(2,4), T11(3,4), T11(3,2), T11(1,3), T11(2,1)]';

T12= Tz(l0)*Rz(th1)*Tz(l1)*Rx(th2 )*Ry(th3 ) * Rz(th4 )*Tz(th5 )*Ty(th6 )*Tx(th7 )*Ry(th8)* Tz(l2)* Rx(th9 )*Ry(th10 ) * Rz(th11 )*Tdz(th12 )*Ty(th13 )*Tx(th14 )* Ry(th15)*Tz(l3)*Rx(th16 )*Ry(th17 ) * Rz(th18 )*Tz(th19 )*Ty(th20 )*Tx(th21 );
J12 = [T12(1,4), T12(2,4), T12(3,4), T12(3,2), T12(1,3), T12(2,1)]';

T13= Tz(l0)*Rz(th1)*Tz(l1)*Rx(th2 )*Ry(th3 ) * Rz(th4 )*Tz(th5 )*Ty(th6 )*Tx(th7 )*Ry(th8)* Tz(l2)* Rx(th9 )*Ry(th10 ) * Rz(th11 )*Tz(th12 )*Tdy(th13 )*Tx(th14 )* Ry(th15)*Tz(l3)*Rx(th16 )*Ry(th17 ) * Rz(th18 )*Tz(th19 )*Ty(th20 )*Tx(th21 );
J13 = [T13(1,4), T13(2,4), T13(3,4), T13(3,2), T13(1,3), T13(2,1)]';

T14= Tz(l0)*Rz(th1)*Tz(l1)*Rx(th2 )*Ry(th3 ) * Rz(th4 )*Tz(th5 )*Ty(th6 )*Tx(th7 )*Ry(th8)* Tz(l2)* Rx(th9 )*Ry(th10 ) * Rz(th11 )*Tz(th12 )*Ty(th13 )*Tdx(th14 )* Ry(th15)*Tz(l3)*Rx(th16 )*Ry(th17 ) * Rz(th18 )*Tz(th19 )*Ty(th20 )*Tx(th21 );
J14 = [T14(1,4), T14(2,4), T14(3,4), T14(3,2), T14(1,3), T14(2,1)]';

T15= Tz(l0)*Rz(th1)*Tz(l1)*Rx(th2 )*Ry(th3 ) * Rz(th4 )*Tz(th5 )*Ty(th6 )*Tx(th7 )*Ry(th8)* Tz(l2)* Rx(th9 )*Ry(th10 ) * Rz(th11 )*Tz(th12 )*Ty(th13 )*Tx(th14 )* Rdy(th15)*Tz(l3)*Rx(th16 )*Ry(th17 ) * Rz(th18 )*Tz(th19 )*Ty(th20 )*Tx(th21 );
J15 = [T15(1,4), T15(2,4), T15(3,4), T15(3,2), T15(1,3), T15(2,1)]';

T16= Tz(l0)*Rz(th1)*Tz(l1)*Rx(th2 )*Ry(th3 ) * Rz(th4 )*Tz(th5 )*Ty(th6 )*Tx(th7 )*Ry(th8)* Tz(l2)* Rx(th9 )*Ry(th10 ) * Rz(th11 )*Tz(th12 )*Ty(th13 )*Tx(th14 )* Ry(th15)*Tz(l3)*Rdx(th16 )*Ry(th17 ) * Rz(th18 )*Tz(th19 )*Ty(th20 )*Tx(th21 );
J16 = [T16(1,4), T16(2,4), T16(3,4), T16(3,2), T16(1,3), T16(2,1)]';

T17= Tz(l0)*Rz(th1)*Tz(l1)*Rx(th2 )*Ry(th3 ) * Rz(th4 )*Tz(th5 )*Ty(th6 )*Tx(th7 )*Ry(th8)* Tz(l2)* Rx(th9 )*Ry(th10 ) * Rz(th11 )*Tz(th12 )*Ty(th13 )*Tx(th14 )* Ry(th15)*Tz(l3)*Rx(th16 )*Rdy(th17 ) * Rz(th18 )*Tz(th19 )*Ty(th20 )*Tx(th21 );
J17 = [T17(1,4), T17(2,4), T17(3,4), T17(3,2), T17(1,3), T17(2,1)]';

T18= Tz(l0)*Rz(th1)*Tz(l1)*Rx(th2 )*Ry(th3 ) * Rz(th4 )*Tz(th5 )*Ty(th6 )*Tx(th7 )*Ry(th8)* Tz(l2)* Rx(th9 )*Ry(th10 ) * Rz(th11 )*Tz(th12 )*Ty(th13 )*Tx(th14 )* Ry(th15)*Tz(l3)*Rx(th16 )*Ry(th17 ) * Rdz(th18 )*Tz(th19 )*Ty(th20 )*Tx(th21 );
J18 = [T18(1,4), T18(2,4), T18(3,4), T18(3,2), T18(1,3), T18(2,1)]';

T19= Tz(l0)*Rz(th1)*Tz(l1)*Rx(th2 )*Ry(th3 ) * Rz(th4 )*Tz(th5 )*Ty(th6 )*Tx(th7 )*Ry(th8)* Tz(l2)* Rx(th9 )*Ry(th10 ) * Rz(th11 )*Tz(th12 )*Ty(th13 )*Tx(th14 )* Ry(th15)*Tz(l3)*Rx(th16 )*Ry(th17 ) * Rz(th18 )*Tdz(th19 )*Ty(th20 )*Tx(th21 );
J19 = [T19(1,4), T19(2,4), T19(3,4), T19(3,2), T19(1,3), T19(2,1)]';

T20= Tz(l0)*Rz(th1)*Tz(l1)*Rx(th2 )*Ry(th3 ) * Rz(th4 )*Tz(th5 )*Ty(th6 )*Tx(th7 )*Ry(th8)* Tz(l2)* Rx(th9 )*Ry(th10 ) * Rz(th11 )*Tz(th12 )*Ty(th13 )*Tx(th14 )* Ry(th15)*Tz(l3)*Rx(th16 )*Ry(th17 ) * Rz(th18 )*Tz(th19 )*Tdy(th20 )*Tx(th21 );
J20 = [T20(1,4), T20(2,4), T20(3,4), T20(3,2), T20(1,3), T20(2,1)]';

T21= Tz(l0)*Rz(th1)*Tz(l1)*Rx(th2 )*Ry(th3 ) * Rz(th4 )*Tz(th5 )*Ty(th6 )*Tx(th7 )*Ry(th8)* Tz(l2)* Rx(th9 )*Ry(th10 ) * Rz(th11 )*Tz(th12 )*Ty(th13 )*Tx(th14 )* Ry(th15)*Tz(l3)*Rx(th16 )*Ry(th17 ) * Rz(th18 )*Tz(th19 )*Ty(th20 )*Tdx(th21 );
J21 = [T21(1,4), T21(2,4), T21(3,4), T21(3,2), T21(1,3), T21(2,1)]';

J = [J1 J2 J3 J4 J5 J6 J7 J8 J9 J10 J11 J12 J13 J14 J15 J16 J17 J18 J19 J20 J21];

end
%T= Tz(l0)*Rz(th1)*Tz(l1)*Rx(th2 )*Ry(th3 ) * Rz(th4 )*Tz(th5 )*Ty(th6 )*Tx(th7 )*Ry(th8)* Tz(l2)* Rx(th9 )*Ry(th10 ) * Rz(th11 )*Tz(th12 )*Ty(th13 )*Tx(th14 )* Ry(th15)*Tz(l3)*Rx(th16 )*Ry(th17 ) * Rz(th18 )*Tz(th19 )*Ty(th20 )*Tx(th21 );
