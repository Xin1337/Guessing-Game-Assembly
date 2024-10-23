.model small
.stack 100h

.data
    msg db 'Enter 1 to fill, 2 to remove fill, 3 to exit: $'
    placeholder db 'Your input: $'
    color db 0Eh ; Light yellow on black background
    input db ?
    increment_value db '0' ; Starting value for increment

.code

main proc
    mov ax, @data
    mov ds, ax
    
    ; Clear screen
    mov ax, 0600h
    mov bh, color
    mov cx, 0000h
    mov dx, 1950h
    int 10h

loop_start:
    ; Set cursor position for message
    mov ah, 02h
    mov bh, 00h
    mov dh, 03h  ; Row 3
    mov dl, 18h  ; Column 24
    int 10h

    ; Display message
    mov ah, 09h
    lea dx, msg
    int 21h

    ; Read input at the message cursor position
    mov ah, 01h
    int 21h
    sub al, '0'  ; Convert ASCII to number
    mov input, al

    ; Set cursor position for input placeholder
    mov ah, 02h
    mov bh, 00h
    mov dh, 04h  ; Row 4 (below the message)
    mov dl, 18h  ; Column 24
    int 10h

    ; Display placeholder text
    mov ah, 09h
    lea dx, placeholder
    int 21h

    ; Display incrementing value
    mov ah, 02h
    mov dl, increment_value
    int 21h

    ; Compare input
    cmp input, 1
    je increment_value_proc
    cmp input, 2
    je decrement_value_proc
    cmp input, 3
    je exit_program

    ; Loop back if invalid input
    jmp loop_start

increment_value_proc:
    ; Increment the value
    inc increment_value
    cmp increment_value, '9' + 1
    jne skip_reset_increment
    mov increment_value, '0'
skip_reset_increment:
    jmp loop_start

decrement_value_proc:
    ; Decrement the value
    dec increment_value
    cmp increment_value, '0' - 1
    jne skip_reset_decrement
    mov increment_value, '9'
skip_reset_decrement:
    jmp loop_start

exit_program:
    ; Exit program
    mov ah, 4Ch
    int 21h

main endp
end main