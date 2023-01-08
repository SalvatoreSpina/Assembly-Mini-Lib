section .text
		global _ft_strcpy

_ft_strcpy:
	; Initialize i to -1
	mov		rax, -1

loop:
	; Increment i
	inc		rax
	
	; Load src[i] into cl
	mov		cl, byte [rsi + rax]
	
	; Store cl in dest[i]
	mov		byte [rdi + rax], cl
	
	; Check if src[i] is null terminator
	cmp		cl, 0
	
	; If src[i] is null terminator, jump to end of loop
	je		end
	
	; Continue loop
	jmp		loop

end:
	; Return dest
	mov		rax, rdi
	ret
