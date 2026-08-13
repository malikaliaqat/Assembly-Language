include irvine32.inc

.data 

var1 dword 4
var2 dword 2

.code 

main proc
 
call sum
exit
main endp


sum proc 
mov eax,var1
mov ebx,var2
add eax,ebx
call dumpregs
ret
sum endp
end main