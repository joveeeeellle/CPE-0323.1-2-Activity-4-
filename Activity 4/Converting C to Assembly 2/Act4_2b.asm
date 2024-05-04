.model small
.stack 100h

.data
    var1 dw 10
    var2 dw 20
    var3 dw ?
    var4 dw ?

.code
main proc
    mov ax, @data
    mov ds, ax

    mov ax, var1
    cmp ax, var2
    jg else_block
    mov var3, 15
    jmp end_if

else_block:
    mov var3, 10

end_if:
    mov var4, 20

    ; Display the values of var3 and var4
    mov ax, var3
    call display_number
    mov ax, var4
    call display_number

    ; Terminate program
    mov ah, 4Ch
    int 21h
main endp

display_number proc
    mov bx, 10               

digit_loop:
    mov dx, 0                
    div bx                    
    add dl, '0'              
    mov ah, 02h               
    int 21h                  
    test ax, ax               
    jnz digit_loop            
    RET                       
display_number endp

end main
