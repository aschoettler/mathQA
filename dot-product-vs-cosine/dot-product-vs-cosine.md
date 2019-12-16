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

# Dot Products vs Angles

## In some generality:

Say $x = (x_1, x_2)$. We can associate the angle $\theta$ to $x$ where
* $\cos(\theta) = x_1 / \sqrt{x_1^2 + x_2^2}$
* $\sin(\theta) = x_2 / \sqrt{x_1^2 + x_2^2}$

Let $a = (\cos(\alpha), \sin(\alpha))$.

* Let $u$ be reference direction with $\Vert u \Vert = 1$.
* Let $\beta$ be an orthonormal basis with $\beta_1 = u$.
* For any $x$ we can write $x = \sum_k \alpha_k \beta_k$.
    Define $\pi_k(x) = \alpha_k$ where $x$ has the above expression in the basis $\beta$.
* Then $\pi_1(x) = \alpha_1 = \left< x, u \right>$

## In 2 dimensions:

Suppose two vectors $a,b$ are in $\mathbb{R}^2$.
We want to compute the cosine of the angle between them.

It should be independent of lengths so let $u=a / \Vert a \Vert, v = b / \Vert b \Vert$.
Suppose $u = (cos(\alpha), sin(\alpha)), v = (cos(\beta), sin(\beta))$.

By applying $R_\alpha^{-1}$ to $v$ we get $v_1 \cos(\alpha) + v_2 \sin(\alpha) = u_1 v_1 + u_2 v_2$ as first component. So $u \cdot v$ gives component of $v$ in direction of $u$.
The expression is symmetric in $u$ and $v$ as desired. It also scales bilinearly with the norms of $u$ and $v$.

In the end all we did was extend $u$ to an orthonormal basis and find the component of $v$ in the direction of $u$. Said component is independent of the particular orthonormal basis chosen so it is well-defined. In particular a Graham-Schmidt construction applied to $\{u, v\}$ gives the usual formulae
$$
\begin{aligned}
    u_1 &= w_1 = u \\
    w_2 &= v - \frac{\left< u, v \right>}{\left< u, u \right >} u \\
        &= v - \left< u, v \right> u \\ 
    u_2 &= w_2 / \Vert w_2 \Vert
\end{aligned}
$$



In general if we have a subspace $W$ of an inner product space $V$, and the columns of the matrix $A$ *span* $W$ then we can construct
the component $x_W$ of a vector $x \in V$ which lies in $W$ as:

$$
\begin{aligned}
x  &= x_W + x_{W^\perp} \\
x_W  &= A A^{+} x  \\
x_{W^\perp}  &= (I - A A^{+}) x 
\end{aligned}
$$

where $A^+$ is the [Moore–Penrose inverse] of $A$
and the square matrix $A A^+$ is the [orthogonal projector]
to the range space of $A$.

[Moore–Penrose inverse]: https://en.wikipedia.org/wiki/Moore%E2%80%93Penrose_inverse
[orthogonal projector]: https://en.wikipedia.org/wiki/Moore%E2%80%93Penrose_inverse#Projectors

