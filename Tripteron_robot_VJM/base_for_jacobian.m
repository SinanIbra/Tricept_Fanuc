function base = base_for_jacobian(pose,boundary_cube)

base.x =(Tdx(pose.x) * Ty(boundary_cube) * Tz(0))*Rz(pi);
base.y = Tx(0) * Tdy(pose.y) * Tz(boundary_cube) *Ry(pi);
base.z = Tx(0) * Ty(0) * Tdz(pose.z) * Ry(pi);

end