.model small
.stack 100h
.data
.code 
main proc
    
    ;taking input  
    mov ah , 1 
    int 21h
    sub al , 48
    ;assinging value to bl
    mov bl , al 
    
    ;taking input
    mov ah , 1 
    int 21h
    sub al , 48
    ;assinging value to bh
    mov bh , al
    
    mov dl , bl
    add dl , bh
    
    ;output
    add dl , 48
    mov ah , 2
    int 21h
    
    
    
    main endp
end main
