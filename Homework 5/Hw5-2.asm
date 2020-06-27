INCLUDE Irvine32.inc

.data
myArray BYTE 13,2,4,11,5,8

.code
main PROC
	mov ecx, LENGTHOF myArray
	xor eax, eax
	xor ebx, ebx
	xor edx, edx
	xor esi, esi
L1:
	movzx eax, myArray[esi]
	test eax, 1					; Check if the last bit of eax is 1
	jnz L2						; If the last bit of eax is equals to 1, jump to L2
	add ebx, eax				; Calculate the sum of even number
	jmp L3						; jump to L3, avoid calculate the sum if odd numbers
L2:
	add edx, eax				; Calculate the sum of odd number
L3:
	inc esi
	loop L1
INVOKE ExitProcess, 0
main ENDP
END main
