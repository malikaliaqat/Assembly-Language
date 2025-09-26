include irvine32.inc
.data
.code
main proc
mov eax ,0
mov ebx,1
mov ecx,5
l1:
add eax,ebx
call writeint
mov  edx,eax
mov eax,ebx
mov ebx,edx
loop l1
 exit 
 main endp 
 end main 
