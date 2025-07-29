include irvine32.inc

.data

msg1 byte " Hello BSC 5th Semester",0



.code

main proc

	mov edx,offset msg1
	mov eax,red+(green*16)   ;red Text Color and Green Background Color
	call settextcolor
	call writestring
	call crlf
	call crlf
exit
main endp
end main
