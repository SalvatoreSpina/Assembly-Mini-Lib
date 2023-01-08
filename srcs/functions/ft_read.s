section .text
		global _ft_read

_ft_read:
	; Move third argument (count) to r8
	mov			r8, rdx
	
	; Set call to read (0x2000003 is the system call number for read)
	mov			rax, 0x2000003
	
	; Invoke system call
	syscall
	
	; Jump to error label if carry flag (CF) is set (indicates an error occurred)
	jc			error
	
	; Return number of bytes read
	mov			rax, r8
	ret
				
error:
	; Set return value to -1 (indicating an error occurred)
	mov			rax, -1
	ret
