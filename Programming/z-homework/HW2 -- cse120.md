A) Assemble the following assembly into encoded RV64I instructions: (5 pts)
(i) (2 pts) sd x11, 12(x9)

# 1 A
### a)
>[!success] 0000000 01011 01001 011 01100 0100011 = 0x00B9361B

### b)
>[!success] 111111111110 00101 100 00111 0010011 = 0xFFE2C393

## 1 B

### a)
as binary:
11111110011001001010101000100011

as formatted binary:
1111111 00110 01001 010 10100 0100011

S format ->

| 1111111   | 00110 | 01001 | 010    | 10100    | 0100011 |
| --------- | ----- | ----- | ------ | -------- | ------- |
| imm[11:5] | rs2   | rs1   | funct3 | imm[4:0] | sw      |
>[!success] **sw x6, -12(x9)**

### b)
0x7FF20613

as binary:
01111111111100100000011000010011

as formatted binary: 
011111111111 00100 000 01100 0010011

I format ->

| 011111111111 | 00100 | 000    | 01100 | 0010011 |
| ------------ | ----- | ------ | ----- | ------- |
| imm[11:0]    | rs1   | funct3 | rd    | addi    |
>[!success] addi x12, x4, 2047

# 2 A

### a)
assume a, b, and c are loaded into registers x5, x6 and  
x7, respectively
$$a = 2 * b + 3 * c$$
```c

slli x10, x6, 1     # x10 = b << 1 (equivalent to 2 * b). you can add 
					# bit shift to multiply by 2 always
					
slli x11, x7, 1     # bit shiiiiiiift!
add  x11, x11, x7   # x11 = 3*c
add  x5, x10, x11   # x5 = x10 + x11 = (a = 2*b + 3 * c)
```
### b)
assume the value of j and the base address of
b are loaded into registers x5 and x6, respectively
$$result = - b[j/2] + 6*b[j] $$

```c

srli x10, x5, 1     # x10 = j/2 right shift by a bit
slli x10, x10, 3    # x10 = (j/2) * 8 for 64 bit offset
add  x10, x6, x10   # x10 = mem_addr( b[j/2] )
ld   x11, 0(x10)    # load it into x11
sub  x11, x0, x11   # make it negative

slli x12, x5, 3     # j * 8 to adjust for 64 bit offset
add  x12, x6, x12   # x12=&b[j] (address of b[j])
ld   x13, 0(x12)    # x13=b[j], (load val)
slli x14, x13, 2    # 4 * b[j]
add  x14, x14, x13  # 5 * b[j]
add  x14, x14, x13  # 6 * b[j]

add  x5, x11, x14   # store result in x5
```

# 2 B

```c

ld x7, 16(x4)       # load val from memory at address                                                # x4+16 into register x7
ld x8, 8(x5)        # load val from memory at address x5+8                                           # into register x8
add x7, x7, x8      # add the val in registers x7 and x8, store                                      # result in x7
sd x7, 0(x6)        # store the val from register x7 to memory                                       # at addr in x6
```

if these vars have already been declared:
```c
*(x6) = *(x4 + 2) + *(x5 + 1);
```

# 2 C

### a)
```c

addi x6, x0, 2         # x6 = 2
ble  x9, x6, L1        # if a <= 2 branch 2 L1
j L2                   # else jump to L2
L1:  add  x9, x6, x0   # a = 2
L2:                    # continue...
```

### b)
```c
addi x6, x0, 1         # x6 = 1
L1:  ble  x9, x6, L2   # if a <= 1 exit loop via branching 
     addi x9, x9, -1   # a = a - 1
     j L1              # jump to begin loop
L2:                    # continue...
```

# 3 A

```c
array_total:
    addi sp, sp, -40       # allocate space for registers
    sd ra, 32(sp)          # return addr
    sd s0, 24(sp)          # frame pointer
    sd s1, 16(sp)          # total
    sd s2, 8(sp)           # i
    sd s3, 0(sp)           # n
    addi s0, sp, 40        # frame pointer

    mv s1, zero            # total = 0
    mv s2, zero            # i = 0
    mv s3, a2              # s3 = n (save arg n)

    beq s3, zero, end_loop # If n == 0, skip
    
loop:
    bge s2, s3, end_loop   # If i >= n, exit

    slli t0, s2, 3         # i * 8 (offset)
    add t0, a1, t0         # address of b[i]
    ld t0, 0(t0)           # t0=b[i]
    
    add t0, t0, s2         # b[i] + i
    
    slli t0, t0, 3         # (b[i] + i) * 8 (offset)
    add t0, a0, t0         # address of a[b[i] + i]
    ld t0, 0(t0)           # a[b[i] + i]

    add s1, s1, t0         # update total
    
    # i++
    addi s2, s2, 1         
    
    # jump back to loop cond.
    j loop
    
end_loop:
    mv a0, s1              # total is in a0
    jr ra                  # return
```
