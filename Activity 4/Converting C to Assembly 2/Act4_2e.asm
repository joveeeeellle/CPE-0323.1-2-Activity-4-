.model small
.stack 100h

.data
    eax_value dw 0
    ebx_value dw 5

.code
main proc
    mov ax, @data
    mov ds, ax

    mov ax, eax_value
while_loop:
    cmp ax, ebx_value
    jge end_while

    inc ax
    jmp while_loop

end_while:

    mov ah, 4Ch
    int 21h
main endp

end main
