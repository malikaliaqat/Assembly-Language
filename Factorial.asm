;FACTORIAL
include irvine32.inc
.data 
msg byte "Enter number ",0
msg1 byte "THE factorial = ",0
.code
.MAIN PROC
mov edx,offset msg
call writestring
call readint
mov ebx,eax
call crlf
mov eax,1   ; i=1
mov ecx,1    ;f=1
.while(eax=<ebx)  ;(i<=n)
imul eax,ecx
inc ecx
.endw
mov edx,offset msg1
call writestring
call writeint 
exit
main endp
end main
