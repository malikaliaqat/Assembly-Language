; This program divide 32-bit integer
INCLUDE Irvine32.inc
.code
main PROC
	mov eax,50
	mov ebx,10
	mov edx,0
	idiv eax,ebx
	call writeint
	call DumpRegs
	exit
main ENDP
END main
