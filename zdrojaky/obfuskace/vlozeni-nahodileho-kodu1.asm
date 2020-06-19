sumArray:
    enter 0,0
    mov eax, 0
    mov edx, [ ebp + 8 ]
    mov ecx, [ ebp + 12 ]
    jcxz .skip
.back:
    add eax, [ edx + ecx * 4 - 4 ]
    loop .back
.skip:

    leave
    ret