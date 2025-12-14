---
tags:
  - cpp
  - thing
created:
  "{ date }":
---
>[!definition]
>literal operands combine at compile time. Also can happen inside of code blocks with variable dependencies. This happens no matter where in the code it is. If 2 literals are next to each other they'll combine no matter what.
> > [!example]
> > ```
> > int x {3+4};
> > ```
> > auto-optimizes to be
> > ```
> > int x {7};
> > ```
> 

