model small
.stack 100h
.data
    message db "hello world!", "$"
.code
main:
    mov ax, @data
    mov ds, ax

    mov dx, offset message
    mov ah, 09h
    int 21h

    mov ah, 1
    int 21h

    mov ax, 4c00h
    int 21h
main endp

end main








 
