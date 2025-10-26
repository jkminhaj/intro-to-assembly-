;substract

.model small
.stack 100h
.data
msg db "First number : $"
msg1 db "Second number : $"  
msg2 db "Result is : $"

.code
main proc
    
    ;initializing data segment
    mov ax , @data
    mov ds , ax
    
    lea dx, msg       
    mov ah, 9
    int 21h
    
    mov ah , 1
    int 21h
    sub al , 48
    mov bl , al
    
    ;new line 
    mov dl , 13
    mov ah , 2
    int 21h
    mov dl , 10
    mov ah , 2
    int 21h  
    
    lea dx, msg1       
    mov ah, 9
    int 21h
    
    mov ah , 1
    int 21h
    sub al , 48
    mov bh , al
    
    ;new line 
    mov dl , 13
    mov ah , 2
    int 21h
    mov dl , 10
    mov ah , 2
    int 21h 
    
    lea dx, msg2       
    mov ah, 9
    int 21h
    
    mov dl , bl
    sub dl , bh
    add dl , 48
    
    mov ah , 2
    int 21h 
    
    
    

    main endp
end main
