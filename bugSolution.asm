```assembly
;Check if ebx is properly aligned
test ebx, 3
je  aligned_access ;Jump if aligned
;Alignment adjustment if not properly aligned
mov eax, [ebx]
add eax, [ebx+4]
mov [edi], eax
jmp after_access
aligned_access:
mov eax, [ebx+4]
add eax, ecx
mov [edi], eax
after_access:
;...rest of the code...
```