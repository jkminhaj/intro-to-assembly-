;Write a program in assembly where you will take three numbers as input from user.
;Add the numbers and print the result in the console. 

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
    ;adding it to bh
    add bh , al
    
    ;input func
    mov ah , 1
    int 21h 
    sub al , 48 
    ;adding it to bh
    add bh , al
    
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
    
    main endp
end main
