TITLE Add and Subtract              (AddSub.asm)

; This program adds and subtracts 32-bit integers.
; Last update: 2/1/02
; var1=(var1+var2)-(var3+var4)





INCLUDE Irvine32.inc
.data
	var1 dword 5
	var2 dword 5
	var3 dword 1
	var4 dword 2

.code
main PROC
	
	mov eax,var1
	add eax,var2
	mov ebx,var3
	add ebx,var4
	sub eax,ebx
	mov var1,eax
	  
	
	call DumpRegs

	exit
main ENDP
END main