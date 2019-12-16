---
html:
  embed_local_images: true
  embed_svg: true
  offline: false
export_on_save:
  html: true
customjs:
  - https://polyfill.io/v3/polyfill.min.js?features=es6
  - https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-mml-chtml.js
---

[Home](/index.html)

# Arc Length Example

## Problem:
Suppose that a curve $p: [0, \infty) \longrightarrow \mathbb{R}^2$ has coordinates
$p(s) = \left<x(s), y(s)\right>$ where $x(s), y(s)$ are differentiable and
$$
    \frac{\mathrm{d} x}{\mathrm{d} s} = \cos(\theta(s)), \frac{\mathrm{d} y}{\mathrm{d} s} = \sin(\theta(s))
$$
for some unknown function $\theta(s)$.

Task: Find the arc length $L(t)$ traced out by the curve $p(s)$ as $s$ ranges from $0$ to $t$.
Use the definition
$$
    L(t) = {\int_{0}^{t}} \sqrt{\left(\frac{\mathrm{d} x}{\mathrm{d} s}\right)^2 +
\left(\frac{\mathrm{d} x}{\mathrm{d} s}\right)^2} \,\mathrm{d}s
$$
and evaluate the integral to find $L(t)$.

## Solution

In general the value
$$
L(t) = \int_{0}^{t} \Vert p'(s) \Vert \,\mathrm{d}s
$$
represents the length of the *curve* traced out by the function $p(s)$ as $s$ ranges from $0$ to $t$. Think of $p(s)$ as a position of a particle as a function of a time parameter $s$, so it starts at $p(0)$ and moves around, and ends at $p(t)$ after some time $t$. The *velocity* is $p’(s)$ and the *speed* is the magnitude of velocity:

$$
\Vert p'(s) \Vert =
\left\Vert \left<\frac{\mathrm{d} x}{\mathrm{d} s},
\frac{\mathrm{d} x}{\mathrm{d} s} \right> \right\Vert =
\sqrt{\left(\frac{\mathrm{d} x}{\mathrm{d} s}\right)^2 +
\left(\frac{\mathrm{d} x}{\mathrm{d} s}\right)^2}
$$

Since speed is the derivative of position, integrating speed gives the total change in position. But its **not** the *net* change in position, its the aggregate change in position accumulated over a bunch of infinitesimal time intervals. For each little change in $s$ the position varies a little bit, and we can think of $L$ as accumulating all these little changes into one total value. This value represents the arc length traced out over the time span $[0,t]$, and this is what they’re asking for.

In our case, since $\frac{\mathrm{d} x}{\mathrm{d} s}$ and $\frac{\mathrm{d} x}{\mathrm{d} s}$ are given, we don’t need to take any derivatives. Using the “Pythagorean trigonometric identity” we can make short work of this integral. But visually we can also think of the velocity as the vector 
$$
p'(s) = \left <\frac{\mathrm{d} x}{\mathrm{d} s},
\frac{\mathrm{d} x}{\mathrm{d} s} \right>
= \left<\cos(\theta(s)), \sin(\theta(s))\right>
$$
and for every value of $s$ the velocity has unit length, like in the unit circle below:

![Image result for unit circle cos(theta)](https://cdn.kastatic.org/googleusercontent/TSZaYHIv-JZrb7IgquFrsO1b4Ie104YD3TkNCaZQ06I8RsonAVD_ON5L8t6q9DIQspl6s1yEwUTmrd1E2PFm87oCuQ)

So $\theta(s)$ is some angle that varies with time $s$ and the velocity $p’(s)$ is a unit vector in that direction. Since the speed is always $1$ it should make intuitive sense that the arc length is just given by the amount of time travelled
