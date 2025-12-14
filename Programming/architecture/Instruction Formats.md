## R format
instructions using 3 registers, (2 src, 1 dest)

## I format
instructions with immediates, loads
- addi, lw, jalr, slli, ld

## S format
store instructions 
- sd, sw

![[Pasted image 20250409094952.png]]

## encoding instruction for adding
1) determine format based on instruction
2) obtain register IDs
3) use instruction codes in the reference table

>[!example] 
>for xor x10, x3, x4
>
>table lookup: 
>xor 10110011 100 000000
> > [!success]
> > funct7: 0x00
> > rs2: 4
> > rs1: 3
> > funct3: 0b100
> > rd: 10
> > opcode: 0x33

to add x5, x1, x2 (x5=a+b)
```
add x5,x1,x2
slli x6,x3,3 //x6 = 8 * i
add x6, x4, x6 //x6 = a + 8 * i
sd x5, 0(x6) // memory a[i]
...

