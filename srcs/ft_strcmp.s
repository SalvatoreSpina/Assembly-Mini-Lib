section .text
		global _ft_strcmp

_ft_strcmp:
	mov		rax, -1					;set i = -1

loop:								;while loop
	inc		rax						;i++
	mov		cl, byte [rdi + rax]	;cl = s1[i]
	mov		dl, byte [rsi + rax]	;dl = s2[i]
	cmp		cl, 0					;compare cl, 0
	je		end						;jump to end if equals
	cmp		dl, 0					;if dl is equal to 0
	je		end						;jump to end if	equals
	cmp		cl, dl					;compare cl and dl
	je		loop					;jump to end if equals
	jmp		end						;jump to end

end:
	cmp     cl, dl                  ;compare cl, dl
	je      equal                   ;jump if equals
	jb      negative                ;jump if less than
	ja      positive                ;jump if greater than

equal:
	mov		rax, 0                  ;return 0
	ret

negative:
	mov		rax, -1                 ;return -1
	ret

positive:
	mov		rax, 1                  ;return 1
	ret