>[!definition]
>$$ \begin{align} 
>
>Execution Time(s) 
>\\
>&= \text{instruction count} * CPI * \text{Cycle Clock Time} 
>\\
>&= \frac{\text{instruction count}* CPI }{\text{ClockRate(Cycles Per Second)}} 
>
>
>\end{align}$$

High performance depends on 
- algorithm, language, compile, INSTRUCTION SET ARCHITECTURE, hardware (obviously)

## Calculating CPI

$$Clock Cycles == \sum^n_{i=1}CPI_i * F_i$$
>[!question]
>Processor A & B for same ISA and instruction set, 
>A: cycle time = 250 ps, CPI = 2.0
>B: cycle time = 500 ps, CPI = 1.2
>which is faster?
>$$
> A = IC*CPI_A*cycle_time_A = IC * 2 * 250ps = IC*500ps	
>$$
>$$
> B = IC*CPI_B*cycle_time_B = IC * 1.2 * 500ps = IC*600ps	
>$$
>So CPU_Time_A < CPU _Time_b by 600/500 = 1.2x

