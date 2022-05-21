function [J] = Jacobian_th(q, th, flag)
q1 = q(1);q2 = q(2);q3 = q(3);q4 = q(4);q5 = q(5);
th = -th;
th1 = th(1);
th2 = th(2);th3 = th(3);th4 = th(4);th5 = th(5);th6 = th(6);th7 = th(7);
l1=0.8;
ra=0.04;
rb=0.04;
%JACOBIAN_TH Summary of this function goes here
%
if (flag == "l1")
    T1 = Tx(-ra)*Rx(q1)*Ry(q2)*Tdz(th1)*Tz(l1)*Rx(th2)*Ry(th3)*Rz(th4)*Tx(th5)*Ty(th6)*Tz(th7)*Rx(q3)*Ry(q4)*Rz(q5)*Tx(rb);
    J1 = [T1(1,4), T1(2,4), T1(3,4), T1(3,2), T1(1,3), T1(2,1)]';
    
    T2 = Tx(-ra)*Rx(q1)*Ry(q2)*Tz(th1)*Tz(l1)*Rdx(th2)*Ry(th3)*Rz(th4)*Tx(th5)*Ty(th6)*Tz(th7)*Rx(q3)*Ry(q4)*Rz(q5)*Tx(rb);
    J2 = [T2(1,4), T2(2,4), T2(3,4), T2(3,2), T2(1,3), T2(2,1)]';
    
    T3 = Tx(-ra)*Rx(q1)*Ry(q2)*Tz(th1)*Tz(l1)*Rx(th2)*Rdy(th3)*Rz(th4)*Tx(th5)*Ty(th6)*Tz(th7)*Rx(q3)*Ry(q4)*Rz(q5)*Tx(rb);
    J3 = [T3(1,4), T3(2,4), T3(3,4), T3(3,2), T3(1,3), T3(2,1)]';
    
    T4 = Tx(-ra)*Rx(q1)*Ry(q2)*Tz(th1)*Tz(l1)*Rx(th2)*Ry(th3)*Rdz(th4)*Tx(th5)*Ty(th6)*Tz(th7)*Rx(q3)*Ry(q4)*Rz(q5)*Tx(rb);
    J4 = [T4(1,4), T4(2,4), T4(3,4), T4(3,2), T4(1,3), T4(2,1)]';
    
    T5 = Tx(-ra)*Rx(q1)*Ry(q2)*Tz(th1)*Tz(l1)*Rx(th2)*Ry(th3)*Rz(th4)*Tdx(th5)*Ty(th6)*Tz(th7)*Rx(q3)*Ry(q4)*Rz(q5)*Tx(rb);
    J5 = [T5(1,4), T5(2,4), T5(3,4), T5(3,2), T5(1,3), T5(2,1)]';
    
    T6 = Tx(-ra)*Rx(q1)*Ry(q2)*Tz(th1)*Tz(l1)*Rx(th2)*Ry(th3)*Rz(th4)*Tx(th5)*Tdy(th6)*Tz(th7)*Rx(q3)*Ry(q4)*Rz(q5)*Tx(rb);
    J6 = [T6(1,4), T6(2,4), T6(3,4), T6(3,2), T6(1,3), T6(2,1)]';
    
    T7 = Tx(-ra)*Rx(q1)*Ry(q2)*Tz(th1)*Tz(l1)*Rx(th2)*Ry(th3)*Rz(th4)*Tx(th5)*Ty(th6)*Tdz(th7)*Rx(q3)*Ry(q4)*Rz(q5)*Tx(rb);
    J7 = [T7(1,4), T7(2,4), T7(3,4), T7(3,2), T7(1,3), T7(2,1)]';
    
    J = [J1 J2 J3 J4 J5 J6 J7];
    
elseif (flag == "l2")
    T1 = Tx(ra/2)*Ty(sqrt(3)*ra/2)*Rx(q1)*Ry(q2)*Tdz(th1)*Tz(l1)*Rx(th2)*Ry(th3)*Rz(th4)*Tx(th5)*Ty(th6)*Tz(th7)*Rx(q3)*Ry(q4)*Rz(q5)*Tx(-rb/2)*Ty(-sqrt(3)*rb/2);
    J1 = [T1(1,4), T1(2,4), T1(3,4), T1(3,2), T1(1,3), T1(2,1)]';
    
    T2 = Tx(ra/2)*Ty(sqrt(3)*ra/2) *Rx(q1)*Ry(q2)*Tz(th1)*Tz(l1)*Rdx(th2)*Ry(th3)*Rz(th4)*Tx(th5)*Ty(th6)*Tz(th7)*Rx(q3)*Ry(q4)*Rz(q5)*Tx(-rb/2)*Ty(-sqrt(3)*rb/2);
    J2 = [T2(1,4), T2(2,4), T2(3,4), T2(3,2), T2(1,3), T2(2,1)]';
    
    T3 = Tx(ra/2)*Ty(sqrt(3)*ra/2)*Rx(q1)*Ry(q2)*Tz(th1)*Tz(l1)*Rx(th2)*Rdy(th3)*Rz(th4)*Tx(th5)*Ty(th6)*Tz(th7)*Rx(q3)*Ry(q4)*Rz(q5)*Tx(-rb/2)*Ty(-sqrt(3)*rb/2);
    J3 = [T3(1,4), T3(2,4), T3(3,4), T3(3,2), T3(1,3), T3(2,1)]';
    
    T4 = Tx(ra/2)*Ty(sqrt(3)*ra/2)*Rx(q1)*Ry(q2)*Tz(th1)*Tz(l1)*Rx(th2)*Ry(th3)*Rdz(th4)*Tx(th5)*Ty(th6)*Tz(th7)*Rx(q3)*Ry(q4)*Rz(q5)*Tx(-rb/2)*Ty(-sqrt(3)*rb/2);
    J4 = [T4(1,4), T4(2,4), T4(3,4), T4(3,2), T4(1,3), T4(2,1)]';
    
    T5 = Tx(ra/2)*Ty(sqrt(3)*ra/2)*Rx(q1)*Ry(q2)*Tz(th1)*Tz(l1)*Rx(th2)*Ry(th3)*Rz(th4)*Tdx(th5)*Ty(th6)*Tz(th7)*Rx(q3)*Ry(q4)*Rz(q5)*Tx(-rb/2)*Ty(-sqrt(3)*rb/2);
    J5 = [T5(1,4), T5(2,4), T5(3,4), T5(3,2), T5(1,3), T5(2,1)]';
    
    T6 = Tx(ra/2)*Ty(sqrt(3)*ra/2)*Rx(q1)*Ry(q2)*Tz(th1)*Tz(l1)*Rx(th2)*Ry(th3)*Rz(th4)*Tx(th5)*Tdy(th6)*Tz(th7)*Rx(q3)*Ry(q4)*Rz(q5)*Tx(-rb/2)*Ty(-sqrt(3)*rb/2);
    J6 = [T6(1,4), T6(2,4), T6(3,4), T6(3,2), T6(1,3), T6(2,1)]';
    
    T7 = Tx(ra/2)*Ty(sqrt(3)*ra/2)*Rx(q1)*Ry(q2)*Tz(th1)*Tz(l1)*Rx(th2)*Ry(th3)*Rz(th4)*Tx(th5)*Ty(th6)*Tdz(th7)*Rx(q3)*Ry(q4)*Rz(q5)*Tx(-rb/2)*Ty(-sqrt(3)*rb/2);
    J7 = [T7(1,4), T7(2,4), T7(3,4), T7(3,2), T7(1,3), T7(2,1)]';
    
    J = [J1 J2 J3 J4 J5 J6 J7];
else
    T1 = Tx(ra/2)*Ty(-sqrt(3)*ra/2)*Rx(q1)*Ry(q2)*Tdz(th1)*Tz(l1)*Rx(th2)*Ry(th3)*Rz(th4)*Tx(th5)*Ty(th6)*Tz(th7)*Rx(q3)*Ry(q4)*Rz(q5)*Tx(-rb/2)*Ty(sqrt(3)*rb/2);
    J1 = [T1(1,4), T1(2,4), T1(3,4), T1(3,2), T1(1,3), T1(2,1)]';
    
    T2 = Tx(ra/2)*Ty(-sqrt(3)*ra/2) *Rx(q1)*Ry(q2)*Tz(th1)*Tz(l1)*Rdx(th2)*Ry(th3)*Rz(th4)*Tx(th5)*Ty(th6)*Tz(th7)*Rx(q3)*Ry(q4)*Rz(q5)*Tx(-rb/2)*Ty(sqrt(3)*rb/2);
    J2 = [T2(1,4), T2(2,4), T2(3,4), T2(3,2), T2(1,3), T2(2,1)]';
    
    T3 = Tx(ra/2)*Ty(-sqrt(3)*ra/2)*Rx(q1)*Ry(q2)*Tz(th1)*Tz(l1)*Rx(th2)*Rdy(th3)*Rz(th4)*Tx(th5)*Ty(th6)*Tz(th7)*Rx(q3)*Ry(q4)*Rz(q5)*Tx(-rb/2)*Ty(sqrt(3)*rb/2);
    J3 = [T3(1,4), T3(2,4), T3(3,4), T3(3,2), T3(1,3), T3(2,1)]';
    
    T4 = Tx(ra/2)*Ty(-sqrt(3)*ra/2)*Rx(q1)*Ry(q2)*Tz(th1)*Tz(l1)*Rx(th2)*Ry(th3)*Rdz(th4)*Tx(th5)*Ty(th6)*Tz(th7)*Rx(q3)*Ry(q4)*Rz(q5)*Tx(-rb/2)*Ty(sqrt(3)*rb/2);
    J4 = [T4(1,4), T4(2,4), T4(3,4), T4(3,2), T4(1,3), T4(2,1)]';
    
    T5 = Tx(ra/2)*Ty(-sqrt(3)*ra/2)*Rx(q1)*Ry(q2)*Tz(th1)*Tz(l1)*Rx(th2)*Ry(th3)*Rz(th4)*Tdx(th5)*Ty(th6)*Tz(th7)*Rx(q3)*Ry(q4)*Rz(q5)*Tx(-rb/2)*Ty(sqrt(3)*rb/2);
    J5 = [T5(1,4), T5(2,4), T5(3,4), T5(3,2), T5(1,3), T5(2,1)]';
    
    T6 = Tx(ra/2)*Ty(-sqrt(3)*ra/2)*Rx(q1)*Ry(q2)*Tz(th1)*Tz(l1)*Rx(th2)*Ry(th3)*Rz(th4)*Tx(th5)*Tdy(th6)*Tz(th7)*Rx(q3)*Ry(q4)*Rz(q5)*Tx(-rb/2)*Ty(sqrt(3)*rb/2);
    J6 = [T6(1,4), T6(2,4), T6(3,4), T6(3,2), T6(1,3), T6(2,1)]';
    
    T7 = Tx(ra/2)*Ty(-sqrt(3)*ra/2)*Rx(q1)*Ry(q2)*Tz(th1)*Tz(l1)*Rx(th2)*Ry(th3)*Rz(th4)*Tx(th5)*Ty(th6)*Tdz(th7)*Rx(q3)*Ry(q4)*Rz(q5)*Tx(-rb/2)*Ty(sqrt(3)*rb/2);
    J7 = [T7(1,4), T7(2,4), T7(3,4), T7(3,2), T7(1,3), T7(2,1)]';
    
    J = [J1 J2 J3 J4 J5 J6 J7];
    
end

