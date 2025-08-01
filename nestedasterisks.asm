include irvine32.inc

.data 

ast byte "*", 0

.code 

main proc
	mov eax, 1
	.while eax<=5
		mov ebx, 1
		.while ebx<=5
			mov edx, offset ast
			call writestring
			inc ebx
		.endw
		call crlf
		inc eax
	.endw
		exit
	main endp
end main
 
