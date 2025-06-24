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

Difference count: 6

| CSR | Spike | Rocket |
|-----|------|------|
| misa | 0x80000000001411AF | 0x80000000009411AD |
| mideleg | 0x0000000000001444 | 0x0000000000000444 |
| mip | 0x0000000000000080 | 0x0000000000000000 |
| mcycle | 0x00000000000000EB | 0x00000000000003EF |
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
| mip | 0x0000000000000080 | 0x0000000000000000 |
| mcycle | 0x000000000000C3F4 | 0x000000000004C127 |
| minstret | 0x000000000000C3F5 | 0x0000000000029BFC |
| marchid | 0x0000000000000005 | 0x0000000000000001 |
| mimpid | 0x0000000000000000 | 0x0000000020181004 |



#### Dump Index 2 (#3 in sequence)

# Register Dump Differences

Differences found in: Core CSRs

## Core CSR Differences

Difference count: 8

| CSR | Spike | Rocket |
|-----|------|------|
| misa | 0x80000000001411AF | 0x80000000009411AD |
| mideleg | 0x0000000000001444 | 0x0000000000000444 |
| mepc | 0x0000000080002A24 | 0x000000008000275A |
| mip | 0x0000000000000080 | 0x0000000000000000 |
| mcycle | 0x0000000000011229 | 0x000000000005D74B |
| minstret | 0x000000000001122A | 0x00000000000328F2 |
| marchid | 0x0000000000000005 | 0x0000000000000001 |
| mimpid | 0x0000000000000000 | 0x0000000020181004 |



#### Dump Index 3 (#4 in sequence)

# Register Dump Differences

Differences found in: Integer Registers, Core CSRs

## Integer Register Differences

Difference count: 1 / 32

| Register | ABI Name | Spike | Rocket |
|----------|----------|------|------|
| x28 | t3 | 0x0000000000000000 | 0x000000000000004E |

## Core CSR Differences

Difference count: 8

| CSR | Spike | Rocket |
|-----|------|------|
| misa | 0x80000000001411AF | 0x80000000009411AD |
| mideleg | 0x0000000000001444 | 0x0000000000000444 |
| mepc | 0x0000000080002CE4 | 0x000000008000275A |
| mip | 0x0000000000000080 | 0x0000000000000000 |
| mcycle | 0x000000000001605B | 0x000000000006E9E7 |
| minstret | 0x000000000001605C | 0x000000000003B5FA |
| marchid | 0x0000000000000005 | 0x0000000000000001 |
| mimpid | 0x0000000000000000 | 0x0000000020181004 |



### Output Item Status Difference

Status: Spike has 20 items, Rocket has 16 items

### Exception Dump Differences

# Exception List Diff Report

Comparison: Spike vs Rocket

## Difference Summary

| Category | Count |
|----------|-------|
| Exceptions only in Spike | 2 |
| Exceptions only in Rocket | 0 |
| Matched exception pairs (total) | 4 |
| Matched exception pairs (with differences) | 4 |
| Categorized differences | 3 |

## Exceptions only in Spike

Total: 2

| # | MEPC | Disassembly | Original Assembly | MCAUSE | Exception Description | MTVAL | Position |
|---|------|-------------|-------------------|--------|----------------------|-------|----------|
| 1 | 0x0000000080002A20 | sb a0,-1717(s11) | sb x10, -1717(x27) | 0x0000000000000007 | Store/AMO access fault | 0x000000007FFFF94A | 1664 |
| 2 | 0x0000000080002CE0 | lbu t3,-1717(s11) | lbu x28, -1717(x27) | 0x0000000000000005 | Load access fault | 0x000000007FFFF94A | 2416 |

## Matched Exception Difference Details

Pairs with differences: 4 / 4 pairs

### Pair 1 - MEPC: 0x000000008000274A

#### Triggering Instruction

| PC Address | Disassembly | Original Assembly |
|------------|-------------|-------------------|
| 0x000000008000274A | flw ft4,-1724(t4) | flw f4, -1724(x29) |

| Item | Spike | Rocket |
|------|------------|------------|
| Position | 672 | 672 |
| MCAUSE | 0x0000000000000005 | 0x0000000000000005 |
| Exception Description | Load access fault | Load access fault |

#### CSR Field Differences

| CSR Field | Spike | Rocket | Difference Description |
|-----------|------------|------------|----------------------|
| mip | 0x0000000000000080 | 0x0000000000000000 | Values differ |

### Pair 2 - MEPC: 0x000000008000274E

#### Triggering Instruction

| PC Address | Disassembly | Original Assembly |
|------------|-------------|-------------------|
| 0x000000008000274E | ld t6,1632(a4) | ld x31, 1632(x14) |

| Item | Spike | Rocket |
|------|------------|------------|
| Position | 752 | 752 |
| MCAUSE | 0x0000000000000005 | 0x0000000000000005 |
| Exception Description | Load access fault | Load access fault |

#### CSR Field Differences

| CSR Field | Spike | Rocket | Difference Description |
|-----------|------------|------------|----------------------|
| mip | 0x0000000000000080 | 0x0000000000000000 | Values differ |

### Pair 3 - MEPC: 0x0000000080002752

#### Triggering Instruction

| PC Address | Disassembly | Original Assembly |
|------------|-------------|-------------------|
| 0x0000000080002752 | lb s6,750(s0) | lb x22, 750(x8) |

| Item | Spike | Rocket |
|------|------------|------------|
| Position | 832 | 832 |
| MCAUSE | 0x0000000000000005 | 0x0000000000000005 |
| Exception Description | Load access fault | Load access fault |

#### CSR Field Differences

| CSR Field | Spike | Rocket | Difference Description |
|-----------|------------|------------|----------------------|
| mip | 0x0000000000000080 | 0x0000000000000000 | Values differ |

### Pair 4 - MEPC: 0x0000000080002756

#### Triggering Instruction

| PC Address | Disassembly | Original Assembly |
|------------|-------------|-------------------|
| 0x0000000080002756 | lbu s8,-1467(s10) | lbu x24, -1467(x26) |

| Item | Spike | Rocket |
|------|------------|------------|
| Position | 912 | 912 |
| MCAUSE | 0x0000000000000005 | 0x0000000000000005 |
| Exception Description | Load access fault | Load access fault |

#### CSR Field Differences

| CSR Field | Spike | Rocket | Difference Description |
|-----------|------------|------------|----------------------|
| mip | 0x0000000000000080 | 0x0000000000000000 | Values differ |

## Categorized Exception Difference Summary

Total differences: 6

### Category 1

Category: Fixed MIP Difference (Value1=0x80, Value2=0x0)
Occurrence count: 4
Affected PCs: 4 addresses

#### PC Address and Instruction List

| # | PC Address | Disassembly | Original Assembly |
|---|------------|-------------|-------------------|
| 1 | 0x000000008000274A | flw ft4,-1724(t4) | flw f4, -1724(x29) |
| 2 | 0x000000008000274E | ld t6,1632(a4) | ld x31, 1632(x14) |
| 3 | 0x0000000080002752 | lb s6,750(s0) | lb x22, 750(x8) |
| 4 | 0x0000000080002756 | lbu s8,-1467(s10) | lbu x24, -1467(x26) |

#### Description

Description: MIP register value has fixed difference between simulators.



### Category 2

Category: Only in Spike (mcause: 0x7 - Store/AMO access fault)
Occurrence count: 1
Affected PCs: 1 addresses

#### PC Address and Instruction List

| # | PC Address | Disassembly | Original Assembly |
|---|------------|-------------|-------------------|
| 1 | 0x0000000080002A20 | sb a0,-1717(s11) | sb x10, -1717(x27) |

#### Description

Description: Exception only triggered in Spike, the other simulator continues execution or has no exception at this point.



### Category 3

Category: Only in Spike (mcause: 0x5 - Load access fault)
Occurrence count: 1
Affected PCs: 1 addresses

#### PC Address and Instruction List

| # | PC Address | Disassembly | Original Assembly |
|---|------------|-------------|-------------------|
| 1 | 0x0000000080002CE0 | lbu t3,-1717(s11) | lbu x28, -1717(x27) |

#### Description

Description: Exception only triggered in Spike, the other simulator continues execution or has no exception at this point.


---
Exception diff report generated at: 2025-06-24 15:38:22 UTC


