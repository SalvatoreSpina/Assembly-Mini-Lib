section .text
		global _ft_write

_ft_write:
	; Move third argument (length) to r8
	mov			r8, rdx
	
	; Set call to write (0x2000004 is the system call number for write)
	mov			rax, 0x2000004
	
	; Invoke system call
	syscall
	
	; Jump to error label if carry flag (CF) is set (indicates an error occurred)
	jc			error
	
	; Return length of data written
	mov			rax, r8
	ret
				
error:
	; Set return value to -1 (indicating an error occurred)
	mov			rax, -1
	ret