; This program adds and subtracts 32-bit integers.

INCLUDE Irvine32.inc

.code
main PROC

	mov eax,5		
	add eax,10		
	
	call DumpRegs

	exit
main ENDP
END main