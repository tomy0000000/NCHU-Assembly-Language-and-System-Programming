INCLUDE Irvine32.inc

.data
ArrayB BYTE 9 DUP(?)

.code
main PROC

	mov ecx, LENGTHOF arrayB       ; loop counter
	mov esi, OFFSET arrayB         ; address of ArrayB

L1:

	mov al, 8
	mul cl                         ; multiply to al
	mov BYTE PTR [esi], al         ; store value
	add esi, TYPE ArrayB           ; move esi
	loop L1                        ; repeat until ECX = 0

INVOKE ExitProcess, 0
main ENDP
END main
