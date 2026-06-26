include irvine32.inc
.data
	msg1 byte "Enter your first NO:",0
	msg2 byte "Enter your Second NO:",0
	msg3 byte "Enter your third NO:",0
	msg4 byte "Enter your forth NO:",0

	msg5 byte "Answer =",0
.code
main proc 
	
	mov edx ,offset msg1
	call writestring
	call readint
	mov ebx,eax

	mov edx ,offset msg2
	call writestring
	call readint

	add ebx,eax ; first two numbers added

	mov edx ,offset msg3
	call writestring
	call readint

	add ebx,eax ; first three numbers added

	mov edx ,offset msg4
	call writestring
	call readint

	add ebx,eax ; All numbers added

	mov eax,ebx ; To display answer

	

	mov edx ,offset msg5
	call writestring
	call writeint
	call crlf

exit
main endp
end main