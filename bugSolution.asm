Before executing the memory access, add code to check the bounds of esi.  If it exceeds the limits, handle the error appropriately.  For example:

;Check boundaries of esi register. Max value for esi is 1000
mov ecx, 1000
cmp esi, ecx
jge handle_error

mov eax, [ebx+esi*4+0x10]

jmp next_instruction

handle_error:
;Handle the error (e.g., return error code, exit program)
mov eax, -1
ret
next_instruction:
;Continue with the program
