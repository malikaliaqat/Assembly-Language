include irvine32.inc

.data
    msg byte "Input Table Number:", 0   
    msg1 byte " * ", 0                  
    msg2 byte " = ", 0   
	 
	              

.code
main proc
    mov edx, offset msg
    call writestring
    call readint                     
    mov ecx, eax                     ; Store the table number in ecx
    call crlf                        

    mov ebx, 1                       

    .while ebx <= 10                 
        mov eax, ecx                 ; Move the table number to eax
        call writedec                ; Print the table number

        mov edx, offset msg1         ; Print " * " symbol
        call writestring

        mov eax, ebx                 ; Move multiplier (1-10) to eax
        call writedec                ; Print the multiplier

        mov edx, offset msg2         ; Print " = " symbol
        call writestring

        imul eax,ecx                 ; Multiply table number by multiplier
        call writedec                ; Print the result

        call crlf                   
        inc ebx                      ; Increment multiplier
    .endw

    exit                             
main endp
end main
