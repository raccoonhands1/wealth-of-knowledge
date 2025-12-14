---
tags:
  - cpp
  - thing
created:
  "{ date }":
---
>[!definition]
> a compiler optimization in which the compiler replaces variables known to have constant values with their values to reduce memory fetch operations.

> [!tip]
> some optimizations for this technique will be difficult or impossible if const is not specified. Specify const! 

> [!example]
> ```
> #include <iostream>
> 
> int main()
> {
> 	int x { 7 };
> 	std::cout << x << '\n';
> 
> 	return 0;
> }
> ```
> >[!summary]
> >memory access operations are reduced since x will always be referenced as a literal. Thus the compiler won't have to fetch what the memory address at x is and instead just replaces x with the int literal 7

> [!note] 
> can be combined with [[constant folding]] and other optimizations in order to produce an even more optimized output

