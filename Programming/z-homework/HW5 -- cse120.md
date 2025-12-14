## Q1

- Arithmetic: 45%, CPI=1
- Load/Store: 25%, CPI=6
- Branch: 25%, base CPI=1, 65% taken
- Jump: 5%, CPI=1

**Strategy 1: 
$$
{Global CPI} = 0.45(1) + 0.25(6) + 0.25(1+1) + 0.05(1) = 2.5$$

**Strategy 2:  $$\text{Global CPI} = 0.45(1) + 0.25(6) + 0.25(1 + 0.35 \times 2) + 0.05(1) = 2.625$$

**Strategy 3: 
$$\text{Global CPI} = 0.45(1) + 0.25(6) + 0.25(1 + 0.65 \times 1) + 0.05(1) = 2.4125$$

>[!success] ans
>Strategy 3 is fastest (lowest CPI = 2.4125)**

## Q2 

### A)

Address: 0x3A7B2C10

$$\text{Sets} = \frac{1024KB}{16 \times 64B} = 1024 \text{ sets} = 2^{10}$$ $$\text{Offset bits} = \log_2(64) = 6, \text{ Index bits} = 10$$

- **Offset:** 0x10 (last 6 bits)
- **Index:** 0x304 (bits 6-15)
- **Tag:** 0xE9EC (remaining bits)

### B) 

Addr: 0x00D4B2AB

$$\text{Blocks} = \frac{16KB}{256B} = 64 \text{ blocks}$$ $$\text{Offset bits} = \log_2(256) = 8$$

- **Offset:** 0xAB
- **Index:** N/A (fully associative)
- **Tag:** 0x00D4B2

### C) Cache analysis: 4KB direct-mapped, 64B lines

**Cache parameters:** $$\text{Cache lines} = \frac{4KB}{64B} = 64 \text{ lines}$$ $$\text{Elements per line} = \frac{64B}{8B} = 8 \text{ longs}$$

v1

- Accesses arr(i)(j) sequentially
- 8 hits per cache line, then 1 miss for next line
- $$\text{Hit rate} = \frac{8-1}{8} = 87.5perce nt
- $$

v2

- Accesses arr(i)(j), jumping by 256×8 bytes each iteration
- Each access hits different cache line (conflict misses)
- $$\text{Hit rate} = 0%
$$

## Q3

### A) 1-bit predictor: NT, T, T, NT, NT

Starting state: NT

| Prediction | Actual | Correct? |
| ---------- | ------ | -------- |
| NT         | NT     | ✓        |
| NT         | T      | ✗        |
| T          | T      | ✓        |
| T          | NT     | ✗        |
| NT         | NT     | ✓        |

**Accuracy: 3/5 = 60%**

### B) 2-bit predictor: NT, NT, T, NT, T

**SNT (Strongly Not Taken):**

| Prediction | Actual | Correct? | Next State |
| ---------- | ------ | -------- | ---------- |
| NT         | NT     | ✓        | SNT        |
| NT         | NT     | ✓        | SNT        |
| NT         | T      | ✗        | WNT        |
| NT         | NT     | ✓        | SNT        |
| NT         | T      | ✗        | WNT        |
|            |        |          |            |

$$\text{Accuracy} = \frac{3}{5} = 60%
$$

**WNT (Weakly Not Taken):**

|Prediction|Actual|Correct?|Next State|
|---|---|---|---|
|NT|NT|✓|SNT|
|NT|NT|✓|SNT|
|NT|T|✗|WNT|
|NT|NT|✓|SNT|
|NT|T|✗|WNT|

$$\text{Accuracy} = \frac{3}{5} = 60%
$$

**WT (Weakly Taken):**

|Prediction|Actual|Correct?|Next State|
|---|---|---|---|
|T|NT|✗|WNT|
|NT|NT|✓|SNT|
|NT|T|✗|WNT|
|NT|NT|✓|SNT|
|NT|T|✗|WNT|

$$\text{Accuracy} = \frac{2}{5} = 40%
$$

**ST (Strongly Taken):**

|Prediction|Actual|Correct?|Next State|
|---|---|---|---|
|T|NT|✗|WT|
|T|NT|✗|WNT|
|NT|T|✗|WT|
|T|NT|✗|WNT|
|NT|T|✗|WT|

$$
\text{Accuracy} = \frac{0}{5} = 0%
$$

**Worst starting state: ST (0% accuracy)**

### C) Repeating pattern...

Starting: SNT, pattern repeats forever

**First iteration (SNT start):**

|Prediction|Actual|Correct?|Next State|
|---|---|---|---|
|NT|T|✗|WNT|
|NT|NT|✓|SNT|
|NT|T|✗|WNT|
|NT|NT|✓|SNT|
|NT|NT|✓|SNT|

After first iteration, predictor alternates between SNT and WNT states. 

$$\text{Steady state accuracy} = \frac{3}{5} = 60%

$$$$
\text{Steady state accuracy} = \frac{3}{5} = 60%
$$

## Q4

$$
\text{Sets} = \frac{8KB}{2 \times 256B} = 16 \text{ sets} = 2^4 
\text{Offset bits} = 8, \text{ Index bits} = 4
$$


| Memory Address | Tag   | Set Index | Offset | Hit/Miss |
| -------------- | ----- | --------- | ------ | -------- |
| 0x00001000     | 0x100 | 0x0       | 0x00   | Miss     |
| 0x00001004     | 0x100 | 0x0       | 0x04   | Hit      |
| 0x00001010     | 0x100 | 0x0       | 0x10   | Hit      |
| 0x000011c0     | 0x11  | 0xc       | 0xc0   | Miss     |
| 0x00002000     | 0x200 | 0x0       | 0x00   | Miss     |
| 0x000021c0     | 0x21  | 0xc       | 0xc0   | Miss     |
| 0x00002006     | 0x200 | 0x0       | 0x06   | Hit      |

### LRU Analysis

>[!success] ans
>Yes. Set 0 gets 3 accesses to tag 0x100, then 1 to tag 0x200, then back to 0x200. LRU would keep recently used blocks, improving hit rate compared to random replacement.
>