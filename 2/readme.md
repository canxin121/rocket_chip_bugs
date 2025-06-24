# Rocket Chip Bug Report: Incorrect Memory Access Exception Handling

## Bug Summary

The Rocket core incorrectly classifies certain memory access violations as "access fault" instead of the correct "address misaligned" exception, and also triggers exceptions on memory addresses that should be accessible.

## Bug Description

### Issue 1: Incorrect Exception Classification for Misaligned Addresses

Rocket core misclassifies address misalignment exceptions as access fault exceptions for certain memory addresses.

**Expected Behavior (Spike):**
- Address `0x5`: Should trigger `Store/AMO address misaligned` (mcause=6) and `Load address misaligned` (mcause=4)
- Address `0xFFFFFFE1`: Should trigger `Store/AMO address misaligned` (mcause=6) and `Load address misaligned` (mcause=4)

**Actual Behavior (Rocket):**
- Address `0x5`: Triggers `Store/AMO access fault` (mcause=7) and `Load access fault` (mcause=5)
- Address `0xFFFFFFE1`: Triggers `Store/AMO access fault` (mcause=7) and `Load access fault` (mcause=5)

### Issue 2: Incorrect Access Fault on Valid Memory Address

Rocket core incorrectly triggers access fault exceptions on memory address `0xFFFFFFEC` where no exception should occur.

**Expected Behavior (per Spike reference):**
- Address `0xFFFFFFEC`: Should execute normally without exceptions
- `amoxor.w.aqrl` instruction should complete successfully and modify register `x3`

**Actual Behavior (Rocket):**
- Address `0xFFFFFFEC`: Triggers `Store/AMO access fault` (mcause=7) and `Load access fault` (mcause=5)
- Instructions fail to execute, register `x3` retains original value `0xDEADBEEF`

## Test Case Details

### Test Environment
- **Test File:** `debug.S`
- **Compilation:** RISC-V 64-bit with floating-point support
- **Reference Implementation:** Spike ISA Simulator
- **Target Implementation:** Rocket Core

### Test Addresses and Results

| Address | Operation | Spike Result | Rocket Result | Issue |
|---------|-----------|--------------|---------------|-------|
| `0x4` | Store/Load/AMO | Access Fault | Access Fault | ✅ Correct |
| `0x5` | Store | Address Misaligned (mcause=6) | **Access Fault (mcause=7)** | ❌ Wrong Exception |
| `0x5` | Load | Address Misaligned (mcause=4) | **Access Fault (mcause=5)** | ❌ Wrong Exception |
| `0x5` | AMO | Address Misaligned (mcause=6) | **Access Fault (mcause=7)** | ❌ Wrong Exception |
| `0xFFFFFFE1` | Store | Address Misaligned (mcause=6) | **Access Fault (mcause=7)** | ❌ Wrong Exception |
| `0xFFFFFFE1` | Load | Address Misaligned (mcause=4) | **Access Fault (mcause=5)** | ❌ Wrong Exception |
| `0xFFFFFFE1` | AMO | Address Misaligned (mcause=6) | **Access Fault (mcause=7)** | ❌ Wrong Exception |
| `0xFFFFFFEC` | Store | No Exception | **Access Fault (mcause=7)** | ❌ False Exception |
| `0xFFFFFFEC` | Load | No Exception | **Access Fault (mcause=5)** | ❌ False Exception |
| `0xFFFFFFEC` | AMO | No Exception | **Access Fault (mcause=7)** | ❌ False Exception |

### Evidence Data

**Final Register State Comparison:**
- **Spike:** `x3 = 0x1234ABCD` (instruction executed successfully)
- **Rocket:** `x3 = 0xDEADBEEF` (instruction failed due to exception)

## Reproduction

Need to use the tools from my riscv_fuzz_test repo to conveniently parse the output.

```bash
cargo install --git https://github.com/canxin121/riscv_fuzz_test
```

Then directly use the `riscv_fuzz_test` tool for testing.

Set the environment variable ROCKET_EMULATOR_PATH to the path of your Rocket simulator. For Rocket emulator build configuration and version details, see [emulators/readme.md](../emulators/readme.md). There's a pre-compiled one for x86 Ubuntu in the emulators folder.

```bash
export ROCKET_EMULATOR_PATH=<path_to_your_rocket_emulator>
```

```bash
riscv_fuzz_test run -a ./debug.S -f common -b ./build
```
