---
tags:
  - concept
created:
  "{ date }":
---
START [!concept]
the scope of a binding is the part of the program where the name can be used to refer to the entity ie: \x -> e. e is scope of x, \x is binder
END

> [!example]
> \x->(\y->x) x is bound by \x
> (\xy->y)x x is not bound by anything, meaning it's free ([[free and closed expressions]])
