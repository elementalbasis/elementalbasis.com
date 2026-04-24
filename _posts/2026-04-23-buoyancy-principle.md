---
layout: post
title: Deriving the Principle of Buoyancy
author: Javier Castro
tags: [physics]
cover: /assets/images/archimedes-bathtub.svg
---

Two thousand years ago,
[Archimedes](https://en.wikipedia.org/wiki/Archimedes) had a his famous
[eureka moment](https://www.uakron.edu/polymer/agpa-k12outreach/professional-development-modules/pdf/float_your_boat_archimedes.pdf),
where he discovered that one could measure arbitrary volumes by the water that
they displace when submerged. Eventually, this led to him discovering the
[Principle of Buoyancy](https://en.wikipedia.org/wiki/Archimedes%27_principle).
In this post, we will derive this result from first principles.

## How pressure varies with depth

<!-- Include an image of the rectangle here -->

We must first determine how water pressure changes with depth. Let the
coordinate $z$ denote depth, with $z = 0$ marking the surface of the water, and
a positive $z$ when underwater. From
real life experience, we know that pressure $P(z)$ increases the deeper we go.
Therefore, let us examine some rectangular volume of water with area $A$ and
height $\dd{z}$. Recalling that pressure is force per unit area,
the top of the rectangle feels a downward force with magnitude
$A\,P(z)$, while the bottom of the rectangle feels an upward force of
$A\,P(z+\dd{z})$. Moreover, the volume also feels the downward force of gravity,
with magnitude $mg = \rho A \dd{z} g$. And since this is
a static system, the sum of all forces should cancel out:

$$ -A\,P(z) + A\,P(z + \dd{z}) - \rho A \dd{z} g = 0$$

$$\implies P(z + \dd{z}) - P(z) = \rho g \dd{z} $$

$$ \implies \dv{P}{z} = \rho g $$

$$ \implies \boxed{P = P_0 + \rho g z}$$

where $P_0$ represents the pressure at the surface, which is equal to
[atmospheric pressure](https://en.wikipedia.org/wiki/Atmospheric_pressure).

## The buoyant force

We can generalize the differential equation above using the
[gradient operator](https://en.wikipedia.org/wiki/Nabla_symbol):

$$ \grad P = \rho \vb{g}$$

Now, suppose we have some arbitrary volume $V$ submerged in the water. Then, the
pressure of the water will exert an inward force upon each infinitesimal
surface element $\dd{A}$. If $\vb{n}$ is the unit vector normal to the area
element $\dd{A}$, then the force is in the direction of $-\vb{n}$.
Using a corollary of the
[divergence theorem](https://en.wikipedia.org/wiki/Divergence_theorem), we
can write the total force acting on the volume as:

$$ \vb{F}_\mathrm{net} = - \oiint\limits_S \vb{n}P \dd{A} = -\iiint\limits_V \grad P \dd{V}$$

$$\implies \vb{F}_\mathrm{net} = -\iiint\limits_V \rho \vb{g} \dd{V} = -\rho\vb{g} \iiint\limits_V \dd{V}$$

$$ \implies \boxed{\vb{F}_\mathrm{net} = -\rho V \vb{g}}$$

Therefore, we see that the buoyant force is equivalent to the weight of the
water displaced, which is precisely what Archimedes discovered two thousand
years ago.
