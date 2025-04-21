duration of clock cycle:

![[Pasted image 20250402093521.png]]

clock period:
$$250ps = 0.25ns = 250 \times 10^{-12}s$$
- minimum unit of time for all computers

clock rate:
$$4GHz = 4000MHz = 4.0 \times 10^9Hz$$

$$\text{execution time(s)} = \text{Cycles of a program} \times \text{Cycle Clock Time(s)} = \frac{\text{Cycles of a Program}}{\text{Clock Rate(cycles per second)}}$$
>[!note]
> you can reduce exec time by reducing clock cycles or increasing clock rate!!!
> > [!question]
> > when would you increase clock rate?
> > 


>[!question]
>2 GHz rate, 10s CPU, if you can increase by 1.2 times, how fast is clock
>
> >[!success] Answer
>$$10s \times 2GHz = 20 x 10^9$$
 > $$\frac{(1.2 \times 20 \times 10^9)}{6}$$

## Throughput

Throughput:
$$1/latency$$
- if its a single-thread
Throughput: 
$$ numThreads / latency$$
- Assuming perfect distribution
- Assume spatial parallelism