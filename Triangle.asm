include irvine32.inc

.data
x1 byte "*",0
x2 dword 1
save dword ?
.code
main proc

mov ecx,5
l1:
mov save,ecx
mov ecx,x2
l2:
mov edx,offset x1
call writestring
loop l2
call crlf
inc x2
mov ecx,save
loop l1



exit
main endp
end main
