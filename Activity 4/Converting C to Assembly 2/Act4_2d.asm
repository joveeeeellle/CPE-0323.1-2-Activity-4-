.model small
.stack 100h

.data
    al_value db 10
    bl_value db 5
    cl_value db 15
    x db ?

.code
main proc
    mov ax, @data
    mov ds, ax

    mov al, al_value
    cmp al, bl_value
    jle else_block

    mov bl, bl_value
    cmp bl, cl_value
    jle else_block

    mov x, 1
    jmp end_if

else_block:

end_if:

    mov ah, 4Ch
    int 21h
main endp

end main
