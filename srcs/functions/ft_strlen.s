section .text
	global _ft_strlen

_ft_strlen:
	; Initialize rax to -1
	mov	rax, -1

loop:
	; Increment rax
	inc	rax
	
	; Check if str[rax] is null terminator
	cmp	byte [rdi + rax], 0
	
	; If str[rax] is not null terminator, continue loop
	jne	loop
	
	; Return rax
	ret
