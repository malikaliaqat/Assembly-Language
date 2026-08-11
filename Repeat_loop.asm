include irvine32.inc

.code
main proc

	mov eax,1
	.repeat
	call writedec
	inc eax
	call crlf
	.until eax == 10
	

exit                             
main endp
end main
