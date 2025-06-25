# Query Regarding tohost System Call Handling in Rocket Chip

## Difference Discovery

This Difference was discovered during random instruction sequence testing.

## Minimized Reproduction Program

### debug.s

```riscv
# existing code ...
binvi x6, x21, 31
bclr x30, x6, x14
amoand.d.rl x28, x2, (x14)
max x4, x9, x30
sh2add x1, x25, x6
amomaxu.w.rl x10, x4, (x1)
hlv.hu x7, 0(x21)
# existing code ...
```

## Reproduction Steps

```bash
bash ./run.sh
```

Check the content of the `run` script to understand the specific execution steps and parameter settings.

## Spike Execution Results

- **Normal mode**: Crashes after executing the `amomaxu.w a0, tp, (ra)` instruction (i.e., `amomaxu.w.rl x10, x4, (x1)`)
- **Debug mode**: Crashes after executing the `amomaxu.w a0, tp, (ra)` instruction (i.e., `amomaxu.w.rl x10, x4, (x1)`)

## Rocket Execution Results

*** PASSED *** Completed after 28712 cycles

## Difference Analysis

### Spike

`amomaxu.w` happened to write the wrong system call ID to tohost, causing the spike program to exit with a bad system call error. This is the expected behavior.

### Rocket

`amomaxu.w` also wrote the wrong system call ID to tohost, but rocket did not respond to the system call and exited normally with PASSED. This differs from Spike's behavior.