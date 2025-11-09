.model small
.stack 100h
.data
.code

main proc
       mov cx , 26
       mov bl , 65
       
       loopAlpha:
       mov dl , bl 
       mov ah , 2
       int 21h
       
       inc bl 
       loop loopAlpha

main endp
end main
