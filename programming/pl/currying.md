---
tags:
  - concept
created:
  "{ date }":
---
START [!concept]
$$pqr$$
in haskall means
$$(pq)r$$
and not
$$p(qr)$$
think of pqr as being a call to the fn p but with two arguments that p gets at one time. this is called currying
END

> [!example]
> $$\lambda x.(\lambda y.(\lambda z. e))$$
> as a shorthand, write
> $$\lambda x.\lambda y.\lambda z.e$$
> and then
> $$\lambda xyz.e$$
> putting them together...
> $$(((\lambda x.(\lambda y.(\lambda z.z)))q)r)s$$
> or
> $$(\lambda xyz.z)qrs$$
