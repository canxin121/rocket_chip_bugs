# Common Execution Output Diff Report

Comparison: Spike vs Rocket

## Differences Detected

| Diff Type | Count |
|----------|------|
| Register Dump Count | Count Mismatch |
| Output Item Status | Item count or content differs |
| Exception Dumps | Exception information differs |

## Detailed Diff Analysis

### Register Dump Count Difference

Spike: 0
Rocket: 1

### Output Item Status Difference

Status: Spike has 2 items, Rocket has 6 items

### Exception Dump Differences

# Exception List Diff Report

Comparison: Spike vs Rocket

## Difference Summary

| Category | Count |
|----------|-------|
| Exceptions only in Spike | 0 |
| Exceptions only in Rocket | 1 |
| Matched exception pairs (total) | 1 |
| Matched exception pairs (with differences) | 1 |
| Categorized differences | 2 |

## Exceptions only in Rocket

Total: 1

| # | MEPC | Disassembly | Original Assembly | MCAUSE | Exception Description | MTVAL | Position |
|---|------|-------------|-------------------|--------|----------------------|-------|----------|
| 1 | 0x000000008000245A | hlv.hu t2,(s5) | hlv.hu x7, 0(x21) | 0x0000000000000005 | Load access fault | 0x0000000000000000 | 80 |

## Matched Exception Difference Details

Pairs with differences: 1 / 1 pairs

### Pair 1 - MEPC: 0x000000008000244A

#### Triggering Instruction

| PC Address | Disassembly | Original Assembly |
|------------|-------------|-------------------|
| 0x000000008000244A | amoand.d.rl t3,sp,(a4) | amoand.d.rl x28, x2, (x14) |

| Item | Spike | Rocket |
|------|------------|------------|
| Position | 0 | 0 |
| MCAUSE | 0x0000000000000007 | 0x0000000000000007 |
| Exception Description | Store/AMO access fault | Store/AMO access fault |

#### CSR Field Differences

| CSR Field | Spike | Rocket | Difference Description |
|-----------|------------|------------|----------------------|
| mip | 0x0000000000000080 | 0x0000000000000440 | Values differ |

## Categorized Exception Difference Summary

Total differences: 2

### Category 1

Category: Only in Rocket (mcause: 0x5 - Load access fault)
Occurrence count: 1
Affected PCs: 1 addresses

#### PC Address and Instruction List

| # | PC Address | Disassembly | Original Assembly |
|---|------------|-------------|-------------------|
| 1 | 0x000000008000245A | hlv.hu t2,(s5) | hlv.hu x7, 0(x21) |

#### Description

Description: Exception only triggered in Rocket, the other simulator continues execution or has no exception at this point.



### Category 2

Category: Fixed MIP Difference (Value1=0x80, Value2=0x440)
Occurrence count: 1
Affected PCs: 1 addresses

#### PC Address and Instruction List

| # | PC Address | Disassembly | Original Assembly |
|---|------------|-------------|-------------------|
| 1 | 0x000000008000244A | amoand.d.rl t3,sp,(a4) | amoand.d.rl x28, x2, (x14) |

#### Description

Description: MIP register value has fixed difference between simulators.


---
Exception diff report generated at: 2025-06-25 08:30:06 UTC


