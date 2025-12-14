>[!info] Definition
> num cores != performance

$$Speedup = \frac{1}{\frac{\text{parallelizable tasks}}{\text{num of cores}} + \text{sequential task time}}$$
>[!tip]
>also applies to energy consumption (obviously)

>[!question]
>whats the overall speedup if half of execution is sped up by 2x? 
>$$f_x=0.5, S_x=2$$
>$$\frac{1}{\frac{0.5}{2} + (1-0.5)}$$
> > [!answer]
> > 1.33x speedup

>[!question]
>whats the overall speedup if 20% of the execution is sped up by 2x, 30% by 3x, and the remaining, unchanged? 
>$$f_x=0.2, S_x=2$$
>$$\frac{1}{\frac{0.2}{2} + \frac{0.3}{3} + (1-0.5)}$$
> > [!answer]
> > yes you can do the math, lazy

