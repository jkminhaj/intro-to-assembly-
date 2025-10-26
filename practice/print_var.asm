.model small
.stack 100h
.data

label_name db "Name : $"
label_id db "ID : $"
label_cg db "CGPA : $"

my_name db "Minhajul Islam$"
id db "2241081370$"  
cg db "3.00$"

.code
main proc
    
    ;initializing data segment
    mov ax , @data
    mov ds , ax
    
    lea dx, label_name      
    mov ah, 9
    int 21h
    
    lea dx, my_name       
    mov ah, 9
    int 21h
   
    
    ;new line 
    mov dl , 13
    mov ah , 2
    int 21h
    mov dl , 10
    mov ah , 2
    int 21h   
    
    lea dx, label_id      
    mov ah, 9
    int 21h
    
    lea dx, id       
    mov ah, 9
    int 21h
   
    
    ;new line 
    mov dl , 13
    mov ah , 2
    int 21h
    mov dl , 10
    mov ah , 2
    int 21h 
    
    lea dx, label_cg      
    mov ah, 9
    int 21h
    
    lea dx, cg       
    mov ah, 9
    int 21h
   
    
    ;new line 
    mov dl , 13
    mov ah , 2
    int 21h
    mov dl , 10
    mov ah , 2
    int 21h 
    
    

    main endp
end main
