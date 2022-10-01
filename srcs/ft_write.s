section .text
		global _ft_read

_ft_write:
	mov			r8, rdx				;mov third arg (length) in r8
	mov			rax, 0x2000004		;set call to write
	syscall							;call write and return rax
	jc			error				;jump if condition is true
	mov			rax, r8				;return count
	ret
				
error:
	mov			rax, -1				;set return value to -1
	ret