arrayMax:
    enter 0,0

    mov eax, [ edx ]
    mov edx, [ ebp + 8 ]
    mov ecx, [ ebp + 12 ]

.back:
    cmp eax, [ edx + ecx * 4 - 4 ]
    jg .skip
    mov eax, [ edx + ecx * 4 - 4 ]
.skip:
    loop .back

    leave
    ret