
; Expression: Rval = -Xval + (Yval - Zval)


include irvine32.inc


.data
	Rval SDWORD ?
	Xval SDWORD 26
	Yval SDWORD 30
	Zval SDWORD 40
.code
main PROC

				 ; Expression: Rval = -Xval + (Yval - Zval)
	mov eax,Xval
	neg eax 		 ; -26
	mov ebx,Yval
	sub ebx,Zval		 ; -10
	add eax,ebx
	mov Rval,eax		 ; -36

	call DumpRegs

	exit
main ENDP
END main