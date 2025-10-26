;instead of taking user input, use three variables of word type, assign
;three values in those and calculate their summation.

.model small
.stack 100h
.data
.code
main proc
    ;taking and adding numbers  
    mov al , 2
    add al , 3
    add al , 4
    
    ;printing sum
    add dl , 48
    add dl , al
    mov ah , 2
    int 21h
    
    main endp
end main
