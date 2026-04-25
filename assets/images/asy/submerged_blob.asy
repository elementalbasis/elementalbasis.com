size(150);
texpreamble("\usepackage{physics}");

// blob outline
path blob =
  (0,1.2)
  .. (1.0,1.4)
  .. (1.7,0.6)
  .. (1.4,-0.4)
  .. (0.7,-1.1)
  .. (-0.4,-1.3)
  .. (-1.3,-0.7)
  .. (-1.6,0.3)
  .. (-0.9,1.0)
  .. cycle;

draw(blob, linewidth(1));

// center of the surface element, placed on the "front" of the blob
pair P = (0.55, 0.25);

// slanted local basis for dA
pair u = 0.15 * dir(25);   // long direction
pair v = 0.15 * dir(115);  // short direction

path dA =
  (P - u/2 - v/2)
  -- (P + u/2 - v/2)
  -- (P + u/2 + v/2)
  -- (P - u/2 + v/2)
  -- cycle;

// draw little slanted patch
filldraw(dA, red + opacity(0.5), linewidth(1));

// normal vector coming out of the patch
pair n = 0.5 * dir(25);

draw(P -- P + n, Arrow);
label("$\vu{n}$", P + n, NE);
label("$\dd{A}$", P, SW);
label("$V$", P - 3.1*n, SW);
