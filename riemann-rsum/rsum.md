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

# Right-hand Riemann sum

## Problem
Write the right-hand Riemann sum for $f(x) = \frac{1}{x}$
on the interval $[1,2]$ using $n$ intervals of equal width.

Show that the first 3 terms in the sum are
$\frac{1}{n+1}, \frac{1}{n+2}, \frac{1}{n+3}$.

## Solution

Here's a [picture](https://d20khd7ddkh5ls.cloudfront.net/left-right-midpoints.png)
to have as a visual aid. For right-sums we'll use the middle picture.

The overall interval $[a,b]=[1,2]$ needs to be split up into $n$ intervals of equal width,
so the width of each sub-interval is $\Delta = \frac{b-a}{n}$.

If we set $x_0 = a$ and $x_k = a + k \Delta$ then these $x$-coordinates will be the *left* endpoints of each sub-interval.
There are $n$ sub-intervals in total, indexed by $k \in \{0,1,2,\dots, n-1\}$. The *first* sub-interval starts at $x_0$ and the last one
starts at $x_{n-1} = a + (n-1) \Delta$ which makes sense because if we add $\Delta$ to $x_{n-1}$ we get $b$.

Now to approximate the integral of $f(x)$ we need to sample the function at some point in each interval.
Keep in mind the values $\{ x_k | k = 0 \dots n-1 \}$ are the *left* endpoints of the intervals.

If we wanted left sums we could use the values
$$
    \{f(x_k) | k = 0 \dots n-1 \}
$$

For midpoints, we can use
$$
    \left\{f\left(x_k + \frac{\Delta}{2}\right) | k = 0 \dots n-1\right\}
$$

And finally for right sums we can use the $n$ values
$$
    \{f\left(x_k + \Delta\right) | k = 0 \dots n-1 \}
$$

So the approximation of
$$
    \int_{a}^{b} f(t) \,\mathrm{d}t 
$$
for right-sums is
$$
    \sum_{k=0}^{n-1} f(x_k + \Delta) \cdot \Delta
$$
where the last $\Delta$ is measuring the *width* of the $k^{th}$ interval $[x_k, x_k+1]$
so the first interval, for $k=0$ is $[a, a + \Delta]$ and the last one, for $k=n-1$ is $[b-\Delta, b]$.
Since all the intervals are the same width, the size of the $k^{th}$ interval is $x_{k+1}-x_k$ which is always $\Delta$.


### Application

In this problem we want to approximate $f(x) = 1/x$ over $[a,b]=[1,2]$.

The goal is to calculate the terms of the sum
$$
    \sum_{k=0}^{n-1} f(x_k + \Delta) \cdot \Delta
$$

First we'll compute the values at the right endpoints of each interval.
The right-hand endpoints of each of the $n$ sub-intervals are
$$
    \{x_k + \Delta | k = 0 \dots n-1 \}
$$
So the *values* at those right-endpoints are:
$$
    \{f\left(x_k + \Delta\right) | k = 0 \dots n-1 \}
    = \left\{\frac{1}{a + k \Delta + \Delta} | k = 0 \dots n-1 \right\}
$$

The first few values are
$$
    \frac{1}{1+\Delta}, \frac{1}{1+2\Delta}, \frac{1}{1+3\Delta} \dots
$$

**Next** we multiply each value by $\Delta$ to get the terms of the sum.
In general the first few terms are these:
$$
    f(a + \Delta) \cdot \Delta, f(x_1 + \Delta) \cdot \Delta, f(x_2 + \Delta) \cdot \Delta
$$

And using the last result the terms are:
$$
    \frac{\Delta}{1+\Delta}, \frac{\Delta}{1+2\Delta}, \frac{\Delta}{1+3\Delta} \dots
$$
To simplify, divide the top and bottom of each fraction by $\Delta$ to get
$$
    \frac{1}{1+\frac{1}{\Delta}},
    \frac{1}{2+\frac{1}{\Delta}},
    \frac{1}{3+\frac{1}{\Delta}} \dots
$$

And finally use $\Delta$ = $1/n$ and we have the following as the first few terms of the sum for $k=0,1,2$:
$$
    \frac{1}{n+1},
    \frac{1}{n+2},
    \frac{1}{n+3} \dots
$$
For the whole sum, the $k^{th}$ term is $1/(n + (k+1))$ so the total sum is
$$
    R_n = \sum_{k=0}^{n-1}\frac{1}{n + (k+1)}.
$$
