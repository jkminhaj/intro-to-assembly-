.model small
.stack 100h
.data
nums db 2,3,4,5,6,7,8
.code               
main proc
        mov ax , @data
        mov ds , ax
        
        mov cx , 7
        mov si , offset nums
        
        loo:
        mov dl , [si]
        add dl , 48
        
        mov ah , 2
        int 21h
        
        inc si
        loop loo
main endp
end main
