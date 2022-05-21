function [base] = transform_to_base(pose,boundary_cube)

base.x =(Tx(pose.x) * Ty(boundary_cube) * Tz(0))*Rz(pi);
base.y = Tx(0) * Ty(pose.y) * Tz(boundary_cube) *Ry(pi);
base.z = Tx(0) * Ty(0) * Tz(pose.z) * Ry(pi);

end