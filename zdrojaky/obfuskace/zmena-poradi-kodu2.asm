arrayMax:
    enter 0,0

    jmp .start
.continue:
    mov ecx, [ ebp + 12 ]

.back:
    cmp eax, [ edx + ecx * 4 - 4 ]
    jg .skip
    mov eax, [ edx + ecx * 4 - 4 ]
.skip:
    loop .back
    jmp .end

.start:
    mov eax, [ edx ]
    mov edx, [ ebp + 8 ]
    jmp .continue

.end:
    leave
    ret