---
layout: post
title: Deriving the Euler-Lagrange Equation
author: Javier Castro
tags: [mathematics]
cover: /assets/images/asy/delta-s.svg
---

In this post we will give a brief derivation of the
[Euler-Lagrange equation](https://en.wikipedia.org/wiki/Euler%E2%80%93Lagrange_equation).
Say we want to minimize the following integral:

$$ S = \int\limits_{t_i}^{t_f}\dd{t}\mathcal{L}(q, \dot{q}, t) $$

This is the integral of a known function $\mathcal{L}$, which in turn depends on
an unknown function $q(t)$ its
derivative $\dot{q}(t)$, and the time coordinate $t$.
In order to minimize $S$, we will apply the
[functional derivative](https://en.wikipedia.org/wiki/Functional_derivative)
$\delta$,
which behaves similiar to the
[differential operator](https://en.wikipedia.org/wiki/Differential_(mathematics))
$\mathrm{d}$ from
ordinary calculus. First, let us examine how $\var{S}$ can be expressed:

$$
\begin{align}
\delta S &= \delta \qty(\int\limits_{t_i}^{t_f}\dd{t}\mathcal{L}(q, \dot{q})) \\
&= \int\limits_{t_i}^{t_f}\dd{t}\var{\mathcal{L}(q, \dot{q})} \\
&= \int\limits_{t_i}^{t_f}\dd{t}\qty[
  \pdv{\mathcal{L}}{q}\delta q + \pdv{\mathcal{L}}{\dot{q}} \delta\dot{q}] \\
&= \int\limits_{t_i}^{t_f}\dd{t}\qty[
  \pdv{\mathcal{L}}{q}\delta q +
  \dv{t}\qty(\pdv{\mathcal{L}}{\dot{q}}\delta q)
  -\dv{t}\qty(\pdv{\mathcal{L}}{\dot{q}})\delta q] \\
&= \eval{\pdv{\mathcal{L}}{\dot{q}}\delta q}_{t_i}^{t_f}
  +\int\limits_{t_i}^{t_f}\dd{t}\qty[
  \pdv{\mathcal{L}}{q}\delta q
  -\dv{t}\qty(\pdv{\mathcal{L}}{\dot{q}})\delta q]\\
\end{align}
$$

If we assume that the function $\delta q(t)$ vanishes at the endpoints,
then it follows:

$$
\delta S = \int\limits_{t_i}^{t_f}\dd{t}\qty[
  \pdv{\mathcal{L}}{q}\delta q
  -\dv{t}\qty(\pdv{\mathcal{L}}{\dot{q}})\delta q]\\
$$

And if we enforce $\delta S = 0$, then we conclude:

$$
\boxed{\pdv{\mathcal{L}}{q} - \dv{t}\qty(\pdv{\mathcal{L}}{\dot{q}}) = 0}
$$
