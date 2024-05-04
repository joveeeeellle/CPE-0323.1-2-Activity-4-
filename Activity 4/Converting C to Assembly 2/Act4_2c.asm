.model small
.stack 100h

.data
    al_value db 10
    bl_value db 5
    cl_value db 5
    x db ?

.code
main proc
    mov ax, @data
    mov ds, ax

    mov al, al_value
    cmp al, bl_value
    jle end_if

    mov bl, cl_value
    cmp bl, cl_value
    jne end_if

    mov x, 1

end_if:
 
    mov ah, 4Ch
    int 21h
main endp

end main
