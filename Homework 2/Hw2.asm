INCLUDE Irvine32.inc

.code
main PROC

	mov eax, 101010b	; �Ǹ�����X�G�i��
	mov ebx, 6042d		; �Ǹ����|�X�Q�i��
	mov ecx, 179Ah		; �Ǹ����|�X�Q���i��
	mov edx, eax		; ��(eax���ȥ[ebx����) - ecx���� ���edx
	add edx, ebx
	sub edx, ecx

INVOKE ExitProcess, 0
main ENDP
END main
