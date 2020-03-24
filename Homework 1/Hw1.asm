INCLUDE Irvine32.inc
.data
myMessage BYTE "Hello World!!"

.code
main PROC
	mov edx,OFFSET myMessage
	call WriteString			; display myMessage
	call Crlf ;´«¦æ				; Line Break
exit
main ENDP

END main