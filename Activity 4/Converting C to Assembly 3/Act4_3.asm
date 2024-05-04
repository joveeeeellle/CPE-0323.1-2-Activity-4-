.model small
.stack 100h

.data
    multiplier dw 50
    multiplicand dw 10
    result dw ?

.code
main proc
    mov ax, @data
    mov ds, ax

    mov ax, 0
    mov bx, multiplier
    mov cx, multiplicand

multiply_loop:
    add ax, bx
    loop multiply_loop

    mov result, ax

    mov dx, offset result
    mov ah, 09h
    int 21h

    mov ah, 4ch
    int 21h

main endp
end main
