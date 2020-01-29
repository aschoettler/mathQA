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

The natural numbers can be defined in terms of sets as:
```txt
0 = {}
1 = {0} = {{}}
2 = {0,1} = {{},{{}}}
3 = {0,1,2} = {{}, {{}}, {{},{{}}}}
```

More formally [they define](https://en.wikipedia.org/wiki/Successor_function) the successor function S(K) (it represents K+1)
as $S(K) = K \cup {K}$
If we use this definition we get the pattern above:
For K = 0, you get 
$$ S(K) = S(1) = 1 \cup \{1\} = \{\{\}\} \cup \{\{\{\}\}\} = \{\{\}, \{\{\}\}\}$$
 which is 2 above.

If K has the property that $K = \{0, 1, ...K-1\}$ then 

$$ S(K) = K \cup \{K\} = \{0,1,...K-1\} \cup \{K\} = \{0,1,...K-1,K\}$$

so the set for K+1 (which is S(K)) contains all numbers 0 through K.



The set of functions from A to B is sometimes denoted as $B^A$.
- Ordered pairs of real numbers correspond to functions from R to {0, 1},
    so you can think of the space of these functoins as $R^{\{0,1\}}$ = $R^2$.
- This also works if you denot the powerset of A, usually P(A) as 2^A
    its the set of all functions from A to 2.
- If you define A to be the set $n = \{0,1,...n-1\}$,
    then of course we know $P(A)$ has $2^n$ elements. But its especially cool 
    to use the notation $2^n$ to represent $P(A)$. Then considering $2^n$ as a set of functions,
    the cardinality of this set is the numerical value $2^n$.

