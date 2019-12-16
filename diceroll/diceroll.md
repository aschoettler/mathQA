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

## Dice Roll Game

You roll a 10-sided die repeatedly.
On the $n$th roll the numbers 1, 2, ...n are a lose, and the others result in a win.

There are many ways to win the game. To win on the nth roll one must get 're-rolls' for all prior turns, and a 10 on this one.

There are $(9-1)(9-2)...(9-(n-1))$ ways to get re-rolls up through turn $n-1$ which is actually $\frac{9!}{9 * (9-n)!}$

out of a possible $10^{n-1}$ possible rolls. If we add the condition of winning this turn, that has probability $1/10$, So the probability of winning *on* turn $n$ is
$$\frac{P(\text{(n-1) rerolls})}{10^{n}}$$

$$=\frac{9!}{10^{n} * 9 * (9-n)!}$$

Now all we need to do is sum this up from $n=1$ to $n=9$ using Wolfram|Alpha which gives $461843/1562500$ or $29.557952\%$

