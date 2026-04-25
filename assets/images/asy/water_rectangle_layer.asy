import three;
texpreamble("\usepackage{physics}");

size(150);
currentprojection = orthographic(10,3,5);

real dx = 10;
real dy = 10;
real dz = 1;

// vertices
triple A = (0,0,0);
triple B = (dx,0,0);
triple C = (dx,dy,0);
triple D = (0,dy,0);

triple J = (0,0,dz);
triple F = (dx,0,dz);
triple G = (dx,dy,dz);
triple H = (0,dy,dz);

draw(J--F--G--H--cycle);
draw(B--C--D);
//draw(A--E);
draw(B--F);
draw(C--G);
draw(D--H);

triple center = (J+F+G+H)/4;
label("$A$", center);

triple u = (D + H) / 2;
label("$\dd{z}$", u, ENE);
