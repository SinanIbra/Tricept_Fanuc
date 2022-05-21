function q = inverse_cyl(pose,transmission) 
x = pose(1); 
y = pose(2);
z = pose(3);

a = transmission.a; 
b = transmission.b; 

q1 = atan2(y,x);
q2 = z-a;
q3 = sqrt(x^2 + y^2) - b;

q = [q1, q2, q3]';




end
