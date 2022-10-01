section .text
		global _ft_read

_ft_read:
	mov			r8, rdx				;mov third arg (count) in r8
	mov			rax, 0x2000003		;set call to read
	syscall							;call read and return rax
	jc			error				;jump if condition is true
	mov			rax, r8				;return count
	ret
				
error:
	mov			rax, -1				;set return value to -1
	ret