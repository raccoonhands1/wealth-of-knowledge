## 1

### a)

Find the data access AMAT of P1

$$\text{L1 miss penalty} = 20 + 0.05 * 150 = 27.5$$

$$ AMAT = 1 + 0.3 * 27.5 = 9.25 \text{cycles} $$

### b)

$$\text{Global CPI} = \text{Base CPI} + \text{Instruction cache miss penalty} + \text{Data cache miss penalty}$$
$$\text{Instruction cache miss penalty} = \text{L1 instruction miss rate} \times \text{L1 miss penalty}$$

$$= 0.20 \times 27.5 = 5.5 \text{ cycles per instruction}$$
$$\text{Total data cache miss penalty} = 2.475 + 0.825 = 3.3 \text{ cycles per instruction}$$
$$\text{Global CPI} = 2 + 5.5 + 3.3 = 10.8$$


## 2

### a)

**Given:**
- Virtual address = 52 bits
- Page size = 4 KiB = $2^{12}$ bytes
- Physical address space = 16 GiB = $2^{34}$ bytes

**Calculations:**
- **Page Offset**: $\log_2(4 \text{ KiB}) = \log_2(2^{12}) = 12$ bits
- **Virtual Page Number (VPN)**: $52 - 12 = 40$ bits
- **Physical Page Number (PPN)**: $\frac{\log_2(16 \text{ GiB})}{\text{page size}} = \frac{34 - 12}{1} = 22$ bits
- **Physical Address**: $22 + 12 = 34$ bits

| Field            | Bits |
| ---------------- | ---- |
| Page Offset      | 12   |
| VPN              | 40   |
| PPN              | 22   |
| Physical Address | 34   |
### b)

- **Page Offset**: $\log_2(2 \text{ MiB}) = \log_2(2^{21}) = 21$ bits
- **Virtual Page Number (VPN)**: $64 - 21 = 43$ bits
- **Physical Page Number (PPN)**: $\frac{\log_2(8 \text{ GiB})}{\text{page size}} = \frac{33 - 21}{1} = 12$ bits
- **Physical Address**: $12 + 21 = 33$ bits

| Field | Bits |
|-------|------|
| Page Offset | 21 |
| VPN | 43 |
| PPN | 12 |
| Physical Address | 33 |

### c)

- **Page Offset**: $\log_2(16 \text{ KiB}) = \log_2(2^{14}) = 14$ bits
- **Virtual Page Number (VPN)**: $40 - 14 = 26$ bits
- **Physical Page Number (PPN)**: $\frac{\log_2(32 \text{ GiB})}{\text{page size}} = \frac{35 - 14}{1} = 21$ bits
- **Physical Address**: $21 + 14 = 35$ bits

| Field            | Bits |
| ---------------- | ---- |
| Page Offset      | 14   |
| VPN              | 26   |
| PPN              | 21   |
| Physical Address | 35   |

## 3

### a)

| Address  | Result (H, M, PF) |
| -------- | ----------------- |
| `0x0FF4` | **M**             |
| `0x0FF8` | **H**             |
| `0x0FFC` | **H**             |
| `0x1000` | **PF**            |
| `0x8088` | **PF**            |
| `0x4971` | **M**             |

### b)

| Valid | Tag | Physical Page # | MRU |
| ----- | --- | --------------- | --- |
| 1     | 11  | 16              | 1   |
| 1     | 7   | 4               | 2   |
| 1     | 4   | 9               | 4   |
| 1     | 8   | 18              | 3   |

| Index | Valid | Physical Page # or On Disk |
| ----- | ----- | -------------------------- |
| 0     | 1     | 5                          |
| 1     | 1     | **17**                     |
| 2     | 0     | Disk                       |
| 3     | 1     | 6                          |
| 4     | 1     | 9                          |
| 5     | 1     | 11                         |
| 6     | 0     | Disk                       |
| 7     | 1     | 4                          |
| 8     | 1     | **18**                     |
| 9     | 0     | Disk                       |
| 10    | 1     | 3                          |
| 11    | 1     | 16                         |
