function graph_manipulator(translations, base, style)
t_base = base(1:3,4);
t01 = translations.o01;
t12 = translations.o02;

x_ps1 = [t_base(1) t01(1) ];
y_ps1 = [t_base(2) t01(2) ];
z_ps1 = [t_base(3) t01(3) ];

x_ps2=  [t01(1) t12(1)];
y_ps2=  [t01(2) t12(2)];
z_ps2=  [t01(3) t12(3)];

M1 = [0 base(1,3)];
M2 = [0 base(2,3)];
M3 = [0 base(3,3)];

M21 = [0 base(1,1)];
M22 = [0 base(2,1)];
M23 = [0 base(3,1)];

plot3(x_ps1, y_ps1,z_ps1,style)
hold on
plot3(x_ps2, y_ps2,z_ps2,style)
plot3(t_base(1),t_base(2),t_base(3),'ro','MarkerFaceColor','r')
text(t_base(1),t_base(2),t_base(3),'\leftarrow base')
plot3(t01(1),t01(2),t01(3),'ro','MarkerFaceColor','r')

xlabel('x')
ylabel('y')
zlabel('z')
% hold on 
% plot3(M1,M2,M3)
% plot3(M21,M22,M23)

end
