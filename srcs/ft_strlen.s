section .text
	global _ft_strlen

_ft_strlen:
	mov	rax, -1						; rax = -1

loop:
	inc	rax							; rax++
	cmp	byte [rdi + rax], 0			; if (str[rax] == 0)
	jne	loop 						; jump to loop if not equal
	ret								; return rax
