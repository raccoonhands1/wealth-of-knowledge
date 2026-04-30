---
tags:
  - concept
created:
  "{ date }":
---
> [!concept]
> everything is a function. no data types. input functions & output functions


$$\lambda x.x$$

$$(\lambda x) \text{<--binder }. \text{<--delimiter } x \text{<--body}$$


> [!example]
> a function that returns an identity function (lambda x.x) without using the z parameter
> $$\lambda z.(\lambda x.x)$$

> [!example]
> calling a function
> $$(\lambda x.x)\text{"hello world"}$$
> > [!note]
> > the body of the function typically extends as far to the right of the function as possible

> [!example]
> $$(\lambda f.f(\lambda x.x))(\lambda y.y)$$
> where lambda y.x is the argument and the rest is the function
>
> you first get
> $$(\lambda y.y)(\lambda x.x)$$
> then evaluating further
> $$\lambda x.x$$

START [!example]
incrementing numbers:
```
let INCR = \n->(\fx->f(nfx))
let ADD = \nm->n INCR m
```
decrementing numbers:
strategy: start from zero and increment it one less than n times
```
let DECR = \n->
```
END