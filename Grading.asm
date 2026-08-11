; Program to enter a number and find the grade based on input
include irvine32.inc

.data
msg1 byte "Enter Number marks:", 0
msg2 byte "Your Grade is A", 0
msg3 byte "Your Grade is B", 0
msg4 byte "Your Grade is C", 0
msg5 byte "Your Grade is D", 0
msg6 byte "Your Grade is E", 0
msg7 byte "Your Grade is F", 0
msg8 byte "Invalid", 0

.code
main proc
    mov edx, offset msg1
    call writestring
    call readint
    mov ebx, eax
    call crlf

    ; Check for valid range (0 - 100)
    .if (eax < 0 || eax > 100)
        mov edx, offset msg8    ; Invalid
        call writestring
        call crlf
    .elseif (eax >= 80)
        mov edx, offset msg2    ; A
        call writestring
        call crlf
    .elseif (eax >= 70)
        mov edx, offset msg3    ; B
        call writestring
        call crlf
    .elseif (eax >= 60)
        mov edx, offset msg4    ; C
        call writestring
        call crlf
    .elseif (eax >= 50)
        mov edx, offset msg5    ; D
        call writestring
        call crlf
    .elseif (eax >= 40)
        mov edx, offset msg6    ; E
        call writestring
        call crlf
    .else
        mov edx, offset msg7    ; F
        call writestring
        call crlf
    .endif

    exit
main endp
end main