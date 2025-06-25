# Query Regarding Memory Access Exception Handling in Rocket Chip

## Query Summary

The Rocket core has been observed to handle certain memory access violations differently from the Spike reference implementation. Specifically, for some addresses, Rocket appears to report a different exception type than Spike, and it also seems to trigger exceptions on addresses that Spike accesses without issue. We would like to inquire if this is the intended behavior.

## Detailed Description

### Question 1: Discrepancy in Exception Classification for Misaligned Addresses

The Rocket core was observed to classify address misalignment exceptions as access fault exceptions for certain memory addresses, which differs from the behavior of the Spike reference.

**Expected Behavior (Spike):**
- Address `0x5`: Should trigger `Store/AMO address misaligned` (mcause=6) and `Load address misaligned` (mcause=4)
- Address `0xFFFFFFE1`: Should trigger `Store/AMO address misaligned` (mcause=6) and `Load address misaligned` (mcause=4)

**Actual Observed Behavior (Rocket):**
- Address `0x5`: Triggers `Store/AMO access fault` (mcause=7) and `Load access fault` (mcause=5)
- Address `0xFFFFFFE1`: Triggers `Store/AMO access fault` (mcause=7) and `Load access fault` (mcause=5)

### Question 2: Access Fault Triggered on a Seemingly Valid Memory Address

The Rocket core was observed to trigger an access fault exception on memory address `0xFFFFFFEC`, whereas no exception appears to occur in the Spike reference implementation.

**Expected Behavior (per Spike reference):**
- Address `0xFFFFFFEC`: Should execute normally without exceptions
- `amoxor.w.aqrl` instruction should complete successfully and modify register `x3`

**Actual Observed Behavior (Rocket):**
- Address `0xFFFFFFEC`: Triggers `Store/AMO access fault` (mcause=7) and `Load access fault` (mcause=5)
- Instructions fail to execute, register `x3` retains its original value `0xDEADBEEF`

## Test Case Details

### Test Environment
- **Test File:** `debug.S`
- **Compilation:** RISC-V 64-bit with floating-point support
- **Reference Implementation:** Spike ISA Simulator
- **Target Implementation:** Rocket Core

### Test Addresses and Results Comparison

| Address      | Operation      | Spike Result                  | Rocket Result               | Comparison with Spike       |
| ------------ | -------------- | ----------------------------- | --------------------------- | --------------------------- |
| `0x4`        | Store/Load/AMO | Access Fault                  | Access Fault                | Behavior Matches Spike      |
| `0x5`        | Store          | Address Misaligned (mcause=6) | **Access Fault (mcause=7)** | Behavior Differs from Spike |
| `0x5`        | Load           | Address Misaligned (mcause=4) | **Access Fault (mcause=5)** | Behavior Differs from Spike |
| `0x5`        | AMO            | Address Misaligned (mcause=6) | **Access Fault (mcause=7)** | Behavior Differs from Spike |
| `0xFFFFFFE1` | Store          | Address Misaligned (mcause=6) | **Access Fault (mcause=7)** | Behavior Differs from Spike |
| `0xFFFFFFE1` | Load           | Address Misaligned (mcause=4) | **Access Fault (mcause=5)** | Behavior Differs from Spike |
| `0xFFFFFFE1` | AMO            | Address Misaligned (mcause=6) | **Access Fault (mcause=7)** | Behavior Differs from Spike |
| `0xFFFFFFEC` | Store          | No Exception                  | **Access Fault (mcause=7)** | Behavior Differs from Spike |
| `0xFFFFFFEC` | Load           | No Exception                  | **Access Fault (mcause=5)** | Behavior Differs from Spike |
| `0xFFFFFFEC` | AMO            | No Exception                  | **Access Fault (mcause=7)** | Behavior Differs from Spike |

### Evidence Data

**Final Register State Comparison:**
- **Spike:** `x3 = 0x1234ABCD` (instruction executed successfully)
- **Rocket:** `x3 = 0xDEADBEEF` (instruction failed due to an exception)

## Reproduction

Need to use the tools from my riscv_fuzz_test repo to conveniently parse the output.

```bash
cargo install --git https://github.com/canxin121/riscv_fuzz_test
````

Then directly use the `riscv_fuzz_test` tool for testing.

Set the environment variable ROCKET\_EMULATOR\_PATH to the path of your Rocket simulator. For Rocket emulator build configuration and version details, see [emulators/readme.md](https://raw.githubusercontent.com/canxin121/rocket_chip_bugs/refs/heads/master/emulators/readme.md). There's a pre-compiled one for x86 Ubuntu in the emulators folder.

```bash
export ROCKET_EMULATOR_PATH=<path_to_your_rocket_emulator>
```

```bash
riscv_fuzz_test run -a ./debug.S -f common -b ./build
```