---
tags:
  - cpp
  - thing
created:
  "{ date }":
---
>[!definition]
> an optimization technique where the compiler removes code that may be executed but that has no affect on the observable output of the code

> [!example]
> ```
> #include <iostream>
> 
> int main()
> {
> 	int x { 7 };
> 	std::cout << 7 << '\n';
> 
> 	return 0;
> }
> ```
> becomes 
> ```
> #include <iostream>
> 
> int main()
> {
> 	std::cout << 7 << '\n';
> 
> 	return 0;
> }
> ```
> >[!summary]
> >int x has been "optimized away" since the variable has no affect on the output of the program

