; Program to calculate Rvar = -Xval + (Yval - Zval)
include irvine32.inc

.data
Rvar dword ?              ; Result variable
Xval dword 16             ; Initial value for Xval
Yval dword 30             ; Initial value for Yval
Zval dword 40             ; Initial value for Zval
m1 byte "Rvar = -Xval + (Yval - Zval)", 0
m2 byte "RVar = ", 0

.code
main proc
    ; Display the expression
    mov edx, offset m1
    call writestring
    call crlf

    ; Calculate Rvar = -Xval + (Yval - Zval)
    mov eax, Xval           ; Load Xval into eax
    neg eax                 ; Negate eax to get -Xval
    mov ebx, Yval           ; Load Yval into ebx
    sub ebx, Zval           ; Calculate (Yval - Zval)
    add eax, ebx            ; Add -Xval to (Yval - Zval)
    mov Rvar, eax           ; Store the result in Rvar

    ; Display the result
    mov edx, offset m2
    call writestring
    mov eax, Rvar
    call writeint
    call crlf

    exit
main endp
end main