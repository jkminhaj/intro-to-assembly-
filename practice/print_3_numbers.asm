; Write an assembly program that will take three numbers from keyboard as input and
; print the numbers in the console . 

.model small
.stack 100h
.data
.code
main proc  
      
    ;input func
    mov ah , 1
    int 21h 
    sub al , 48 
    ;storing it to bh
    mov bh , al
    
    ;input func
    mov ah , 1
    int 21h 
    sub al , 48 
    ;storing it to bl
    mov bl , al
    
    ;input func
    mov ah , 1
    int 21h 
    sub al , 48 
    ;storing it to ch
    mov ch , al
    
    ;printing cret          
    mov dl , 13          
    mov ah , 2
    int 21h
    ;printing new line
    mov dl , 10          
    mov ah , 2
    int 21h
    
    ;output func
    mov dl , 48
    add dl , bh
    mov ah , 2
    int 21h
    
    ;printing cret          
    mov dl , 13          
    mov ah , 2
    int 21h
    ;printing new line
    mov dl , 10          
    mov ah , 2
    int 21h 
    
    ;output func
    mov dl , 48
    add dl , bl
    mov ah , 2
    int 21h 
  
    ;printing cret          
    mov dl , 13          
    mov ah , 2
    int 21h
    ;printing new line
    mov dl , 10          
    mov ah , 2
    int 21h
    
    ;output func
    mov dl , 48
    add dl , ch
    mov ah , 2
    int 21h
    
    
    main endp
end main
