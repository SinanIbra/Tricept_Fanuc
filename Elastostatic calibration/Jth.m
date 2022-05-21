function [Jth] = Jth(transmission, deflections,flag)
t01 = transmission.t01;
t12 = transmission.t12;
t23 = transmission.t23;

if flag == 'J1'
    T01 = Rz(t01(1))*Rdz(deflections(1)) * Tz(t01(2)) * Tx(t01(3)) * Rx(t01(4));
    T12 = Rz(t12(1))* Tz(t12(2))* Tz(deflections(2)) * Tx(t12(3)) * Rx(t12(4));
    T23 = Rz(t23(1))* Tz(t23(2))* Tz(deflections(3)) * Tx(t23(3)) * Rx(t23(4));
    
    
   T03 = T01*T12*T23;
   
   Jth = [T03(1,4), T03(2,4), T03(3,4), T03(3,2), T03(1,3), T03(2,1)]';
end

if flag =='J2' 
    T01 = Rz(t01(1))*Rz(deflections(1)) * Tz(t01(2)) * Tx(t01(3)) * Rx(t01(4));
    T12 = Rz(t12(1))* Tz(t12(2))* Tdz(deflections(2)) * Tx(t12(3)) * Rx(t12(4));
    T23 = Rz(t23(1))* Tz(t23(2))* Tz(deflections(3)) * Tx(t23(3)) * Rx(t23(4));
    
   T03 = T01*T12*T23;
   
   Jth = [T03(1,4), T03(2,4), T03(3,4), T03(3,2), T03(1,3), T03(2,1)]';
end

if flag == 'J3'
    T01 = Rz(t01(1))*Rz(deflections(1)) * Tz(t01(2)) * Tx(t01(3)) * Rx(t01(4));
    T12 = Rz(t12(1))* Tz(t12(2))* Tz(deflections(2)) * Tx(t12(3)) * Rx(t12(4));
    T23 = Rz(t23(1))* Tz(t23(2))* Tdz(deflections(3)) * Tx(t23(3)) * Rx(t23(4));
    
   	
   T03 = T01*T12*T23;
   
   Jth = [T03(1,4), T03(2,4), T03(3,4), T03(3,2), T03(1,3), T03(2,1)]';
end
    
end