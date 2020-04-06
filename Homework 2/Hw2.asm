INCLUDE Irvine32.inc

.code
main PROC

	mov eax, 101010b	; 學號末兩碼二進位
	mov ebx, 6042d		; 學號末四碼十進位
	mov ecx, 179Ah		; 學號末四碼十六進位
	mov edx, eax		; 把(eax的值加ebx的值) - ecx的值 放到edx
	add edx, ebx
	sub edx, ecx

INVOKE ExitProcess, 0
main ENDP
END main
