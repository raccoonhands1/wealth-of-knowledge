## 1

| **instruction** | A     | B     | C     | D    | E     |
| --------------- | ----- | ----- | ----- | ---- | ----- |
| XOR x1, x1, x2  | 0x111 | 0x222 | 0x333 | x    | 0x514 |
| ld x4, 4(1x)    | 0x333 | 0x4   | 0x337 | 0xff | 0x518 |
| L:bge x4, x1, L | 0xff  | 0x333 | 0x0   | x    | 0x51C |

## 2

| **instruction** | ALU | ALUSrc | PCSrc | MemToReg | MemRead | MemWrite | RegWrite |
| --------------- | --- | ------ | ----- | -------- | ------- | -------- | -------- |
| or x5, x7, x9   | or  | 0      | 0     | 0        | 0       | 0        | 1        |
| slti x6,x7, 8   | slt | 1      | 0     | 0        | 0       | 0        | 1        |
| li x9, 8        | add | 1      | 0     | 0        | 0       | 0        | 1        |
| sd x7, 0(x2)    | add | 1      | 0     | x        | 0       | 1        | 0        |
| jd x2, L1       | x   | x      | 1     | 0        | 0       | 0        | 1        |
|                 |     |        |       |          |         |          |          |


## 3
### a
we need a functional block that creates a place to store this new value in memory based on PC and an ADD op in MUX

### b
none

### c
path to calculate add op and a forward to the calculated memory address. 

### d
ALU output needs to have a 1 value alongside the control to guide it into the ADD op. As long as instruction ID is implied then no others

### e
mostly similar with the addition of an add operation in MUX and a data control flow to there
## 4
### a
none

### b
none

### c 
none

### d
none

### e
none needed