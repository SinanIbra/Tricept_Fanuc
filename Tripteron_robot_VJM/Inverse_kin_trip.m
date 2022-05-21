function [q1,q2,q3] = Inverse_kin_trip(position,link,bounding_cube,flag)
relative_position = get_leg_position(position, bounding_cube);

if flag == 'x' 
    pose = relative_position.x;
    i = pose(2);
    j = pose(3);
%     leg_param = paramteres.lx;
elseif flag == 'y'
    pose = relative_position.y;
    i = pose(3);
    j = pose(1);
%     leg_param = paramteres.ly;
elseif flag == 'z' 
    pose = relative_position.z;
    i = pose(2);
    j = pose(1);
%     leg_param = paramteres.lz; 
end

relative_position = get_leg_position(position, bounding_cube);

if flag == 'x' 
    pose = relative_position.x;
    i = pose(2);
    j = pose(3);
    
elseif flag == 'y'
    pose = relative_position.y;
    i = pose(3);
    j = pose(1);
    
elseif flag == 'z' 
    pose = relative_position.z;
    i = pose(2);
    j = pose(1);
    
end

l1 = link;
l2 = link;

r2 = i^2 + j^2; 

A =  acos((l1^2 + l2^2 - r2)/2*l1*l2);
q2 =  -(pi-A);

m1 = atan(j/i);
m2 = atan((l2*sin(q2))/(l1 + l2*cos(q2)));
q1 = m1-m2 ;

q3 = q1 + q2;

end