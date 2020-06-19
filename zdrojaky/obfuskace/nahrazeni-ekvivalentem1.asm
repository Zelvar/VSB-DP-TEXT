strlen:
	enter 0,0
	mov edx, [ ebp + 8 ]
	mov eax, 0
.back:
	test byte [ edx + eax ], 0xff
	jz .exit
	inc eax
	jmp .back
.exit:
	leave 
	ret