## Rocket Simulator Fails to Trigger Expected Exceptions on Specific Memory Access and Shows Data Inconsistency

### Observed Behavior
During differential testing using debug.S, the Rocket simulator exhibits significant differences from the Spike simulator and expected behavior when processing certain memory access instructions.

1.  **Missing Exception Triggers:**
    *   Instruction `sb x10, -1717(x27)` (at address `0x80002A20`) triggers a "Store/AMO access fault" exception in Spike. However, Rocket does not trigger any exception.
    *   Instruction `lbu x28, -1717(x27)` (at address `0x80002CE0`) triggers a "Load access fault" exception in Spike. However, Rocket similarly does not trigger any exception.
    *   Both instructions access the same effective address `0x7FFFF94A` (calculated from `x27 = 0x7FFFFFFF` and offset `-1717`).
    *   In contrast, the other four memory access instructions in the test case (`flw`, `ld`, `lb`, `lbu` to different addresses) trigger exceptions in both Spike and Rocket.

2.  **Data Inconsistency:**
    *   When executing the `sb x10, -1717(x27)` instruction, the value in register `x10` is `100` (i.e., `0x64`).
        *   In Spike, an exception is triggered and execution fails.
        *   In Rocket, no exception is triggered, and it should execute successfully, storing `0x64` to memory address `0x7FFFF94A`.
    *   After subsequently executing `lbu x28, -1717(x27)`:
        *   In Spike, due to the load access fault, register `x28` value is not updated and remains `0`.
        *   In Rocket, no exception is triggered, and register `x28` value is updated to `0x4E` (result from one particular run). This does not match the expected byte `0x64` that should be loaded from memory address `0x7FFFF94A` after the previous store.
        *   Further observation shows that across multiple runs, the value loaded into `x28` by Rocket in this scenario appears to vary randomly, indicating potential memory consistency issues.

### Reproduction

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
