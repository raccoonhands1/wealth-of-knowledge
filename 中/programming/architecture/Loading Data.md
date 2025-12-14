>[!example] 
>Consider the c example 
>
>$$a = b + *c$$
> assume a in x1, b in x2, c in x3
> 
> use a load insturction (ld) to e]

>[!example]
>now consider $$*a=b+c$$ assume a in x3, b in x1, c in x2.
>use a store instruction (sd):
>add x5, x1, x2
>sd x5, 0(x3)

use base and offset for load and store. Because of efficient array access

## loading a half word
- lh, x1, 0(x2) //load half word starting from mem addr x2
- lw, x1, 0(x2) //load full word..
- ld, x1, 0(x2) //load double word..

