strlen:
	enter 0,0
	mov edx, [ ebp + 8 ]
	mov eax, 0
.back:
	cmp byte [ edx + eax ], 0
	jz .exit
	add eax, 1
	jmp .back
.exit:
	leave 
	ret