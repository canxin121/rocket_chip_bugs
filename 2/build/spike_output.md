# 🔍 RISC-V Common Execution Output Analysis

**Emulator Type:** `Spike`

## 📊 Basic Information

| Item | Value |
|------|-------|
| Raw Data Size | `3408 bytes` |
| Total Output Items | `26` |
| Register Dump Count | `4` |
| Exception Dump Count | `9` |

## 📋 Output Item Details

### 📈 Type Statistics

| Type | Count | Description |
|------|-------|-------------|
| 📝 ASCII Text Items | `0` | Readable text output |
| 🔻 Magic Marker Items | `13` | Data segment markers |
| 📋 Register Data Items | `4` | Register dump data |
| 🚨 Exception Data Items | `9` | Exception and interrupt info |
| ❓ Unknown Binary Items | `0` | Unrecognized binary data |

### 🔍 Item Details (Complete List)

**[1]** 🔻 **Marker:** `Exception CSR dump` (`0x00000BADC0DE1000`) @position`0`
**[2]** 🚨 **Exception Data** @position`0`
**[3]** 🔻 **Marker:** `Exception CSR dump` (`0x00000BADC0DE1000`) @position`80`
**[4]** 🚨 **Exception Data** @position`80`
**[5]** 🔻 **Marker:** `Exception CSR dump` (`0x00000BADC0DE1000`) @position`160`
**[6]** 🚨 **Exception Data** @position`160`
**[7]** 🔻 **Marker:** `Integer + floating-point register dump` (`0x0000FEEDC0DE1000`) @position`240`
**[8]** 📋 **Registers:** `Integer + floating-point register dump` (83 registers) @position`240`
**[9]** 🔻 **Marker:** `Exception CSR dump` (`0x00000BADC0DE1000`) @position`912`
**[10]** 🚨 **Exception Data** @position`912`
**[11]** 🔻 **Marker:** `Exception CSR dump` (`0x00000BADC0DE1000`) @position`992`
**[12]** 🚨 **Exception Data** @position`992`
**[13]** 🔻 **Marker:** `Exception CSR dump` (`0x00000BADC0DE1000`) @position`1072`
**[14]** 🚨 **Exception Data** @position`1072`
**[15]** 🔻 **Marker:** `Integer + floating-point register dump` (`0x0000FEEDC0DE1000`) @position`1152`
**[16]** 📋 **Registers:** `Integer + floating-point register dump` (83 registers) @position`1152`
**[17]** 🔻 **Marker:** `Exception CSR dump` (`0x00000BADC0DE1000`) @position`1824`
**[18]** 🚨 **Exception Data** @position`1824`
**[19]** 🔻 **Marker:** `Exception CSR dump` (`0x00000BADC0DE1000`) @position`1904`
**[20]** 🚨 **Exception Data** @position`1904`
**[21]** 🔻 **Marker:** `Exception CSR dump` (`0x00000BADC0DE1000`) @position`1984`
**[22]** 🚨 **Exception Data** @position`1984`
**[23]** 🔻 **Marker:** `Integer + floating-point register dump` (`0x0000FEEDC0DE1000`) @position`2064`
**[24]** 📋 **Registers:** `Integer + floating-point register dump` (83 registers) @position`2064`
**[25]** 🔻 **Marker:** `Integer + floating-point register dump` (`0x0000FEEDC0DE1000`) @position`2736`
**[26]** 📋 **Registers:** `Integer + floating-point register dump` (83 registers) @position`2736`

## 📋 `Spike` Register Dump Details

### 📊 Register Dump #1 (Position: `240`)

**Dump Type:** `Integer + floating-point register dump`

#### 🔢 All Integer Registers (x0-x31)

| Register | ABI Name | Value | Description |
|----------|----------|-------|-------------|
| `x00` | `zero` | `0x0000000000000000` | Zero register |
| `x01` | `  ra` | `0x0000000000000000` | Return address |
| `x02` | `  sp` | `0x0000000000000000` | Stack pointer |
| `x03` | `  gp` | `0x00000000DEADBEEF` | Global pointer |
| `x04` | `  tp` | `0x0000000000000000` | Thread pointer |
| `x05` | `  t0` | `0x000000001234ABCD` | Temporary register |
| `x06` | `  t1` | `0x0000000000000000` | Temporary register |
| `x07` | `  t2` | `0x0000000000000000` | Temporary register |
| `x08` | `  s0` | `0x0000000000000000` | Frame pointer/Saved register |
| `x09` | `  s1` | `0x000000000000000D` | Saved register |
| `x10` | `  a0` | `0x0000000000000000` | Function argument/return value |
| `x11` | `  a1` | `0x0000000000000000` | Function argument/return value |
| `x12` | `  a2` | `0x0000000000000000` | Function argument |
| `x13` | `  a3` | `0x0000000000000000` | Function argument |
| `x14` | `  a4` | `0x0000000000000000` | Function argument |
| `x15` | `  a5` | `0x0000000000000000` | Function argument |
| `x16` | `  a6` | `0x0000000000000000` | Function argument |
| `x17` | `  a7` | `0x0000000000000000` | Function argument |
| `x18` | `  s2` | `0x0000000000000000` | Saved register |
| `x19` | `  s3` | `0x0000000000000000` | Saved register |
| `x20` | `  s4` | `0x0000000000000000` | Saved register |
| `x21` | `  s5` | `0x0000000000000000` | Saved register |
| `x22` | `  s6` | `0x0000000000000000` | Saved register |
| `x23` | `  s7` | `0x0000000000000000` | Saved register |
| `x24` | `  s8` | `0x0000000000000000` | Saved register |
| `x25` | `  s9` | `0x0000000000000000` | Saved register |
| `x26` | ` s10` | `0x0000000000000000` | Saved register |
| `x27` | ` s11` | `0x0000000000000000` | Saved register |
| `x28` | `  t3` | `0x0000000000000000` | Temporary register |
| `x29` | `  t4` | `0x0000000000000000` | Temporary register |
| `x30` | `  t5` | `0x0000000000000000` | Temporary register |
| `x31` | `  t6` | `0x0000000000000004` | Temporary register |

#### ⚙️ All Core CSR Registers

| CSR Register | Value | Description |
|--------------|-------|-------------|
| `mstatus` | `0x8000000A00006080` | Machine status register |
| `misa` | `0x80000000001411AF` | ISA and extensions |
| `medeleg` | `0x0000000000000000` | Machine exception delegation |
| `mideleg` | `0x0000000000001444` | Machine interrupt delegation |
| `mie` | `0x0000000000000000` | Machine interrupt enable |
| `mtvec` | `0x0000000080002000` | Machine trap vector base address |
| `mcounteren` | `0x0000000000000000` | Machine counter enable |
| `mscratch` | `0x0000000000000004` | Machine scratch register |
| `mepc` | `0x0000000080002468` | Machine exception program counter |
| `mcause` | `0x0000000000000000` | Machine trap cause |
| `mtval` | `0x0000000000000000` | Machine bad address or instruction |
| `mip` | `0x0000000000000080` | Machine interrupt pending |
| `mcycle` | `0x0000000000007678` | Machine cycle counter |
| `minstret` | `0x0000000000007679` | Machine instructions retired counter |
| `mvendorid` | `0x0000000000000000` | Vendor ID |
| `marchid` | `0x0000000000000005` | Architecture ID |
| `mimpid` | `0x0000000000000000` | Implementation ID |
| `mhartid` | `0x0000000000000000` | Hardware thread ID |

#### 🔣 All Floating-Point Registers (f0-f31)

| Register | ABI Name | Value | Description |
|----------|----------|-------|-------------|
| `f00` | ` ft0` | `0x0000000000000000` | Temporary floating-point register |
| `f01` | ` ft1` | `0x0000000000000000` | Temporary floating-point register |
| `f02` | ` ft2` | `0x0000000000000000` | Temporary floating-point register |
| `f03` | ` ft3` | `0x0000000000000000` | Temporary floating-point register |
| `f04` | ` ft4` | `0x0000000000000000` | Temporary floating-point register |
| `f05` | ` ft5` | `0x0000000000000000` | Temporary floating-point register |
| `f06` | ` ft6` | `0x0000000000000000` | Temporary floating-point register |
| `f07` | ` ft7` | `0x0000000000000000` | Temporary floating-point register |
| `f08` | ` fs0` | `0x0000000000000000` | Saved floating-point register |
| `f09` | ` fs1` | `0x0000000000000000` | Saved floating-point register |
| `f10` | ` fa0` | `0x0000000000000000` | Floating-point argument/return value |
| `f11` | ` fa1` | `0x0000000000000000` | Floating-point argument/return value |
| `f12` | ` fa2` | `0x0000000000000000` | Floating-point argument/return value |
| `f13` | ` fa3` | `0x0000000000000000` | Floating-point argument/return value |
| `f14` | ` fa4` | `0x0000000000000000` | Floating-point argument/return value |
| `f15` | ` fa5` | `0x0000000000000000` | Floating-point argument/return value |
| `f16` | ` fa6` | `0x0000000000000000` | Floating-point argument/return value |
| `f17` | ` fa7` | `0x0000000000000000` | Floating-point argument/return value |
| `f18` | ` fs2` | `0x0000000000000000` | Saved floating-point register |
| `f19` | ` fs3` | `0x0000000000000000` | Saved floating-point register |
| `f20` | ` fs4` | `0x0000000000000000` | Saved floating-point register |
| `f21` | ` fs5` | `0x0000000000000000` | Saved floating-point register |
| `f22` | ` fs6` | `0x0000000000000000` | Saved floating-point register |
| `f23` | ` fs7` | `0x0000000000000000` | Saved floating-point register |
| `f24` | ` fs8` | `0x0000000000000000` | Saved floating-point register |
| `f25` | ` fs9` | `0x0000000000000000` | Saved floating-point register |
| `f26` | `fs10` | `0x0000000000000000` | Saved floating-point register |
| `f27` | `fs11` | `0x0000000000000000` | Saved floating-point register |
| `f28` | ` ft8` | `0x0000000000000000` | Temporary floating-point register |
| `f29` | ` ft9` | `0x0000000000000000` | Temporary floating-point register |
| `f30` | `ft10` | `0x0000000000000000` | Temporary floating-point register |
| `f31` | `ft11` | `0x0000000000000000` | Temporary floating-point register |

**Floating-Point Control and Status Register:** `fcsr = 0x0000000000000000`

> **Statistics:** Non-zero integer registers: `4/31`
> Non-zero floating-point registers: `0/32`


### 📊 Register Dump #2 (Position: `1152`)

**Dump Type:** `Integer + floating-point register dump`

#### 🔢 All Integer Registers (x0-x31)

| Register | ABI Name | Value | Description |
|----------|----------|-------|-------------|
| `x00` | `zero` | `0x0000000000000000` | Zero register |
| `x01` | `  ra` | `0x0000000000000000` | Return address |
| `x02` | `  sp` | `0x0000000000000000` | Stack pointer |
| `x03` | `  gp` | `0x00000000DEADBEEF` | Global pointer |
| `x04` | `  tp` | `0x0000000000000000` | Thread pointer |
| `x05` | `  t0` | `0x000000001234ABCD` | Temporary register |
| `x06` | `  t1` | `0x0000000000000000` | Temporary register |
| `x07` | `  t2` | `0x0000000000000000` | Temporary register |
| `x08` | `  s0` | `0x0000000000000000` | Frame pointer/Saved register |
| `x09` | `  s1` | `0x000000000000000D` | Saved register |
| `x10` | `  a0` | `0x0000000000000000` | Function argument/return value |
| `x11` | `  a1` | `0x0000000000000000` | Function argument/return value |
| `x12` | `  a2` | `0x0000000000000000` | Function argument |
| `x13` | `  a3` | `0x0000000000000000` | Function argument |
| `x14` | `  a4` | `0x0000000000000000` | Function argument |
| `x15` | `  a5` | `0x0000000000000000` | Function argument |
| `x16` | `  a6` | `0x0000000000000000` | Function argument |
| `x17` | `  a7` | `0x0000000000000000` | Function argument |
| `x18` | `  s2` | `0x0000000000000000` | Saved register |
| `x19` | `  s3` | `0x0000000000000000` | Saved register |
| `x20` | `  s4` | `0x0000000000000000` | Saved register |
| `x21` | `  s5` | `0x0000000000000000` | Saved register |
| `x22` | `  s6` | `0x0000000000000000` | Saved register |
| `x23` | `  s7` | `0x0000000000000000` | Saved register |
| `x24` | `  s8` | `0x0000000000000000` | Saved register |
| `x25` | `  s9` | `0x0000000000000000` | Saved register |
| `x26` | ` s10` | `0x0000000000000000` | Saved register |
| `x27` | ` s11` | `0x0000000000000000` | Saved register |
| `x28` | `  t3` | `0x0000000000000000` | Temporary register |
| `x29` | `  t4` | `0x0000000000000000` | Temporary register |
| `x30` | `  t5` | `0x0000000000000000` | Temporary register |
| `x31` | `  t6` | `0x0000000000000005` | Temporary register |

#### ⚙️ All Core CSR Registers

| CSR Register | Value | Description |
|--------------|-------|-------------|
| `mstatus` | `0x8000000A00006080` | Machine status register |
| `misa` | `0x80000000001411AF` | ISA and extensions |
| `medeleg` | `0x0000000000000000` | Machine exception delegation |
| `mideleg` | `0x0000000000001444` | Machine interrupt delegation |
| `mie` | `0x0000000000000000` | Machine interrupt enable |
| `mtvec` | `0x0000000080002000` | Machine trap vector base address |
| `mcounteren` | `0x0000000000000000` | Machine counter enable |
| `mscratch` | `0x0000000000000005` | Machine scratch register |
| `mepc` | `0x0000000080002736` | Machine exception program counter |
| `mcause` | `0x0000000000000000` | Machine trap cause |
| `mtval` | `0x0000000000000000` | Machine bad address or instruction |
| `mip` | `0x0000000000000080` | Machine interrupt pending |
| `mcycle` | `0x0000000000011303` | Machine cycle counter |
| `minstret` | `0x0000000000011304` | Machine instructions retired counter |
| `mvendorid` | `0x0000000000000000` | Vendor ID |
| `marchid` | `0x0000000000000005` | Architecture ID |
| `mimpid` | `0x0000000000000000` | Implementation ID |
| `mhartid` | `0x0000000000000000` | Hardware thread ID |

#### 🔣 All Floating-Point Registers (f0-f31)

| Register | ABI Name | Value | Description |
|----------|----------|-------|-------------|
| `f00` | ` ft0` | `0x0000000000000000` | Temporary floating-point register |
| `f01` | ` ft1` | `0x0000000000000000` | Temporary floating-point register |
| `f02` | ` ft2` | `0x0000000000000000` | Temporary floating-point register |
| `f03` | ` ft3` | `0x0000000000000000` | Temporary floating-point register |
| `f04` | ` ft4` | `0x0000000000000000` | Temporary floating-point register |
| `f05` | ` ft5` | `0x0000000000000000` | Temporary floating-point register |
| `f06` | ` ft6` | `0x0000000000000000` | Temporary floating-point register |
| `f07` | ` ft7` | `0x0000000000000000` | Temporary floating-point register |
| `f08` | ` fs0` | `0x0000000000000000` | Saved floating-point register |
| `f09` | ` fs1` | `0x0000000000000000` | Saved floating-point register |
| `f10` | ` fa0` | `0x0000000000000000` | Floating-point argument/return value |
| `f11` | ` fa1` | `0x0000000000000000` | Floating-point argument/return value |
| `f12` | ` fa2` | `0x0000000000000000` | Floating-point argument/return value |
| `f13` | ` fa3` | `0x0000000000000000` | Floating-point argument/return value |
| `f14` | ` fa4` | `0x0000000000000000` | Floating-point argument/return value |
| `f15` | ` fa5` | `0x0000000000000000` | Floating-point argument/return value |
| `f16` | ` fa6` | `0x0000000000000000` | Floating-point argument/return value |
| `f17` | ` fa7` | `0x0000000000000000` | Floating-point argument/return value |
| `f18` | ` fs2` | `0x0000000000000000` | Saved floating-point register |
| `f19` | ` fs3` | `0x0000000000000000` | Saved floating-point register |
| `f20` | ` fs4` | `0x0000000000000000` | Saved floating-point register |
| `f21` | ` fs5` | `0x0000000000000000` | Saved floating-point register |
| `f22` | ` fs6` | `0x0000000000000000` | Saved floating-point register |
| `f23` | ` fs7` | `0x0000000000000000` | Saved floating-point register |
| `f24` | ` fs8` | `0x0000000000000000` | Saved floating-point register |
| `f25` | ` fs9` | `0x0000000000000000` | Saved floating-point register |
| `f26` | `fs10` | `0x0000000000000000` | Saved floating-point register |
| `f27` | `fs11` | `0x0000000000000000` | Saved floating-point register |
| `f28` | ` ft8` | `0x0000000000000000` | Temporary floating-point register |
| `f29` | ` ft9` | `0x0000000000000000` | Temporary floating-point register |
| `f30` | `ft10` | `0x0000000000000000` | Temporary floating-point register |
| `f31` | `ft11` | `0x0000000000000000` | Temporary floating-point register |

**Floating-Point Control and Status Register:** `fcsr = 0x0000000000000000`

> **Statistics:** Non-zero integer registers: `4/31`
> Non-zero floating-point registers: `0/32`


### 📊 Register Dump #3 (Position: `2064`)

**Dump Type:** `Integer + floating-point register dump`

#### 🔢 All Integer Registers (x0-x31)

| Register | ABI Name | Value | Description |
|----------|----------|-------|-------------|
| `x00` | `zero` | `0x0000000000000000` | Zero register |
| `x01` | `  ra` | `0x0000000000000000` | Return address |
| `x02` | `  sp` | `0x0000000000000000` | Stack pointer |
| `x03` | `  gp` | `0x00000000DEADBEEF` | Global pointer |
| `x04` | `  tp` | `0x0000000000000000` | Thread pointer |
| `x05` | `  t0` | `0x000000001234ABCD` | Temporary register |
| `x06` | `  t1` | `0x0000000000000000` | Temporary register |
| `x07` | `  t2` | `0x0000000000000000` | Temporary register |
| `x08` | `  s0` | `0x0000000000000000` | Frame pointer/Saved register |
| `x09` | `  s1` | `0x000000000000000D` | Saved register |
| `x10` | `  a0` | `0x0000000000000000` | Function argument/return value |
| `x11` | `  a1` | `0x0000000000000000` | Function argument/return value |
| `x12` | `  a2` | `0x0000000000000000` | Function argument |
| `x13` | `  a3` | `0x0000000000000000` | Function argument |
| `x14` | `  a4` | `0x0000000000000000` | Function argument |
| `x15` | `  a5` | `0x0000000000000000` | Function argument |
| `x16` | `  a6` | `0x0000000000000000` | Function argument |
| `x17` | `  a7` | `0x0000000000000000` | Function argument |
| `x18` | `  s2` | `0x0000000000000000` | Saved register |
| `x19` | `  s3` | `0x0000000000000000` | Saved register |
| `x20` | `  s4` | `0x0000000000000000` | Saved register |
| `x21` | `  s5` | `0x0000000000000000` | Saved register |
| `x22` | `  s6` | `0x0000000000000000` | Saved register |
| `x23` | `  s7` | `0x0000000000000000` | Saved register |
| `x24` | `  s8` | `0x0000000000000000` | Saved register |
| `x25` | `  s9` | `0x0000000000000000` | Saved register |
| `x26` | ` s10` | `0x0000000000000000` | Saved register |
| `x27` | ` s11` | `0x0000000000000000` | Saved register |
| `x28` | `  t3` | `0x0000000000000000` | Temporary register |
| `x29` | `  t4` | `0x0000000000000000` | Temporary register |
| `x30` | `  t5` | `0x0000000000000000` | Temporary register |
| `x31` | `  t6` | `0x00000000FFFFFFE1` | Temporary register |

#### ⚙️ All Core CSR Registers

| CSR Register | Value | Description |
|--------------|-------|-------------|
| `mstatus` | `0x8000000A00006080` | Machine status register |
| `misa` | `0x80000000001411AF` | ISA and extensions |
| `medeleg` | `0x0000000000000000` | Machine exception delegation |
| `mideleg` | `0x0000000000001444` | Machine interrupt delegation |
| `mie` | `0x0000000000000000` | Machine interrupt enable |
| `mtvec` | `0x0000000080002000` | Machine trap vector base address |
| `mcounteren` | `0x0000000000000000` | Machine counter enable |
| `mscratch` | `0x00000000FFFFFFE1` | Machine scratch register |
| `mepc` | `0x0000000080002A0A` | Machine exception program counter |
| `mcause` | `0x0000000000000000` | Machine trap cause |
| `mtval` | `0x0000000000000000` | Machine bad address or instruction |
| `mip` | `0x0000000000000080` | Machine interrupt pending |
| `mcycle` | `0x000000000001AF90` | Machine cycle counter |
| `minstret` | `0x000000000001AF91` | Machine instructions retired counter |
| `mvendorid` | `0x0000000000000000` | Vendor ID |
| `marchid` | `0x0000000000000005` | Architecture ID |
| `mimpid` | `0x0000000000000000` | Implementation ID |
| `mhartid` | `0x0000000000000000` | Hardware thread ID |

#### 🔣 All Floating-Point Registers (f0-f31)

| Register | ABI Name | Value | Description |
|----------|----------|-------|-------------|
| `f00` | ` ft0` | `0x0000000000000000` | Temporary floating-point register |
| `f01` | ` ft1` | `0x0000000000000000` | Temporary floating-point register |
| `f02` | ` ft2` | `0x0000000000000000` | Temporary floating-point register |
| `f03` | ` ft3` | `0x0000000000000000` | Temporary floating-point register |
| `f04` | ` ft4` | `0x0000000000000000` | Temporary floating-point register |
| `f05` | ` ft5` | `0x0000000000000000` | Temporary floating-point register |
| `f06` | ` ft6` | `0x0000000000000000` | Temporary floating-point register |
| `f07` | ` ft7` | `0x0000000000000000` | Temporary floating-point register |
| `f08` | ` fs0` | `0x0000000000000000` | Saved floating-point register |
| `f09` | ` fs1` | `0x0000000000000000` | Saved floating-point register |
| `f10` | ` fa0` | `0x0000000000000000` | Floating-point argument/return value |
| `f11` | ` fa1` | `0x0000000000000000` | Floating-point argument/return value |
| `f12` | ` fa2` | `0x0000000000000000` | Floating-point argument/return value |
| `f13` | ` fa3` | `0x0000000000000000` | Floating-point argument/return value |
| `f14` | ` fa4` | `0x0000000000000000` | Floating-point argument/return value |
| `f15` | ` fa5` | `0x0000000000000000` | Floating-point argument/return value |
| `f16` | ` fa6` | `0x0000000000000000` | Floating-point argument/return value |
| `f17` | ` fa7` | `0x0000000000000000` | Floating-point argument/return value |
| `f18` | ` fs2` | `0x0000000000000000` | Saved floating-point register |
| `f19` | ` fs3` | `0x0000000000000000` | Saved floating-point register |
| `f20` | ` fs4` | `0x0000000000000000` | Saved floating-point register |
| `f21` | ` fs5` | `0x0000000000000000` | Saved floating-point register |
| `f22` | ` fs6` | `0x0000000000000000` | Saved floating-point register |
| `f23` | ` fs7` | `0x0000000000000000` | Saved floating-point register |
| `f24` | ` fs8` | `0x0000000000000000` | Saved floating-point register |
| `f25` | ` fs9` | `0x0000000000000000` | Saved floating-point register |
| `f26` | `fs10` | `0x0000000000000000` | Saved floating-point register |
| `f27` | `fs11` | `0x0000000000000000` | Saved floating-point register |
| `f28` | ` ft8` | `0x0000000000000000` | Temporary floating-point register |
| `f29` | ` ft9` | `0x0000000000000000` | Temporary floating-point register |
| `f30` | `ft10` | `0x0000000000000000` | Temporary floating-point register |
| `f31` | `ft11` | `0x0000000000000000` | Temporary floating-point register |

**Floating-Point Control and Status Register:** `fcsr = 0x0000000000000000`

> **Statistics:** Non-zero integer registers: `4/31`
> Non-zero floating-point registers: `0/32`


### 📊 Register Dump #4 (Position: `2736`)

**Dump Type:** `Integer + floating-point register dump`

#### 🔢 All Integer Registers (x0-x31)

| Register | ABI Name | Value | Description |
|----------|----------|-------|-------------|
| `x00` | `zero` | `0x0000000000000000` | Zero register |
| `x01` | `  ra` | `0x0000000000000000` | Return address |
| `x02` | `  sp` | `0x0000000000000000` | Stack pointer |
| `x03` | `  gp` | `0x000000001234ABCD` | Global pointer |
| `x04` | `  tp` | `0x0000000000000000` | Thread pointer |
| `x05` | `  t0` | `0x000000001234ABCD` | Temporary register |
| `x06` | `  t1` | `0x0000000000000000` | Temporary register |
| `x07` | `  t2` | `0x0000000000000000` | Temporary register |
| `x08` | `  s0` | `0x0000000000000000` | Frame pointer/Saved register |
| `x09` | `  s1` | `0x000000000000000D` | Saved register |
| `x10` | `  a0` | `0x0000000000000000` | Function argument/return value |
| `x11` | `  a1` | `0x0000000000000000` | Function argument/return value |
| `x12` | `  a2` | `0x0000000000000000` | Function argument |
| `x13` | `  a3` | `0x0000000000000000` | Function argument |
| `x14` | `  a4` | `0x0000000000000000` | Function argument |
| `x15` | `  a5` | `0x0000000000000000` | Function argument |
| `x16` | `  a6` | `0x0000000000000000` | Function argument |
| `x17` | `  a7` | `0x0000000000000000` | Function argument |
| `x18` | `  s2` | `0x0000000000000000` | Saved register |
| `x19` | `  s3` | `0x0000000000000000` | Saved register |
| `x20` | `  s4` | `0x0000000000000000` | Saved register |
| `x21` | `  s5` | `0x0000000000000000` | Saved register |
| `x22` | `  s6` | `0x0000000000000000` | Saved register |
| `x23` | `  s7` | `0x0000000000000000` | Saved register |
| `x24` | `  s8` | `0x0000000000000000` | Saved register |
| `x25` | `  s9` | `0x0000000000000000` | Saved register |
| `x26` | ` s10` | `0x0000000000000000` | Saved register |
| `x27` | ` s11` | `0x0000000000000000` | Saved register |
| `x28` | `  t3` | `0x0000000000000000` | Temporary register |
| `x29` | `  t4` | `0x0000000000000000` | Temporary register |
| `x30` | `  t5` | `0x0000000000000000` | Temporary register |
| `x31` | `  t6` | `0x00000000FFFFFFEC` | Temporary register |

#### ⚙️ All Core CSR Registers

| CSR Register | Value | Description |
|--------------|-------|-------------|
| `mstatus` | `0x8000000A00006080` | Machine status register |
| `misa` | `0x80000000001411AF` | ISA and extensions |
| `medeleg` | `0x0000000000000000` | Machine exception delegation |
| `mideleg` | `0x0000000000001444` | Machine interrupt delegation |
| `mie` | `0x0000000000000000` | Machine interrupt enable |
| `mtvec` | `0x0000000080002000` | Machine trap vector base address |
| `mcounteren` | `0x0000000000000000` | Machine counter enable |
| `mscratch` | `0x00000000FFFFFFEC` | Machine scratch register |
| `mepc` | `0x0000000080002A0A` | Machine exception program counter |
| `mcause` | `0x0000000000000000` | Machine trap cause |
| `mtval` | `0x0000000000000000` | Machine bad address or instruction |
| `mip` | `0x0000000000000080` | Machine interrupt pending |
| `mcycle` | `0x000000000001D69C` | Machine cycle counter |
| `minstret` | `0x000000000001D69D` | Machine instructions retired counter |
| `mvendorid` | `0x0000000000000000` | Vendor ID |
| `marchid` | `0x0000000000000005` | Architecture ID |
| `mimpid` | `0x0000000000000000` | Implementation ID |
| `mhartid` | `0x0000000000000000` | Hardware thread ID |

#### 🔣 All Floating-Point Registers (f0-f31)

| Register | ABI Name | Value | Description |
|----------|----------|-------|-------------|
| `f00` | ` ft0` | `0x0000000000000000` | Temporary floating-point register |
| `f01` | ` ft1` | `0x0000000000000000` | Temporary floating-point register |
| `f02` | ` ft2` | `0x0000000000000000` | Temporary floating-point register |
| `f03` | ` ft3` | `0x0000000000000000` | Temporary floating-point register |
| `f04` | ` ft4` | `0x0000000000000000` | Temporary floating-point register |
| `f05` | ` ft5` | `0x0000000000000000` | Temporary floating-point register |
| `f06` | ` ft6` | `0x0000000000000000` | Temporary floating-point register |
| `f07` | ` ft7` | `0x0000000000000000` | Temporary floating-point register |
| `f08` | ` fs0` | `0x0000000000000000` | Saved floating-point register |
| `f09` | ` fs1` | `0x0000000000000000` | Saved floating-point register |
| `f10` | ` fa0` | `0x0000000000000000` | Floating-point argument/return value |
| `f11` | ` fa1` | `0x0000000000000000` | Floating-point argument/return value |
| `f12` | ` fa2` | `0x0000000000000000` | Floating-point argument/return value |
| `f13` | ` fa3` | `0x0000000000000000` | Floating-point argument/return value |
| `f14` | ` fa4` | `0x0000000000000000` | Floating-point argument/return value |
| `f15` | ` fa5` | `0x0000000000000000` | Floating-point argument/return value |
| `f16` | ` fa6` | `0x0000000000000000` | Floating-point argument/return value |
| `f17` | ` fa7` | `0x0000000000000000` | Floating-point argument/return value |
| `f18` | ` fs2` | `0x0000000000000000` | Saved floating-point register |
| `f19` | ` fs3` | `0x0000000000000000` | Saved floating-point register |
| `f20` | ` fs4` | `0x0000000000000000` | Saved floating-point register |
| `f21` | ` fs5` | `0x0000000000000000` | Saved floating-point register |
| `f22` | ` fs6` | `0x0000000000000000` | Saved floating-point register |
| `f23` | ` fs7` | `0x0000000000000000` | Saved floating-point register |
| `f24` | ` fs8` | `0x0000000000000000` | Saved floating-point register |
| `f25` | ` fs9` | `0x0000000000000000` | Saved floating-point register |
| `f26` | `fs10` | `0x0000000000000000` | Saved floating-point register |
| `f27` | `fs11` | `0x0000000000000000` | Saved floating-point register |
| `f28` | ` ft8` | `0x0000000000000000` | Temporary floating-point register |
| `f29` | ` ft9` | `0x0000000000000000` | Temporary floating-point register |
| `f30` | `ft10` | `0x0000000000000000` | Temporary floating-point register |
| `f31` | `ft11` | `0x0000000000000000` | Temporary floating-point register |

**Floating-Point Control and Status Register:** `fcsr = 0x0000000000000000`

> **Statistics:** Non-zero integer registers: `4/31`
> Non-zero floating-point registers: `0/32`

## 🚨 `Spike` Exception Dump Details

### ⚡ Exception Dump #1 (Position: `0`)

**Exception PC:** `0x000000008000245C`
**Traced Instruction:** `sw t0,0(t6)`
**Machine Code:** `005fa023`
**Original Instruction:** `sw t0,0(t6)`
**Type:** `Store/AMO access fault` (Exception)

#### CSR Details

| CSR Register | Value | Description |
|--------------|-------|-------------|
| `mcause` | `0x0000000000000007` | Store/AMO access fault |
| `mtval` | `0x0000000000000004` | Machine bad address or instruction |
| `mstatus` | `0x8000000A00007800` | Machine status register |
| `mtvec` | `0x0000000080002000` | Machine trap vector base address |
| `mie` | `0x0000000000000000` | Machine interrupt enable |
| `mip` | `0x0000000000000080` | Machine interrupt pending |
| `mscratch` | `0x0000000000000004` | Machine scratch register |
| `mhartid` | `0x0000000000000000` | Hardware thread ID |


### ⚡ Exception Dump #2 (Position: `80`)

**Exception PC:** `0x0000000080002460`
**Traced Instruction:** `lw t0,0(t6)`
**Machine Code:** `000fa283`
**Original Instruction:** `lw t0,0(t6)`
**Type:** `Load access fault` (Exception)

#### CSR Details

| CSR Register | Value | Description |
|--------------|-------|-------------|
| `mcause` | `0x0000000000000005` | Load access fault |
| `mtval` | `0x0000000000000004` | Machine bad address or instruction |
| `mstatus` | `0x8000000A00007800` | Machine status register |
| `mtvec` | `0x0000000080002000` | Machine trap vector base address |
| `mie` | `0x0000000000000000` | Machine interrupt enable |
| `mip` | `0x0000000000000080` | Machine interrupt pending |
| `mscratch` | `0x0000000000000004` | Machine scratch register |
| `mhartid` | `0x0000000000000000` | Hardware thread ID |


### ⚡ Exception Dump #3 (Position: `160`)

**Exception PC:** `0x0000000080002464`
**Traced Instruction:** `amoxor.w.aqrl gp,s1,(t6)`
**Machine Code:** `269fa1af`
**Original Instruction:** `amoxor.w.aqrl gp,s1,(t6)`
**Type:** `Store/AMO access fault` (Exception)

#### CSR Details

| CSR Register | Value | Description |
|--------------|-------|-------------|
| `mcause` | `0x0000000000000007` | Store/AMO access fault |
| `mtval` | `0x0000000000000004` | Machine bad address or instruction |
| `mstatus` | `0x8000000A00007800` | Machine status register |
| `mtvec` | `0x0000000080002000` | Machine trap vector base address |
| `mie` | `0x0000000000000000` | Machine interrupt enable |
| `mip` | `0x0000000000000080` | Machine interrupt pending |
| `mscratch` | `0x0000000000000004` | Machine scratch register |
| `mhartid` | `0x0000000000000000` | Hardware thread ID |


### ⚡ Exception Dump #4 (Position: `912`)

**Exception PC:** `0x000000008000272A`
**Traced Instruction:** `sw t0,0(t6)`
**Machine Code:** `005fa023`
**Original Instruction:** `sw t0,0(t6)`
**Type:** `Store/AMO address misaligned` (Exception)

#### CSR Details

| CSR Register | Value | Description |
|--------------|-------|-------------|
| `mcause` | `0x0000000000000006` | Store/AMO address misaligned |
| `mtval` | `0x0000000000000005` | Machine bad address or instruction |
| `mstatus` | `0x8000000A00007800` | Machine status register |
| `mtvec` | `0x0000000080002000` | Machine trap vector base address |
| `mie` | `0x0000000000000000` | Machine interrupt enable |
| `mip` | `0x0000000000000080` | Machine interrupt pending |
| `mscratch` | `0x0000000000000005` | Machine scratch register |
| `mhartid` | `0x0000000000000000` | Hardware thread ID |


### ⚡ Exception Dump #5 (Position: `992`)

**Exception PC:** `0x000000008000272E`
**Traced Instruction:** `lw t0,0(t6)`
**Machine Code:** `000fa283`
**Original Instruction:** `lw t0,0(t6)`
**Type:** `Load address misaligned` (Exception)

#### CSR Details

| CSR Register | Value | Description |
|--------------|-------|-------------|
| `mcause` | `0x0000000000000004` | Load address misaligned |
| `mtval` | `0x0000000000000005` | Machine bad address or instruction |
| `mstatus` | `0x8000000A00007800` | Machine status register |
| `mtvec` | `0x0000000080002000` | Machine trap vector base address |
| `mie` | `0x0000000000000000` | Machine interrupt enable |
| `mip` | `0x0000000000000080` | Machine interrupt pending |
| `mscratch` | `0x0000000000000005` | Machine scratch register |
| `mhartid` | `0x0000000000000000` | Hardware thread ID |


### ⚡ Exception Dump #6 (Position: `1072`)

**Exception PC:** `0x0000000080002732`
**Traced Instruction:** `amoxor.w.aqrl gp,s1,(t6)`
**Machine Code:** `269fa1af`
**Original Instruction:** `amoxor.w.aqrl gp,s1,(t6)`
**Type:** `Store/AMO address misaligned` (Exception)

#### CSR Details

| CSR Register | Value | Description |
|--------------|-------|-------------|
| `mcause` | `0x0000000000000006` | Store/AMO address misaligned |
| `mtval` | `0x0000000000000005` | Machine bad address or instruction |
| `mstatus` | `0x8000000A00007800` | Machine status register |
| `mtvec` | `0x0000000080002000` | Machine trap vector base address |
| `mie` | `0x0000000000000000` | Machine interrupt enable |
| `mip` | `0x0000000000000080` | Machine interrupt pending |
| `mscratch` | `0x0000000000000005` | Machine scratch register |
| `mhartid` | `0x0000000000000000` | Hardware thread ID |


### ⚡ Exception Dump #7 (Position: `1824`)

**Exception PC:** `0x00000000800029FE`
**Traced Instruction:** `sw t0,0(t6)`
**Machine Code:** `005fa023`
**Original Instruction:** `sw t0,0(t6)`
**Type:** `Store/AMO address misaligned` (Exception)

#### CSR Details

| CSR Register | Value | Description |
|--------------|-------|-------------|
| `mcause` | `0x0000000000000006` | Store/AMO address misaligned |
| `mtval` | `0x00000000FFFFFFE1` | Machine bad address or instruction |
| `mstatus` | `0x8000000A00007800` | Machine status register |
| `mtvec` | `0x0000000080002000` | Machine trap vector base address |
| `mie` | `0x0000000000000000` | Machine interrupt enable |
| `mip` | `0x0000000000000080` | Machine interrupt pending |
| `mscratch` | `0x00000000FFFFFFE1` | Machine scratch register |
| `mhartid` | `0x0000000000000000` | Hardware thread ID |


### ⚡ Exception Dump #8 (Position: `1904`)

**Exception PC:** `0x0000000080002A02`
**Traced Instruction:** `lw t0,0(t6)`
**Machine Code:** `000fa283`
**Original Instruction:** `lw t0,0(t6)`
**Type:** `Load address misaligned` (Exception)

#### CSR Details

| CSR Register | Value | Description |
|--------------|-------|-------------|
| `mcause` | `0x0000000000000004` | Load address misaligned |
| `mtval` | `0x00000000FFFFFFE1` | Machine bad address or instruction |
| `mstatus` | `0x8000000A00007800` | Machine status register |
| `mtvec` | `0x0000000080002000` | Machine trap vector base address |
| `mie` | `0x0000000000000000` | Machine interrupt enable |
| `mip` | `0x0000000000000080` | Machine interrupt pending |
| `mscratch` | `0x00000000FFFFFFE1` | Machine scratch register |
| `mhartid` | `0x0000000000000000` | Hardware thread ID |


### ⚡ Exception Dump #9 (Position: `1984`)

**Exception PC:** `0x0000000080002A06`
**Traced Instruction:** `amoxor.w.aqrl gp,s1,(t6)`
**Machine Code:** `269fa1af`
**Original Instruction:** `amoxor.w.aqrl gp,s1,(t6)`
**Type:** `Store/AMO address misaligned` (Exception)

#### CSR Details

| CSR Register | Value | Description |
|--------------|-------|-------------|
| `mcause` | `0x0000000000000006` | Store/AMO address misaligned |
| `mtval` | `0x00000000FFFFFFE1` | Machine bad address or instruction |
| `mstatus` | `0x8000000A00007800` | Machine status register |
| `mtvec` | `0x0000000080002000` | Machine trap vector base address |
| `mie` | `0x0000000000000000` | Machine interrupt enable |
| `mip` | `0x0000000000000080` | Machine interrupt pending |
| `mscratch` | `0x00000000FFFFFFE1` | Machine scratch register |
| `mhartid` | `0x0000000000000000` | Hardware thread ID |

## 📈 Data Analysis Statistics

| Statistics Item | Value |
|-----------------|-------|

### 🚨 Exception Type Distribution

| Exception Type | Occurrence Count |
|----------------|------------------|
| Store/AMO address misaligned | `4` |
| Store/AMO access fault | `2` |
| Load address misaligned | `2` |
| Load access fault | `1` |

### 📋 Register Dump Type Distribution

| Dump Type | Count |
|-----------|-------|
| Integer + Floating-Point Registers | `4` |

| 📊 Data Coverage Rate | `100.0%` (3408/3408 bytes) |

---
*Generated at: 2025-06-25 04:12:35 UTC
