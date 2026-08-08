include irvine32.inc

.data
    prompt byte "Enter number: ", 0                   
    prompt2 byte "Factorial of given number is: ", 0  

.code
main proc
    
    mov edx, offset prompt
    call writestring
    call readint                                      ; Read user input into eax
    mov ecx, eax                                      ; Copy input number to ecx for countdown
    dec ecx                                           ; Start the countdown from (n - 1) to 1

    ; Loop to calculate factorial
    L1:
        imul eax, ecx                                 ; Multiply eax by current value of ecx
        loop L1                                       ; Loop until ecx reaches 0

    ; Display the factorial result
    mov edx, offset prompt2
    call writestring
    call writedec                                     
    call crlf

    exit                                              
main endp
end main
