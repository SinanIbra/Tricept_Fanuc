function graph_bounds(bounding_cube)
b = bounding_cube;
px1 = [0 0 b b ];
py1 = [0 0 0 0 ];
pz1 = [0 b b 0 ];

px2 = [0 0 b b];
py2 = [b b b b];
pz2 = [0 b b 0];

px3 =[0 0 b b 0];
py3 =[0 b b 0 0];
pz3 =[0 0 0 0 0];

px4 =[0 0 b b ];
py4 =[0 b b 0 ];
pz4 =[b b b b ];

plot3(0,0,0, 'ro-','MarkerFaceColor','r')
text(0,0,0,'\leftarrow (0,0,0)')

hold on
plot3(px1, py1,pz1,'b-s')
plot3(px2, py2,pz2,'b-s')
plot3(px3, py3,pz3,'b-s')
plot3(px4, py4,pz4,'b-s')
xlabel('x')
ylabel('y')
zlabel('z')
end
