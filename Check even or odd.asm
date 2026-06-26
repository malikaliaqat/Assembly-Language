include irvine32.inc

.data
    promptMsg byte "Enter a number: ", 0
    evenMsg byte "The number is even.", 0
    oddMsg byte "The number is odd.", 0

.code
main proc
    
    mov edx, offset promptMsg
    call writestring
    call readint           
   
    mov edx, 0             ; For division
    mov ecx, 2             ; Divisor for modulus operation

    div ecx                ; Divide eax by ecx (2), result in eax, remainder in edx
    
	; Now, edx holds the remainder of num % 2

    .if edx == 0           ; If remainder is 0, the number is even
        mov edx, offset evenMsg
        call writestring
    .else                  ; Else the number is odd
        mov edx, offset oddMsg
        call writestring
    .endif

    call crlf              
    exit
main endp
end main
