include irvine32.inc

.data
    add1 byte "Enter + for Addition", 0
    sub1 byte "Enter - for Subtraction", 0
    mul1 byte "Enter * for Multiplication", 0
    div1 byte "Enter / for Division", 0

    prompt1 byte "Enter your first No.", 0
    prompt2 byte "Enter your Second No.", 0
    msg1 byte "Enter your Choice:", 0

    msg2 byte "Add = ", 0
    msg3 byte "Sub = ", 0
    msg4 byte "Mul = ", 0
    msg5 byte "Div = ", 0
    msg6 byte "Invalid choice", 0

	temp dword ?

.code
main proc
    ; Display options
    mov edx, offset add1
    call writestring
    call crlf

    mov edx, offset sub1
    call writestring
    call crlf

    mov edx, offset mul1
    call writestring
    call crlf

    mov edx, offset div1
    call writestring
    call crlf

    ; Prompt user for choice
    mov edx, offset msg1
    call writestring
    call readchar
    mov bl ,al
    call crlf

    ; Get first number
    mov edx, offset prompt1
    call writestring
    call readint
    mov ecx, eax

    ; Get second number
    mov edx, offset prompt2
    call writestring
    call readint

    ; Perform calculation based on user's choice
    .if (bl == '+')
        mov edx, offset msg2
        call writestring
        add eax, ecx

    .elseif (bl == '-')
        mov edx, offset msg3
        call writestring

        mov temp ,eax
		mov eax,ecx

		sub eax,temp

    .elseif (bl == '*')
        mov edx, offset msg4
        call writestring
        imul eax, ecx

    .elseif (bl == '/')
        mov edx, offset msg5
        call writestring

        mov temp ,eax
		mov eax,ecx
		
		mov edx,0
		div temp



    .else
        mov edx, offset msg6
        call writestring
    .endif

    call writeint
    exit
main endp
end main