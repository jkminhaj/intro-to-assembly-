;swapping values

.model small
.stack 100h
.data
msg db "X = $"
msg1 db "Y = $"

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
    mov bl , al
    
    ;gap 
    mov dl , ' '
    mov ah , 2
    int 21h  
    
    lea dx, msg1       
    mov ah, 9
    int 21h
    
    mov ah , 1
    int 21h
    mov bh , al
    
    ;swapping values
    mov ch , bh
    mov bh , bl 
    mov bl , ch 
    
    ;gap
    mov dl , 13
    mov ah , 2 
    int 21h 
    mov dl , 10
    mov ah , 2 
    int 21h
    
    lea dx, msg       
    mov ah, 9
    int 21h
    
    mov dl , bl
    mov ah , 2
    int 21h
    
    ;gap 
    mov dl , ' '
    mov ah , 2
    int 21h
    
    lea dx, msg1       
    mov ah, 9
    int 21h
    
    mov dl , bh
    mov ah , 2
    int 21h
    
     
    
    
    
    main endp
end main
