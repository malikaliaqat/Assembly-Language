include irvine32.inc

.data
    msg1 byte "Enter the first number: ", 0
    msg2 byte "Enter the second number: ", 0
    msg3 byte "Enter the third number: ", 0
    minMsg byte "Minimum number is: ", 0
    maxMsg byte "Maximum number is: ", 0
    num1 dword ?
    num2 dword ?
    num3 dword ?

.code
main proc
    ; Prompt for the first number
    mov edx, offset msg1
    call writestring
    call readint
    mov num1, eax              ; Store first number in num1

    ; Prompt for the second number
    mov edx, offset msg2
    call writestring
    call readint
    mov num2, eax              ; Store second number in num2

    ; Prompt for the third number
    mov edx, offset msg3
    call writestring
    call readint
    mov num3, eax	           ; Store third number in num3
							 
    ; Finding Maximum
    mov eax, num1
    mov ebx, num2
    mov ecx, num3

    .if (eax > ebx)
        .if (eax > ecx)
            mov edx, offset maxMsg
            call writestring
            call writedec  ; Display max (num1)
            call crlf
        .else
            mov edx, offset maxMsg
            call writestring
            mov eax, ecx   ; Display max (num3)
            call writedec
            call crlf
        .endif
    .else
        .if (ebx > ecx)
            mov edx, offset maxMsg
            call writestring
            mov eax, ebx   ; Display max (num2)
            call writedec
            call crlf
        .else
            mov edx, offset maxMsg
            call writestring
            mov eax, ecx   ; Display max (num3)
            call writedec
            call crlf
        .endif
    .endif

    ; Finding Minimum
    mov eax, num1
    mov ebx, num2
    mov ecx, num3

    .if (eax < ebx)
        .if (eax < ecx)
            mov edx, offset minMsg
            call writestring
            call writedec  ; Display min (num1)
            call crlf
        .else
            mov edx, offset minMsg
            call writestring
            mov eax, ecx   ; Display min (num3)
            call writedec
            call crlf
        .endif
    .else
        .if (ebx < ecx)
            mov edx, offset minMsg
            call writestring
            mov eax, ebx   ; Display min (num2)
            call writedec
            call crlf
        .else
            mov edx, offset minMsg
            call writestring
            mov eax, ecx   ; Display min (num3)
            call writedec
            call crlf
        .endif
    .endif

    exit
main endp
end main
