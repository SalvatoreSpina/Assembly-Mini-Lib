section .text
		global _ft_strcpy

_ft_strcpy:
	mov		rax, -1					;i = -1

loop:								;while loop
	inc		rax						;i++
	mov		cl, byte [rsi + rax]	;cl = src[i]
	mov		byte [rdi + rax], cl	;dest[i] = cl
	cmp		cl, 0					;compare cl, 0
	je		end						;jump to end if equals
	jmp		loop					;continue loop

end:
	mov		rax, rdi				;return dest
	ret