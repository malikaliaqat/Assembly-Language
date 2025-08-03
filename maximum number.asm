
----------------------------------------------(3 maximum number )---------------------------------
include irvine32.inc
.data 
msg1 byte " ENTER THE FIRST NUMBER = ",0
msg2 byte " ENTER THE SECOND NUMBER = ",0
msg3 byte " ENTER THE THIRD NUMBER = ",0
msg4 byte "  FIRST NUMBER IS MINIMUM = ",0
msg5 byte " SECOND  NUMBER  IS MINIMUM= ",0
msg6 byte " THIRD NUMBER  IS MINMIMUM= ",0
 .code 
 main proc
 mov edx,offset msg1
 call writestring
 call readint 
 call crlf
 mov ebx,eax

 mov edx,offset msg2
 call writestring
 call readint 
 call crlf
 mov ecx,eax

 mov edx,offset msg3
 call writestring
 call readint 
 call crlf
  
  .if(ebx<eax && ebx<ecx)
  mov edx, offset msg4
  call writestring
  .elseif(ecx<eax && ecx<ebx)
  mov edx , offset msg5
  call writestring
  .else
  mov edx,offset msg6
  call writestring
  .endif
  exit
  main endp
  end main