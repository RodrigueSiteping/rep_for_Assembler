mytereryFun(unsigned int):

push rbp
mov rbp, rsp
mov dword [rbp - 4], edi
mov eax, dword [rbp - 4]
mov ecx, dword [rbp - 4]
sub ecx, 1
and eax, ecx
cmp eax, 0
; sete al . falls ZF = 0, dann setze das unterste Bit im Destinations-Register
and al, 1
movzx eax, al; Wert aus dem Srce-Register in den oberen Bits mit Nullen aufgefüllt wird.
pop rbp
ret
