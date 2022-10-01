section .text
		global _ft_strdup
		extern _malloc
		extern _ft_strlen
		extern _ft_strcpy

_ft_strdup:
	push	rdi					;add first arg to stack
	call	_ft_strlen			;call ft_strlen to get length of string
	inc		rax					;increment return of ft_strlen
	mov		rdi, rax			;move len in argument variable for malloc
	call	_malloc				;call malloc
	pop		rdi					;pop first arg from stack
	mov		rsi, rdi			;copy first arg in second arg for ft_strcpy
	mov		rdi, rax			;copy return of malloc in first arg for ft_strcpy
	call	_ft_strcpy			;call ft_strcpy
	ret							;return of ft_strcpy