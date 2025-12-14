## Q1
### a)
Machine B is more performant

### b)
5x

### c)
you'd use 4 pipeline registers minimum. fewer would mean 'indivisible' steps are combined which cannot be true by definition of indivisibility. also it would probably add some overhead
## Q2
### a)
x13 = 0x2a
x14 = 0x0
x15 = 0x2a

### b)
x13 = 0x2a
x14 = 0x2a
x15 = 0x4c

### c)
addi x13, x12, 8
NOP
NOP
NOP
add x14, x12, x13
sub x15, x11, x12
NOP
NOP
NOP
xor x14, x13, x15
NOP
NOP
NOP
add x15, x13, x14

### d)
addi x13, x12, 8
NOP
NOP
add x14, x12, x13
sub x15, x11, x12
NOP
xor x14, x13, x15
NOP
NOP
add x15, x13, x14

### e)
x13 = 0x2a
x14 = 0xffffffc5
x15 = 0xffffffef

## Q3
### a)

|     | 1   | 2   | 3   | 4   | 5   | 6   | 7   | 8   | 9   | 10  | 11  | 12  | 13  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| I1: | F   | D   | X   | M   | W   |     |     |     |     |     |     |     |     |
| I2: |     |     |     | F   | D   | X   | M   | W   |     |     |     |     |     |
| I3: |     |     |     |     | F   | D   | X   | M   | W   |     |     |     |     |
| I4: |     |     |     |     |     | F   | D   | X   | M   | W   |     |     |     |
### b)
IC stays the same for non-nop instructions. If nop is included, increase

e: the # of instructions (instruction count) doesnt change. its execution is just shifted...
if nops are inserted that's a different story because nop is an op and effects IC

CPI increases

e: without forwarding, there is a general slowdown since the application will have to wait for the execution of other instructions. these stalls naturally increase cycles per instruction since CPI is the average of the execution time. 

Since nop is included in IC and CPI = IC * CLOCK_FREQUENCY then there is a general increase of CPI by nature of the IC increasing

Clock Frequency : stays mostly the same

e: since forwarding is complex, it can shorten the data path. But it's more likely to be not a noticable difference if i had to guess
