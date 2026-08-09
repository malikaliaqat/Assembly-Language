include irvine32.inc

.code
main proc
    ; Initialize the first two numbers of the Fibonacci sequence
    mov eax, 0                 ; a = 0
    call writeint              ; Print 0
    mov eax, 1                 ; b = 1
    call writeint              ; Print 1

    ; Set up Fibonacci calculation
    mov eax, 0                 ; a = 0 (initialize first number)
    mov ebx, 1                 ; b = 1 (initialize second number)
    mov ecx, 5                 ; Set loop counter for remaining 5 Fibonacci numbers

l1:
    add eax, ebx               ; Calculate next Fibonacci number: n = a + b
    call writeint              ; Print current Fibonacci number

    mov edx, eax               ; Store current result in edx (temp variable)
    mov eax, ebx               ; Move b into a (shift sequence left)
    mov ebx, edx               ; Move n (edx) into b

    loop l1                    ; Decrement ecx and repeat until ecx = 0

exit
main endp
end main
