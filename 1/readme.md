## Query Regarding Simulator Discrepancies in Exception Handling and Data Consistency for Specific Memory Accesses

### Observed Discrepancies and Questions

During differential testing with `debug.S`, we observed some notable differences between the Rocket simulator and the Spike simulator. We would like to understand if the following behaviors are expected or if they indicate a potential issue.

**1. Discrepancy in Exception Handling:**

  * The instruction `sb x10, -1717(x27)` (at address `0x80002A20`) triggers a "Store/AMO access fault" in Spike. However, the Rocket simulator does not trigger an exception.
  * Similarly, the instruction `lbu x28, -1717(x27)` (at address `0x80002CE0`) triggers a "Load access fault" in Spike, but again, no exception is observed in Rocket.
  * Both instructions access the same effective address, `0x7FFFF94A` (calculated from `x27 = 0x7FFFFFFF` and an offset of `-1717`).
  * It is worth noting that four other memory access instructions in the test case (`flw`, `ld`, `lb`, `lbu` to different addresses) correctly trigger exceptions in both Spike and Rocket.

Is it the intended behavior for Rocket to not raise an exception for these specific memory accesses, contrary to Spike's behavior?

**2. Potential Data Inconsistency:**

Following the sequence of instructions in the test:

  * The instruction `sb x10, -1717(x27)` is executed with the value in register `x10` being `100` (i.e., `0x64`).
      * In Spike, this results in an exception, and execution halts as expected.
      * In Rocket, since no exception is triggered, the instruction presumably completes successfully, which should store the byte `0x64` to memory address `0x7FFFF94A`.
  * Subsequently, the instruction `lbu x28, -1717(x27)` is executed.
      * In Spike, a load access fault occurs, and the value of register `x28` remains unchanged (`0`).
      * In Rocket, no exception is triggered. However, the value loaded into register `x28` was `0x4E` in one particular run. This does not match the byte (`0x64`) that was supposedly stored just before.
  * Further testing shows that the value loaded into `x28` by Rocket in this scenario appears to vary across different runs.

Could you clarify why the value loaded by the `lbu` instruction does not match the value previously stored by the `sb` instruction? Is this variability in the loaded data across multiple runs an expected outcome?

### Reproduction

To facilitate parsing the output, it is recommended to use the tools from the `riscv_fuzz_test` repository.

```bash
cargo install --git https://github.com/canxin121/riscv_fuzz_test
```

Then, use the `riscv_fuzz_test` tool directly for testing.

Set the `ROCKET_EMULATOR_PATH` environment variable to the location of your Rocket simulator. For details on the Rocket emulator's build configuration and version, please refer to [[emulators/readme.md](https://www.google.com/search?q=../emulators/readme.md)](https://www.google.com/search?q=../emulators/readme.md). A pre-compiled binary for x86 Ubuntu is available in the `emulators` folder.

```bash
export ROCKET_EMULATOR_PATH=<path_to_your_rocket_emulator>
```

```bash
riscv_fuzz_test run -a ./debug.S -f common -b ./build
```