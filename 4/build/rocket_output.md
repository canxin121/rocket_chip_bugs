# 🔧 RISC-V Debug Execution Output

**Emulator Type:** `Rocket`

## 📊 Basic Information

| Item | Value |
|------|-------|
| Raw Data Length | `104 bytes` |
| Total Debug Items | `2` |
| Exception Count | `1` |
| Single Register Dumps | `1` |

## 📈 Debug Item Statistics

| Type | Count | Description |
|------|-------|-------------|
| 🚨 Exception Items | `1` | Exception and interrupt info |
| 📋 GPR Dumps | `1` | Single GPR register dumps |
| 🔣 FPR Dumps | `0` | Single FPR register dumps |
| 📝 Text Items | `0` | Readable text output |
| ❓ Unknown Items | `0` | Unrecognized data |

## 🔍 Debug Item Details

**[1]** 🚨 **Exception:** `Illegal instruction` (Exception) - PC=`0x0000000080002442` @position`0`
  - Instruction: `csrrwi s6,0x2d0,0`
  - Machine Code: `2d005b73`
**[2]** 📋 **GPR:** `x19` (s3) = `0x00000000000081FD` @position`80`

## 🚨 Exception Details

### Exception #1 - Illegal instruction (Exception)

**PC:** `0x0000000080002442`
**Instruction:** `csrrwi s6,0x2d0,0`
**Machine Code:** `2d005b73`

| CSR | Value | Description |
|-----|-------|-------------|
| `mcause` | `0x0000000000000002` | Illegal instruction |
| `mtval` | `0x000000002D005B73` | Bad address or instruction |
| `mstatus` | `0x8000000A00007800` | Machine status |
| `mtvec` | `0x0000000080002000` | Trap vector base |

## 📋 Single Register Dump Summary

### GPR Dumps (1 registers)

| Register | ABI Name | Value | Position |
|----------|----------|-------|----------|
| `x19` | `s3` | `0x00000000000081FD` | 80 |

---
*Generated at: 2025-06-25 06:38:31 UTC
