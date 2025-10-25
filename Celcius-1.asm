; This program  find the celcius
; C=F-32*5/9

include irvine32.inc
.data
	faren dword 80
	celcius dword ?
.code
main PROC
	mov ebx,faren
	sub ebx,32
	mov ecx,ebx
	mov edx,0
	mov ebx,9
	mov eax,5
	div ebx
	mov ebx,ecx
	imul eax,ebx
	mov celcius,eax
	call DumpRegs
	exit
main ENDP
END main

