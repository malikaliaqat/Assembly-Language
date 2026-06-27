TITLE Add and Subtract              (AddSub.asm)

; This program adds and subtracts 32-bit integers.
; Last update: 2/1/02

INCLUDE Irvine32.inc

.code
main PROC

	mov eax,5
	mov ebx,1
	;mul ebx	 ; if we use mul then ebx means eax * ebx and answer will store in eax
	imul eax,ebx
	
	call DumpRegs

	exit
main ENDP
END main