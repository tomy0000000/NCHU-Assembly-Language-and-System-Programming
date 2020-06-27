INCLUDE Irvine32.inc

.data
myArray BYTE 1,2,5,7,10,11,15

.code
main PROC
	mov ecx, LENGTHOF myArray	; Set the number for LOOP executions
	xor ebx, ebx				; ebx = 0
	xor esi, esi				; esi = 0
L1:
	movzx eax, myArray[esi]
	and eax, 1					; if eax is 0, myArray[esi] is an even number
								; if eax is 1, myArray[esi] is odd number
	add ebx, eax
L2:
	inc esi
	loop L1
INVOKE ExitProcess, 0
main ENDP
END main
