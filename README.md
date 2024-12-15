This repository demonstrates a common but easily missed error in assembly programming: out-of-bounds memory access due to improper use of scaled index addressing. The `bug.asm` file contains the erroneous code, which attempts to access memory using a calculated address that might be beyond the allocated memory space, leading to a segmentation fault. The solution (`bugSolution.asm`) shows how to correct the issue by implementing range checks before accessing memory.