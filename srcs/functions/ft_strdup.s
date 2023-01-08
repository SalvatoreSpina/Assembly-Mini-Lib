section .text
		global _ft_strdup
		extern _malloc
		extern _ft_strlen
		extern _ft_strcpy

_ft_strdup:
	; Push first argument (address of string to be duplicated) onto the stack
	push	rdi
	
	; Call ft_strlen to get the length of the string
	call	_ft_strlen
	
	; Increment the return value of ft_strlen (to account for the null terminator)
	inc		rax
	
	; Move the string length (in rax) to rdi (arg1 for malloc)
	mov		rdi, rax
	
	; Call malloc to allocate a block of memory
	call	_malloc
	
	; Pop the first argument (address of string to be duplicated) off the stack
	pop		rdi
	
	; Copy first argument (address of string to be duplicated) to second argument (src) for ft_strcpy
	mov		rsi, rdi
	
	; Copy the return value of malloc (address of allocated memory) to first argument (dest) for ft_strcpy
	mov		rdi, rax
	
	; Call ft_strcpy to copy the string to the allocated memory
	call	_ft_strcpy
	
	; Return the address of the duplicated string (return value of ft_strcpy)
	ret
