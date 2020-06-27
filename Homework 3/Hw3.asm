INCLUDE Irvine32.inc

.data
Rval DWORD ?
Xval DWORD 26
Yval DWORD 30
Zval DWORD 40

.code
main PROC

	mov eax, Xval	; EAX = 26
	mov ebx, Yval	; EBX = 30
	neg ebx			; EBX = -30
	add ebx, Zval	; EBX = 10
	inc ebx			; EBX = 11
	sub eax, ebx	; EAX = 15
	mov Rval, eax	; Rval = 15

INVOKE ExitProcess, 0
main ENDP
END main

