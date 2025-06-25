#!/bin/bash
mkdir -p build output

ISA_STRING="rv64imafdqc_h_zaamo_zba_zbb_zbc_zbs_zfa_zfh_zfhmin_zicond_zicsr_zifencei"

echo "Assembling and linking debug.s..."
riscv64-unknown-elf-as --march=${ISA_STRING} debug.s -g -o build/debug.o
riscv64-unknown-elf-ld -T linker.ld build/debug.o -o build/debug.elf
riscv64-unknown-elf-objdump -S ./build/debug.o > build/debug.o.dump
riscv64-unknown-elf-objdump -S ./build/debug.elf > build/debug.elf.dump

echo "Running debug.elf in normal mode with detailed commit log..."
spike --isa=${ISA_STRING} --log-commits ./build/debug.elf > output/debug_1_normal.txt 2>&1

echo "Running debug.elf in debug mode with detailed commit log..."
echo "c" | spike --isa=${ISA_STRING} -d --log-commits ./build/debug.elf > output/debug_1_debug.txt 2>&1

echo "Running debug.elf with rocket..."
../emulators/rocket_emulator +verbose build/debug.elf > output/debug_1_rocket.txt 2>&1