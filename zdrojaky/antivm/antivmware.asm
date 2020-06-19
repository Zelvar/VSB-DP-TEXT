VMwareTest:
	enter 0,0
    mov eax, 0x564D5868 ; VMXh
    mov edx, 0x5658 ; VX (port)
    in eax, dx
    cmp ebx, 0x564D5868 ; VMXh
    setz ecx
    mov eax, ecx
    ret
    leave