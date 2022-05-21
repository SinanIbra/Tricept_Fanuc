function [relative_position] = get_leg_position(position, bounding_cube)

base_z = [0, 0, position.z] ;
base_y = [0, position.y, bounding_cube]; 
base_x = [position.x, bounding_cube, 0]; 

pose = [position.x, position.y, position.z];
rel_x = abs(base_x - pose);
rel_y = abs(base_y - pose);
rel_z = abs(base_z - pose );

relative_position.x = rel_x;
relative_position.y = rel_y;
relative_position.z = rel_z;

end