sumArray:
    enter 0,0
    nop
    jmp .skipcode
    cmp eax, [ edx + ecx * 4 - 4 ]
    jg .skip
    mov eax, [ edx + ecx * 4 - 4 ]
.skipcode:
	nop
    mov eax, 0
    nop
    mov edx, [ ebp + 8 ]
    mov ecx, [ ebp + 12 ]
    jcxz .skip
.back:
    add eax, [ edx + ecx * 4 - 4 ]
    loop .back
.skip:

    leave
    ret