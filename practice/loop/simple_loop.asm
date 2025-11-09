.model small
.stack 100h
.data
.code

main proc
    mov cx , 10
    mov bl , 0
    
loopNumberPrint:
    mov dl , bl 
    add dl , 48
    mov ah , 2
    int 21h
    inc bl 
    loop loopNumberPrint

main endp
end main
