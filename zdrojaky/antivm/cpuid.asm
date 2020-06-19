testVM:
	enter 0,0
    mov eax, 1
    cpuid
    bt ecx, 31
    jb .vm
    mov eax, 0
    jmp .end
.vm:
    mov eax, 1
.end:
    leave
    ret