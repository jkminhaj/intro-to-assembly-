;-----------------------------------------------
; 8086 Assembly Cheat Sheet Example
; Combines Input, Output, Messages, Newline, Arithmetic
;-----------------------------------------------

.model small
.stack 100h

.data
; ---------------- Messages ----------------
msg1 db "Enter first number:$"
msg2 db 0Dh,0Ah, "Enter second number:$"
msg3 db 0Dh,0Ah, "Hello World!$"
msg4 db 0Dh,0Ah, "Character-by-character message:",0
msg5 db 'H','e','l','l','o',' ','A','S','M','!',0

.code
main proc
    ; ---- Initialize data segment ----
    mov ax, @data
    mov ds, ax

; ======== Input Example =========
    ; Input first number
    lea dx, msg1       ; print prompt
    mov ah, 9
    int 21h

    mov ah, 1          ; read char from keyboard
    int 21h
    sub al, 48         ; convert ASCII -> numeric
    mov bl, al         ; store input in BL

    ; Input second number
    lea dx, msg2
    mov ah, 9
    int 21h

    mov ah, 1
    int 21h
    sub al, 48
    mov bh, al         ; store input in BH

; ======== Output Example =========
    ; Print Hello World message
    lea dx, msg3
    mov ah, 9
    int 21h

    ; Print newline
    mov dl, 13
    mov ah, 2
    int 21h
    mov dl, 10
    mov ah, 2
    int 21h

    ; Print stored numbers (as ASCII)
    mov dl, bl
    add dl, 48         ; convert numeric -> ASCII
    mov ah, 2
    int 21h

    mov dl, ' '
    mov ah, 2
    int 21h

    mov dl, bh
    add dl, 48
    mov ah, 2
    int 21h

; ======== Character-by-character string =========
    lea si, msg5       ; point to string
    print_loop:
        mov al, [si]
        cmp al, 0
        je done_print
        mov dl, al
        mov ah, 2
        int 21h
        inc si
        jmp print_loop
    done_print:

    ; Print newline
    mov dl, 13
    mov ah, 2
    int 21h
    mov dl, 10
    mov ah, 2
    int 21h

; ======== Exit Program =========
    mov ah, 4Ch
    int 21h

main endp
end main
