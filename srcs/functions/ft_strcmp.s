section .text
		global _ft_strcmp

_ft_strcmp:
	; Initialize i to -1
	mov		rax, -1

loop:
	; Increment i
	inc		rax
	
	; Load s1[i] into cl
	mov		cl, byte [rdi + rax]
	
	; Load s2[i] into dl
	mov		dl, byte [rsi + rax]
	
	; Check if s1[i] is null terminator
	cmp		cl, 0
	
	; If s1[i] is null terminator, jump to end of loop
	je		end
	
	; Check if s2[i] is null terminator
	cmp		dl, 0
	
	; If s2[i] is null terminator, jump to end of loop
	je		end
	
	; Compare s1[i] and s2[i]
	cmp		cl, dl
	
	; If s1[i] == s2[i], continue loop
	je		loop
	
	; Otherwise, jump to end of loop
	jmp		end

end:
	; Compare s1[i] and s2[i]
	cmp     cl, dl
	
	; If s1[i] == s2[i], return 0
	je      equal
	
	; If s1[i] < s2[i], return -1
	jb      negative
	
	; If s1[i] > s2[i], return 1
	ja      positive

equal:
	; Return 0
	mov		rax, 0
	ret

negative:
	; Return -1
	mov		rax, -1
	ret

positive:
	; Return 1
	mov		rax, 1
	ret
