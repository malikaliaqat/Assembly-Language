; This program divide the two variable 32-bit integers.

INCLUDE Irvine32.inc
.data
var1 dword 10
var2 dword 2

.code
main PROC
	
	mov eax,var1
	mov ebx,var2
	mov edx,0
	div ebx
	;idiv eax,ebx  
	
	call DumpRegs

	exit
main ENDP
END main