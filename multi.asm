.model small
.stack 100h
.data
.code
main proc

;input
mov ah , 1
int 21h

sub al , 48
mov bl , al 

mov ah , 1
int 21h

sub al , 48
mov bh , al

mov al ,bl
mul bh

mov dl , al
add dl , 48

mov ah ,2
int 21h



main endp
end main

