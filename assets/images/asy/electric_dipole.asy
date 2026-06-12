import graph;
unitsize(2.5cm);

pair O = (0,0);
pair dr = (0,0.45);
pair Pp = dr;
pair Pm = -dr;
pair R = (1.35,1.05);

// Styles
//pen axispen = gray(0.55);
//pen vecpen = linewidth(1.0);
//pen pluspen = red + linewidth(1.0);
//pen minuspen = blue + linewidth(1.0);

// Axes
//draw((-0.25,0)--(1.65,0), axispen);
//draw((0,-0.65)--(0,1.35), axispen);

// Charges
draw(Pm--Pp);
dot(Pp, red);
dot(Pm, blue);
label("$+Q$", Pp, W, red);
label("$-Q$", Pm, W, blue);
label("$\delta r$", Pp/2, W);
label("$\delta r$", Pm/2, W);

// Position vector r from origin, dotted
draw(O--R);
label("$r$", midpoint(O--R), W);

// Distances from charges to field point
draw(Pp--R, red);
draw(Pm--R, blue);

label("$r_1$", midpoint(Pp--R), NW, red);
label("$r_2$", midpoint(Pm--R), SE, blue);

// Field point
dot(R);
label("$\mathbf{r}$", R, NE);

// Angle theta from vertical axis to r
real ang = atan2(R.y,R.x);
real theta1 = pi/2;
real theta2 = ang;

path arc = arc(O, 0.23, degrees(theta2), degrees(theta1));
draw(arc);
label("$\theta$", 0.20*dir(degrees((theta1+theta2)/2)), dir(degrees((theta1+theta2)/2)));

// Origin
dot(O);
