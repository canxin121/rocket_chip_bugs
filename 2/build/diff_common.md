# Common Execution Output Diff Report

Comparison: Spike vs Rocket

## Differences Detected

| Diff Type | Count |
|----------|------|
| Register Content | 4 register dumps have content differences |
| Output Item Status | Item count or content differs |
| Exception Dumps | Exception information differs |

## Detailed Diff Analysis

### Register Content Differences

Found 4 dumps with differences:

#### Dump Index 0 (#1 in sequence)

# Register Dump Differences

Differences found in: Core CSRs

## Core CSR Differences

Difference count: 7

| CSR | Spike | Rocket |
|-----|------|------|
| misa | 0x80000000001411AF | 0x80000000009411AD |
| mideleg | 0x0000000000001444 | 0x0000000000000444 |
| mip | 0x0000000000000080 | 0x0000000000000040 |
| mcycle | 0x000000000000767A | 0x000000000002C046 |
| minstret | 0x000000000000767B | 0x0000000000018A74 |
| marchid | 0x0000000000000005 | 0x0000000000000001 |
| mimpid | 0x0000000000000000 | 0x0000000020181004 |



#### Dump Index 1 (#2 in sequence)

# Register Dump Differences

Differences found in: Core CSRs

## Core CSR Differences

Difference count: 7

| CSR | Spike | Rocket |
|-----|------|------|
| misa | 0x80000000001411AF | 0x80000000009411AD |
| mideleg | 0x0000000000001444 | 0x0000000000000444 |
| mip | 0x0000000000000080 | 0x0000000000000040 |
| mcycle | 0x0000000000011309 | 0x000000000006920D |
| minstret | 0x000000000001130A | 0x000000000003A392 |
| marchid | 0x0000000000000005 | 0x0000000000000001 |
| mimpid | 0x0000000000000000 | 0x0000000020181004 |



#### Dump Index 2 (#3 in sequence)

# Register Dump Differences

Differences found in: Core CSRs

## Core CSR Differences

Difference count: 7

| CSR | Spike | Rocket |
|-----|------|------|
| misa | 0x80000000001411AF | 0x80000000009411AD |
| mideleg | 0x0000000000001444 | 0x0000000000000444 |
| mip | 0x0000000000000080 | 0x0000000000000040 |
| mcycle | 0x000000000001AF9A | 0x00000000000A63EB |
| minstret | 0x000000000001AF9B | 0x000000000005BC5D |
| marchid | 0x0000000000000005 | 0x0000000000000001 |
| mimpid | 0x0000000000000000 | 0x0000000020181004 |



#### Dump Index 3 (#4 in sequence)

# Register Dump Differences

Differences found in: Integer Registers, Core CSRs

## Integer Register Differences

Difference count: 1 / 32

| Register | ABI Name | Spike | Rocket |
|----------|----------|------|------|
| x03 | gp | 0x000000001234ABCD | 0x00000000DEADBEEF |

## Core CSR Differences

Difference count: 8

| CSR | Spike | Rocket |
|-----|------|------|
| misa | 0x80000000001411AF | 0x80000000009411AD |
| mideleg | 0x0000000000001444 | 0x0000000000000444 |
| mepc | 0x0000000080002A16 | 0x0000000080002CEE |
| mip | 0x0000000000000080 | 0x0000000000000040 |
| mcycle | 0x000000000001D6A7 | 0x00000000000E35E6 |
| minstret | 0x000000000001D6A8 | 0x000000000007D549 |
| marchid | 0x0000000000000005 | 0x0000000000000001 |
| mimpid | 0x0000000000000000 | 0x0000000020181004 |



### Output Item Status Difference

Status: Spike has 26 items, Rocket has 32 items

### Exception Dump Differences

# Exception List Diff Report

Comparison: Spike vs Rocket

## Difference Summary

| Category | Count |
|----------|-------|
| Exceptions only in Spike | 0 |
| Exceptions only in Rocket | 3 |
| Matched exception pairs (total) | 9 |
| Matched exception pairs (with differences) | 9 |
| Categorized differences | 5 |

## Exceptions only in Rocket

Total: 3

| # | MEPC | Disassembly | Original Assembly | MCAUSE | Exception Description | MTVAL | Position |
|---|------|-------------|-------------------|--------|----------------------|-------|----------|
| 1 | 0x0000000080002CE2 | sw t0,0(t6) | sw t0,0(t6) | 0x0000000000000007 | Store/AMO access fault | 0x00000000FFFFFFEC | 2736 |
| 2 | 0x0000000080002CE6 | lw t0,0(t6) | lw t0,0(t6) | 0x0000000000000005 | Load access fault | 0x00000000FFFFFFEC | 2816 |
| 3 | 0x0000000080002CEA | amoxor.w.aqrl gp,s1,(t6) | amoxor.w.aqrl gp,s1,(t6) | 0x0000000000000007 | Store/AMO access fault | 0x00000000FFFFFFEC | 2896 |

## Matched Exception Difference Details

Pairs with differences: 9 / 9 pairs

### Pair 1 - MEPC: 0x0000000080002460

#### Triggering Instruction

| PC Address | Disassembly | Original Assembly |
|------------|-------------|-------------------|
| 0x0000000080002460 | sw t0,0(t6) | sw t0,0(t6) |

| Item | Spike | Rocket |
|------|------------|------------|
| Position | 0 | 0 |
| MCAUSE | 0x0000000000000007 | 0x0000000000000007 |
| Exception Description | Store/AMO access fault | Store/AMO access fault |

#### CSR Field Differences

| CSR Field | Spike | Rocket | Difference Description |
|-----------|------------|------------|----------------------|
| mip | 0x0000000000000080 | 0x0000000000000040 | Values differ |

### Pair 2 - MEPC: 0x0000000080002464

#### Triggering Instruction

| PC Address | Disassembly | Original Assembly |
|------------|-------------|-------------------|
| 0x0000000080002464 | lw t0,0(t6) | lw t0,0(t6) |

| Item | Spike | Rocket |
|------|------------|------------|
| Position | 80 | 80 |
| MCAUSE | 0x0000000000000005 | 0x0000000000000005 |
| Exception Description | Load access fault | Load access fault |

#### CSR Field Differences

| CSR Field | Spike | Rocket | Difference Description |
|-----------|------------|------------|----------------------|
| mip | 0x0000000000000080 | 0x0000000000000040 | Values differ |

### Pair 3 - MEPC: 0x0000000080002468

#### Triggering Instruction

| PC Address | Disassembly | Original Assembly |
|------------|-------------|-------------------|
| 0x0000000080002468 | amoxor.w.aqrl gp,s1,(t6) | amoxor.w.aqrl gp,s1,(t6) |

| Item | Spike | Rocket |
|------|------------|------------|
| Position | 160 | 160 |
| MCAUSE | 0x0000000000000007 | 0x0000000000000007 |
| Exception Description | Store/AMO access fault | Store/AMO access fault |

#### CSR Field Differences

| CSR Field | Spike | Rocket | Difference Description |
|-----------|------------|------------|----------------------|
| mip | 0x0000000000000080 | 0x0000000000000040 | Values differ |

### Pair 4 - MEPC: 0x0000000080002732

#### Triggering Instruction

| PC Address | Disassembly | Original Assembly |
|------------|-------------|-------------------|
| 0x0000000080002732 | sw t0,0(t6) | sw t0,0(t6) |

| Item | Spike | Rocket |
|------|------------|------------|
| Position | 912 | 912 |
| MCAUSE | 0x0000000000000006 | 0x0000000000000007 |
| Exception Description | Store/AMO address misaligned | Store/AMO access fault |

#### CSR Field Differences

| CSR Field | Spike | Rocket | Difference Description |
|-----------|------------|------------|----------------------|
| mcause | 0x0000000000000006 | 0x0000000000000007 | Store/AMO address misaligned vs Store/AMO access fault |
| mip | 0x0000000000000080 | 0x0000000000000040 | Values differ |

### Pair 5 - MEPC: 0x0000000080002736

#### Triggering Instruction

| PC Address | Disassembly | Original Assembly |
|------------|-------------|-------------------|
| 0x0000000080002736 | lw t0,0(t6) | lw t0,0(t6) |

| Item | Spike | Rocket |
|------|------------|------------|
| Position | 992 | 992 |
| MCAUSE | 0x0000000000000004 | 0x0000000000000005 |
| Exception Description | Load address misaligned | Load access fault |

#### CSR Field Differences

| CSR Field | Spike | Rocket | Difference Description |
|-----------|------------|------------|----------------------|
| mcause | 0x0000000000000004 | 0x0000000000000005 | Load address misaligned vs Load access fault |
| mip | 0x0000000000000080 | 0x0000000000000040 | Values differ |

### Pair 6 - MEPC: 0x000000008000273A

#### Triggering Instruction

| PC Address | Disassembly | Original Assembly |
|------------|-------------|-------------------|
| 0x000000008000273A | amoxor.w.aqrl gp,s1,(t6) | amoxor.w.aqrl gp,s1,(t6) |

| Item | Spike | Rocket |
|------|------------|------------|
| Position | 1072 | 1072 |
| MCAUSE | 0x0000000000000006 | 0x0000000000000007 |
| Exception Description | Store/AMO address misaligned | Store/AMO access fault |

#### CSR Field Differences

| CSR Field | Spike | Rocket | Difference Description |
|-----------|------------|------------|----------------------|
| mcause | 0x0000000000000006 | 0x0000000000000007 | Store/AMO address misaligned vs Store/AMO access fault |
| mip | 0x0000000000000080 | 0x0000000000000040 | Values differ |

### Pair 7 - MEPC: 0x0000000080002A0A

#### Triggering Instruction

| PC Address | Disassembly | Original Assembly |
|------------|-------------|-------------------|
| 0x0000000080002A0A | sw t0,0(t6) | sw t0,0(t6) |

| Item | Spike | Rocket |
|------|------------|------------|
| Position | 1824 | 1824 |
| MCAUSE | 0x0000000000000006 | 0x0000000000000007 |
| Exception Description | Store/AMO address misaligned | Store/AMO access fault |

#### CSR Field Differences

| CSR Field | Spike | Rocket | Difference Description |
|-----------|------------|------------|----------------------|
| mcause | 0x0000000000000006 | 0x0000000000000007 | Store/AMO address misaligned vs Store/AMO access fault |
| mip | 0x0000000000000080 | 0x0000000000000040 | Values differ |

### Pair 8 - MEPC: 0x0000000080002A0E

#### Triggering Instruction

| PC Address | Disassembly | Original Assembly |
|------------|-------------|-------------------|
| 0x0000000080002A0E | lw t0,0(t6) | lw t0,0(t6) |

| Item | Spike | Rocket |
|------|------------|------------|
| Position | 1904 | 1904 |
| MCAUSE | 0x0000000000000004 | 0x0000000000000005 |
| Exception Description | Load address misaligned | Load access fault |

#### CSR Field Differences

| CSR Field | Spike | Rocket | Difference Description |
|-----------|------------|------------|----------------------|
| mcause | 0x0000000000000004 | 0x0000000000000005 | Load address misaligned vs Load access fault |
| mip | 0x0000000000000080 | 0x0000000000000040 | Values differ |

### Pair 9 - MEPC: 0x0000000080002A12

#### Triggering Instruction

| PC Address | Disassembly | Original Assembly |
|------------|-------------|-------------------|
| 0x0000000080002A12 | amoxor.w.aqrl gp,s1,(t6) | amoxor.w.aqrl gp,s1,(t6) |

| Item | Spike | Rocket |
|------|------------|------------|
| Position | 1984 | 1984 |
| MCAUSE | 0x0000000000000006 | 0x0000000000000007 |
| Exception Description | Store/AMO address misaligned | Store/AMO access fault |

#### CSR Field Differences

| CSR Field | Spike | Rocket | Difference Description |
|-----------|------------|------------|----------------------|
| mcause | 0x0000000000000006 | 0x0000000000000007 | Store/AMO address misaligned vs Store/AMO access fault |
| mip | 0x0000000000000080 | 0x0000000000000040 | Values differ |

## Categorized Exception Difference Summary

Total differences: 18

### Category 1

Category: Fixed MIP Difference (Value1=0x80, Value2=0x40)
Occurrence count: 9
Affected PCs: 9 addresses

#### PC Address and Instruction List

| # | PC Address | Disassembly | Original Assembly |
|---|------------|-------------|-------------------|
| 1 | 0x0000000080002460 | sw t0,0(t6) | sw t0,0(t6) |
| 2 | 0x0000000080002464 | lw t0,0(t6) | lw t0,0(t6) |
| 3 | 0x0000000080002468 | amoxor.w.aqrl gp,s1,(t6) | amoxor.w.aqrl gp,s1,(t6) |
| 4 | 0x0000000080002732 | sw t0,0(t6) | sw t0,0(t6) |
| 5 | 0x0000000080002736 | lw t0,0(t6) | lw t0,0(t6) |
| 6 | 0x000000008000273A | amoxor.w.aqrl gp,s1,(t6) | amoxor.w.aqrl gp,s1,(t6) |
| 7 | 0x0000000080002A0A | sw t0,0(t6) | sw t0,0(t6) |
| 8 | 0x0000000080002A0E | lw t0,0(t6) | lw t0,0(t6) |
| 9 | 0x0000000080002A12 | amoxor.w.aqrl gp,s1,(t6) | amoxor.w.aqrl gp,s1,(t6) |

#### Description

Description: MIP register value has fixed difference between simulators.



### Category 2

Category: MCAUSE Difference (Cause1: Store/AMO address misaligned vs Cause2: Store/AMO access fault)
Occurrence count: 4
Affected PCs: 4 addresses

#### PC Address and Instruction List

| # | PC Address | Disassembly | Original Assembly |
|---|------------|-------------|-------------------|
| 1 | 0x0000000080002732 | sw t0,0(t6) | sw t0,0(t6) |
| 2 | 0x000000008000273A | amoxor.w.aqrl gp,s1,(t6) | amoxor.w.aqrl gp,s1,(t6) |
| 3 | 0x0000000080002A0A | sw t0,0(t6) | sw t0,0(t6) |
| 4 | 0x0000000080002A12 | amoxor.w.aqrl gp,s1,(t6) | amoxor.w.aqrl gp,s1,(t6) |

#### Description

Description: Same operation caused different exception causes.



### Category 3

Category: Only in Rocket (mcause: 0x7 - Store/AMO access fault)
Occurrence count: 2
Affected PCs: 2 addresses

#### PC Address and Instruction List

| # | PC Address | Disassembly | Original Assembly |
|---|------------|-------------|-------------------|
| 1 | 0x0000000080002CE2 | sw t0,0(t6) | sw t0,0(t6) |
| 2 | 0x0000000080002CEA | amoxor.w.aqrl gp,s1,(t6) | amoxor.w.aqrl gp,s1,(t6) |

#### Description

Description: Exception only triggered in Rocket, the other simulator continues execution or has no exception at this point.



### Category 4

Category: MCAUSE Difference (Cause1: Load address misaligned vs Cause2: Load access fault)
Occurrence count: 2
Affected PCs: 2 addresses

#### PC Address and Instruction List

| # | PC Address | Disassembly | Original Assembly |
|---|------------|-------------|-------------------|
| 1 | 0x0000000080002736 | lw t0,0(t6) | lw t0,0(t6) |
| 2 | 0x0000000080002A0E | lw t0,0(t6) | lw t0,0(t6) |

#### Description

Description: Same operation caused different exception causes.



### Category 5

Category: Only in Rocket (mcause: 0x5 - Load access fault)
Occurrence count: 1
Affected PCs: 1 addresses

#### PC Address and Instruction List

| # | PC Address | Disassembly | Original Assembly |
|---|------------|-------------|-------------------|
| 1 | 0x0000000080002CE6 | lw t0,0(t6) | lw t0,0(t6) |

#### Description

Description: Exception only triggered in Rocket, the other simulator continues execution or has no exception at this point.


---
Exception diff report generated at: 2025-06-24 17:46:29 UTC


