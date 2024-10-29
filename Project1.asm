.model small
.stack 100h
.data
ngaran db "Guess or Spill it$"
instruc db "Enter the Number$"
wrong db "Oops Incorrect$"
try db "Try Again!$"
win db "Congratsulation, You Guess the Number!!$"
guess db "What's the Number?$"
input1 db ?
input2 db ?
s dw ?
f dw ?
onefourth_called db 0
half_called db 0 ; Flag to check if onefourth was called before
seven_called db 0 
zero_called db 0 
.code
begin proc near
    mov ax,@data
    mov ds,ax
    
; Clear screen
mov ax,0600h
mov bh,07h
mov cx,0000h
mov dx,1950h
int 10h

;Draw first box
mov ax,0600h
mov bh,7fh
mov ch,16d
mov cl,23d
mov dh,16d
mov dl,23d
int 10h

call timer

;Draw second box
mov ax,0600h
mov bh,7fh
mov ch,16d
mov cl,25d
mov dh,16d
mov dl,25d
int 10h


 ; Set cursor position for 'S'
 mov ah,02h
 mov bh,00d
 mov bl,00d
 mov dh,18d
 mov dl,28d
 int 10h
 
; Display 'S'
 mov ah,02h
 mov dl,'S'
 int 21h

call timer

; Display third box
mov ax,0600h
mov bh,7fh
mov ch,16d
mov cl,27d
mov dh,16d
mov dl,27d
int 10h

call timer

; Display fourth box
mov ax,0600h
mov bh,7fh
mov ch,16d
mov cl,29d
mov dh,16d
mov dl,29d
int 10h

 ; Set cursor position for 'T'
 mov ah,02h
 mov bh,00d
 mov bl,00d
 mov dh,18d
 mov dl,30d
 int 10h
 
 ; Display 'T'
 mov ah,02h
 mov dl,'T'
 int 21h

call timer

;5th box
mov ax,0600h
mov bh,7fh
mov ch,16d
mov cl,31d
mov dh,16d
mov dl,31d
int 10h

call timer

;Draw sixth box
mov ax,0600h
mov bh,7fh
mov ch,16d
mov cl,33d
mov dh,16d
mov dl,33d
int 10h

 ; Set cursor position for 'A'
 mov ah,02h
 mov bh,00d
 mov bl,00d
 mov dh,18d
 mov dl,32d
 int 10h
 
 ; Display 'A'
 mov ah,02h
 mov dl,'A'
 int 21h

call timer

; Draw seventh box
mov ax,0600h
mov bh,7fh
mov ch,16d
mov cl,35d
mov dh,16d
mov dl,35d
int 10h

call timer

; Draw eight box
mov ax,0600h
mov bh,7fh
mov ch,16d
mov cl,37d
mov dh,16d
mov dl,37d
int 10h

; Set cursor position for 'R'
mov ah,02h
mov bh,00d
mov bl,00d
mov dh,18d
mov dl,34d
int 10h
 
; Display 'R'
mov ah,02h
mov dl,'R'
int 21h

call timer

; Draw ninth box
mov ax,0600h
mov bh,7fh
mov ch,16d
mov cl,39d
mov dh,16d
mov dl,39d
int 10h

call timer

; Draw tenth box
mov ax,0600h
mov bh,7fh
mov ch,16d
mov cl,41d
mov dh,16d
mov dl,41d
int 10h

 ; Set cursor position for 'I'
 mov ah,02h
 mov bh,00d
 mov bl,00d
 mov dh,18d
 mov dl,36d
 int 10h
 
 ; Display T
 mov ah,02h
 mov dl,'T'
 int 21h

call timer

; Draw eleventh box
mov ax,0600h
mov bh,7fh
mov ch,16d
mov cl,43d
mov dh,16d
mov dl,43d
int 10h

call timer

; Draw twelfth box
mov ax,0600h
mov bh,7fh
mov ch,16d
mov cl,45d
mov dh,16d
mov dl,45d
int 10h

; Set cursor position for 'I'
mov ah,02h
mov bh,00d
mov bl,00d
mov dh,18d
mov dl,38d
int 10h
 
; Display 'I'
mov ah,02h
mov dl,'I'
int 21h

call timer

; Draw thirteenth box
mov ax,0600h
mov bh,7fh
mov ch,16d
mov cl,47d
mov dh,16d
mov dl,47d
int 10h

call timer

; Draw fourteenth box
 mov ah,02h
 mov bh,00d
 mov bl,00d
 mov dh,18d
 mov dl,40d
 int 10h
 
 ; Display 'N'
 mov ah,02h
 mov dl,'N'
 int 21h
 
 call timer
 
 ; Draw fifteenth box
mov ax,0600h
mov bh,7fh
mov ch,16d
mov cl,49d
mov dh,16d
mov dl,49d
int 10h
 
 call timer
 
;COOD of G
 mov ah,02h
 mov bh,00d
 mov bl,00d
 mov dh,18d
 mov dl,42d
 int 10h
 
 ;display G
 mov ah,02h
 mov dl,'G'
 int 21h

mov ax,4c00h
int 21

call timer
    ;clearscreen
    mov ax,0600h
    mov bh,07h
    mov cx,0000h
    mov dx,1950h
    int 10h
    
    mov ax, 600h
    mov bh, 27h
    mov ch, 16d
    mov cl, 23d
    mov dh, 06d
    mov dl, 23d
    int 10h
    
    ;title
    mov ah,02h
    mov bh,00h
    mov dh,03h
    mov dl,18h
    int 10h
    
    ;call the title
    mov ah,09h
    lea dx,ngaran
    int 21h
    
    ;instruction
    mov ah,02h
    mov bh,00h
    mov dh,05h
    mov dl,18h
    int 10h
    
    ;call instruction
    mov ah,09h
    lea dx,instruc
    int 21h
    
    ;player1
    mov ah,02h
    mov bh,00h
    mov dh,07h
    mov dl,18h
    int 10h
    
    ;for enter
    mov ah,02h
    mov bh,00h
    mov dh,07h
    mov dl,18h
    int 10h
    
    mov ah,09h
    lea dx,guess
    int 21h
    
    mov ah,08h
    int 21h
    mov input1,al
    
liwat:
    ;clearscreen
    mov ax,0600h
    mov bh,07h
    mov cx,0000h
    mov dx,1950h
    int 10h
    
    ;wit
    mov ah,02h
    mov bh,00h
    mov dh,03h
    mov dl,18h
    int 10h
    
    mov ah,09h
    lea dx,ngaran
    int 21h
    
    ;choosing
    mov ah,02h
    mov bh,00h
    mov dh,05h
    mov dl,18h
    int 10h
    
    mov ah,09h
    lea dx,guess
    int 21h
    
    mov ah,01h
    int 21h
    mov al,al
    
    cmp input1,al
    je grats
    jmp oops
    
grats:
    mov ah,02h
    mov bh,00h
    mov dh,0fh
    mov dl,18h
    int 10h
    
    mov ah,09h
    lea dx,win 
    int 21h
    jmp exit

oops: 
    mov ah,02h
    mov bh,00h
    mov dh,0ch
    mov dl,18h
    int 10h
    
    mov ah,09h
    lea dx,try
    int 21h
    
    ; Call onefourth procedure
    call zero
	
	
    ; Check if onefourth was called before
    cmp zero_called, 1
	je baso
    
    ; Set the flag to indicate onefourth has been called
    mov zero_called, 1
    
    ; Call timer procedure for delay
    call timer
    
		call onefourth
	cmp onefourth_called, 1
	je baso
	mov onefourth_called, 1
	call timer
	
	call half
	cmp half_called, 1
	je baso
	mov onefourth_called, 1
	call timer
	
	call seven
	cmp seven_called, 1
	je baso
	mov seven_called, 1
	call timer
	
    ; Jump back to the main loop
    jmp liwat
    
exit:
    mov ah,4ch
    int 21h
     
timer proc near
    mov s,0
x:
    mov f,0
x1:
    inc f
    cmp f,0fffh
    jne x1
    inc s
    cmp s,00ffh
    jne x
    ret
timer endp

baso proc near
    ; Clear the screen
    mov ax, 0600h
    mov bh, 07h
    mov cx, 0000h
    mov dx, 184fh
    int 10h

    ; Set cursor position
    mov ah, 02h
    mov bh, 00h
    mov dh, 15d
    mov dl, 24d
    int 10h

    ; Display text or graphics
    mov ax, 600h
    mov bh, 16h
    mov dh, 15d
    mov ch, 7d
    mov cl, 24d
    mov dl, 50d
    int 10h
    
    mov ax, 600h
    mov bh, 27h
    mov ch, 16d
    mov cl, 23d
    mov dh, 16d
    mov dl, 23d
    int 10h
    
    mov ax, 600h
    mov bh, 27h
    mov ch, 7d
    mov dh, 7d
    int 10h
    
    mov ax, 600h
    mov bh, 27h
    mov ch, 8d
    mov dh, 8d
    int 10h
    
    mov ax, 600h
    mov bh, 27h
    mov ch, 9d
    mov dh, 9d
    int 10h
    
    mov ax, 600h
    mov bh, 27h
    mov ch, 10d
    mov dh, 10d
    int 10h
    
    mov ax, 600h
    mov bh, 27h
    mov ch, 11d
    mov dh, 11d
    int 10h
    
    mov ax, 600h
    mov bh, 27h
    mov ch, 12d
    mov dh, 12d
    int 10h
    
    mov ax, 600h
    mov bh, 27h
    mov ch, 13d
    mov dh, 13d
    int 10h
    
    mov ax, 600h
    mov bh, 27h
    mov ch, 14d
    mov dh, 14d
    int 10h
    
    mov ax, 600h
    mov bh, 27h
    mov ch, 15d
    mov dh, 15d
    int 10h
    
    mov ax, 600h
    mov bh, 27h
    mov ch, 16d
    mov cl, 24d
    mov dh, 16d
    mov dl, 24d
    int 10h
    
    mov ax, 600h
    mov bh, 27h
    mov ch, 16d
    mov cl, 25d
    mov dh, 16d
    mov dl, 25d
    int 10h
    
    mov ax, 600h
    mov bh, 27h
    mov ch, 16d
    mov cl, 26d
    mov dh, 16d
    mov dl, 26d
    int 10h
    
    mov ax, 600h
    mov bh, 27h
    mov ch, 16d
    mov cl, 27d
    mov dh, 16d
    mov dl, 27d
    int 10h
    
    mov ax, 600h
    mov bh, 27h
    mov ch, 16d
    mov cl, 28d
    mov dh, 16d
    mov dl, 28d
    int 10h
    
    mov ax, 600h
    mov bh, 27h
    mov ch, 16d
    mov cl, 29d
    mov dh, 16d
    mov dl, 29d
    int 10h
    
    mov ax, 600h
    mov bh, 27h
    mov ch, 16d
    mov cl, 30d
    mov dh, 16d
    mov dl, 30d
    int 10h
    
    mov ax, 600h
    mov bh, 27h
    mov ch, 16d
    mov cl, 31d
    mov dh, 16d
    mov dl, 31d
    int 10h
    
    mov ax, 600h
    mov bh, 27h
    mov ch, 16d
    mov cl, 32d
    mov dh, 16d
    mov dl, 32d
    int 10h
    
    mov ax, 600h
    mov bh, 27h
    mov ch, 16d
    mov cl, 33d
    mov dh, 16d
    mov dl, 33d
    int 10h
    
    mov ax, 600h
    mov bh, 27h
    mov ch, 16d
    mov cl, 34d
    mov dh, 16d
    mov dl, 34d
    int 10h
    
    mov ax, 600h
    mov bh, 27h
    mov ch, 16d
    mov cl, 35d
    mov dh, 16d
    mov dl, 35d
    int 10h
    
    mov ax, 600h
    mov bh, 27h
    mov ch, 16d
    mov cl, 36d
    mov dh, 16d
    mov dl, 36d
    int 10h
    
    mov ax, 600h
    mov bh, 27h
    mov ch, 16d
    mov cl, 37d
    mov dh, 16d
    mov dl, 37d
    int 10h
    
    mov ax, 600h
    mov bh, 27h
    mov ch, 16d
    mov cl, 38d
    mov dh, 16d
    mov dl, 38d
    int 10h
    
    mov ax, 600h
    mov bh, 27h
    mov ch, 16d
    mov cl, 39d
    mov dh, 16d
    mov dl, 39d
    int 10h
    
    mov ax, 600h
    mov bh, 27h
    mov ch, 16d
    mov cl, 40d
    mov dh, 16d
    mov dl, 40d
    int 10h
    
    mov ax, 600h
    mov bh, 27h
    mov ch, 16d
    mov cl,41d
    mov dh, 16d
    mov dl, 41d
    int 10h
    
    mov ax, 600h
    mov bh, 27h
    mov ch, 16d
    mov cl, 42d
    mov dh, 16d
    mov dl, 42d
    int 10h
    
    mov ax, 600h
    mov bh, 27h
    mov ch, 16d
    mov cl, 43d
    mov dh, 16d
    mov dl, 43d
    int 10h
    
    mov ax, 600h
    mov bh, 27h
    mov ch, 16d
    mov cl, 44d
    mov dh, 16d
    mov dl, 44d
    int 10h
    
    mov ax, 600h
    mov bh, 27h
    mov ch, 16d
    mov cl, 45d
    mov dh, 16d
    mov dl, 45d
    int 10h
    
    mov ax, 600h
    mov bh, 27h
    mov ch, 16d
    mov cl, 46d
    mov dh, 16d
    mov dl, 47d
    int 10h
    
    mov ax, 600h
    mov bh, 27h
    mov ch, 16d
    mov cl, 48d
    mov dh, 16d
    mov dl, 48d
    int 10h
    
    mov ax, 600h
    mov bh, 27h
    mov ch, 16d
    mov cl, 49d
    mov dh, 16d
    mov dl, 49d
    int 10h
    
    mov ax, 600h
    mov bh, 27h
    mov ch, 16d
    mov cl, 50d
    mov dh, 16d
    mov dl, 50d
    int 10h
    
    mov ax, 600h
    mov bh, 27h
    mov ch, 16d
    mov cl, 51d
    mov dh, 16d
    mov dl, 51d
    int 10h
    
    ;length left
    mov ax, 600h
    mov bh, 27h
    mov ch, 7d
    mov dh, 7d
    int 10h
    
    mov ax, 600h
    mov bh, 27h
    mov ch, 8d
    mov dh, 8d
    int 10h
    
    mov ax, 600h
    mov bh, 27h
    mov ch, 9d
    mov dh, 9d
    int 10h
    
    mov ax, 600h
    mov bh, 27h
    mov ch, 10d
    mov dh, 10d
    int 10h
    
    mov ax, 600h
    mov bh, 27h
    mov ch, 11d
    mov dh, 11d
    int 10h
    
    mov ax, 600h
    mov bh, 27h
    mov ch, 12d
    mov dh, 12d
    int 10h
    
    mov ax, 600h
    mov bh, 27h
    mov ch, 13d
    mov dh, 13d
    int 10h
    
    mov ax, 600h
    mov bh, 27h
    mov ch, 14d
    mov dh, 14d
    int 10h
    
    mov ax, 600h
    mov bh, 27h
    mov ch, 15d
    mov dh, 15d
    int 10h

  ret
baso endp

onefourth proc near
    ; Clear the screen
    mov ax, 0600h
    mov bh, 07h
    mov cx, 0000h
    mov dx, 184fh
    int 10h

    ; Set cursor position
    mov ah, 02h
    mov bh, 00h
    mov dh, 15d
    mov dl, 24d
    int 10h

    ; Display text or graphics
    mov ax, 600h
    mov bh, 16h
    mov dh, 15d
    mov ch, 13d
    mov cl, 24d
    mov dl, 50d
    int 10h
    
    mov ax, 600h
    mov bh, 27h
    mov ch, 16d
    mov cl, 23d
    mov dh, 16d
    mov dl, 23d
    int 10h
    
    mov ax, 600h
    mov bh, 27h
    mov ch, 7d
    mov dh, 7d
    int 10h
    
    mov ax, 600h
    mov bh, 27h
    mov ch, 8d
    mov dh, 8d
    int 10h
    
    mov ax, 600h
    mov bh, 27h
    mov ch, 9d
    mov dh, 9d
    int 10h
    
    mov ax, 600h
    mov bh, 27h
    mov ch, 10d
    mov dh, 10d
    int 10h
    
    
    mov ax, 600h
    mov bh, 27h
    mov ch, 11d
    mov dh, 11d
    int 10h
    
    
    mov ax, 600h
    mov bh, 27h
    mov ch, 12d
    mov dh, 12d
    int 10h
    
    mov ax, 600h
    mov bh, 27h
    mov ch, 13d
    mov dh, 13d
    int 10h
    
    mov ax, 600h
    mov bh, 27h
    mov ch, 14d
    mov dh, 14d
    int 10h

    mov ax, 600h
    mov bh, 27h
    mov ch, 15d
    mov dh, 15d
    int 10h

    
    mov ax, 600h
    mov bh, 27h
    mov ch, 16d
    mov cl, 24d
    mov dh, 16d
    mov dl, 24d
    int 10h
    
    mov ax, 600h
    mov bh, 27h
    mov ch, 16d
    mov cl, 25d
    mov dh, 16d
    mov dl, 25d
    int 10h
    
    
    mov ax, 600h
    mov bh, 27h
    mov ch, 16d
    mov cl, 26d
    mov dh, 16d
    mov dl, 26d
    int 10h
    
    
    mov ax, 600h
    mov bh, 27h
    mov ch, 16d
    mov cl, 27d
    mov dh, 16d
    mov dl, 27d
    int 10h
    
    
    mov ax, 600h
    mov bh, 27h
    mov ch, 16d
    mov cl, 28d
    mov dh, 16d
    mov dl, 28d
    int 10h
    
        
    mov ax, 600h
    mov bh, 27h
    mov ch, 16d
    mov cl, 29d
    mov dh, 16d
    mov dl, 29d
    int 10h
    
    
        
    mov ax, 600h
    mov bh, 27h
    mov ch, 16d
    mov cl, 30d
    mov dh, 16d
    mov dl, 30d
    int 10h
    
    
        
    mov ax, 600h
    mov bh, 27h
    mov ch, 16d
    mov cl, 31d
    mov dh, 16d
    mov dl, 31d
    int 10h
    
        
    mov ax, 600h
    mov bh, 27h
    mov ch, 16d
    mov cl, 32d
    mov dh, 16d
    mov dl, 32d
    int 10h

    mov ax, 600h
    mov bh, 27h
    mov ch, 16d
    mov cl, 33d
    mov dh, 16d
    mov dl, 33d
    int 10h
    
        
    mov ax, 600h
    mov bh, 27h
    mov ch, 16d
    mov cl, 33d
    mov dh, 16d
    mov dl, 33d
    int 10h
    
        
    mov ax, 600h
    mov bh, 27h
    mov ch, 16d
    mov cl, 34d
    mov dh, 16d
    mov dl, 34d
    int 10h
        
    mov ax, 600h
    mov bh, 27h
    mov ch, 16d
    mov cl, 35d
    mov dh, 16d
    mov dl, 35d
    int 10h
        
    mov ax, 600h
    mov bh, 27h
    mov ch, 16d
    mov cl, 36d
    mov dh, 16d
    mov dl, 36d
    int 10h
        
    mov ax, 600h
    mov bh, 27h
    mov ch, 16d
    mov cl, 37d
    mov dh, 16d
    mov dl, 37d
    int 10h
        
    mov ax, 600h
    mov bh, 27h
    mov ch, 16d
    mov cl, 38d
    mov dh, 16d
    mov dl, 38d
    int 10h
        
    mov ax, 600h
    mov bh, 27h
    mov ch, 16d
    mov cl, 39d
    mov dh, 16d
    mov dl, 39d
    int 10h
        
    mov ax, 600h
    mov bh, 27h
    mov ch, 16d
    mov cl, 40d
    mov dh, 16d
    mov dl, 40d
    int 10h
        
    mov ax, 600h
    mov bh, 27h
    mov ch, 16d
    mov cl,41d
    mov dh, 16d
    mov dl, 41d
    int 10h
        
    mov ax, 600h
    mov bh, 27h
    mov ch, 16d
    mov cl, 42d
    mov dh, 16d
    mov dl, 42d
    int 10h
        
    mov ax, 600h
    mov bh, 27h
    mov ch, 16d
    mov cl, 43d
    mov dh, 16d
    mov dl, 43d
    int 10h
        
    mov ax, 600h
    mov bh, 27h
    mov ch, 16d
    mov cl, 44d
    mov dh, 16d
    mov dl, 44d
    int 10h
        
    mov ax, 600h
    mov bh, 27h
    mov ch, 16d
    mov cl, 45d
    mov dh, 16d
    mov dl, 45d
    int 10h
        
    mov ax, 600h
    mov bh, 27h
    mov ch, 16d
    mov cl, 46d
    mov dh, 16d
    mov dl, 47d
    int 10h
        
    mov ax, 600h
    mov bh, 27h
    mov ch, 16d
    mov cl, 48d
    mov dh, 16d
    mov dl, 48d
    int 10h
        
    mov ax, 600h
    mov bh, 27h
    mov ch, 16d
    mov cl, 49d
    mov dh, 16d
    mov dl, 49d
    int 10h
        
    mov ax, 600h
    mov bh, 27h
    mov ch, 16d
    mov cl, 50d
    mov dh, 16d
    mov dl, 50d
    int 10h
        
    mov ax, 600h
    mov bh, 27h
    mov ch, 16d
    mov cl, 51d
    mov dh, 16d
    mov dl, 51d
    int 10h
    
    ;length left
    
    mov ax, 600h
    mov bh, 27h
    mov ch, 7d
    mov dh, 7d
    int 10h
    
    mov ax, 600h
    mov bh, 27h
    mov ch, 8d
    mov dh, 8d
    int 10h
    
    mov ax, 600h
    mov bh, 27h
    mov ch, 9d
    mov dh, 9d
    int 10h
    
    mov ax, 600h
    mov bh, 27h
    mov ch, 10d
    mov dh, 10d
    int 10h
    
    
    mov ax, 600h
    mov bh, 27h
    mov ch, 11d
    mov dh, 11d
    int 10h
    
    
    mov ax, 600h
    mov bh, 27h
    mov ch, 12d
    mov dh, 12d
    int 10h
    
    mov ax, 600h
    mov bh, 27h
    mov ch, 13d
    mov dh, 13d
    int 10h
    
    mov ax, 600h
    mov bh, 27h
    mov ch, 14d
    mov dh, 14d
    int 10h
    
    mov ax, 600h
    mov bh, 27h
    mov ch, 15d
    mov dh, 15d
    int 10h

ret
onefourth endp
half proc near
    ; Clear the screen
    mov ax, 0600h
    mov bh, 07h
    mov cx, 0000h
    mov dx, 184fh
    int 10h
	
	; Set cursor position
    mov ah, 02h
    mov bh, 00h
    mov dh, 15d
    mov dl, 24d
    int 10h
	  mov ax, 600h
 mov bh, 16h
 mov dh, 15d;kalabugon sakto na
  mov ch, 11d;dalom sakto nah di na pag tadugon
 mov cl, 24d;babaw
 mov dl, 50d;kalapadon
 int 10h
 
 
 mov ax, 600h
 mov bh, 27h
 mov ch, 16d
 mov cl, 23d
 mov dh, 16d
 mov dl, 23d
 int 10h
 
 mov ax, 600h
 mov bh, 27h
 mov ch, 7d
 mov dh, 7d
 int 10h
 
 mov ax, 600h
 mov bh, 27h
 mov ch, 8d
 mov dh, 8d
 int 10h
 
   mov ax, 600h
 mov bh, 27h
 mov ch, 9d
 mov dh, 9d
 int 10h
 
   mov ax, 600h
 mov bh, 27h
 mov ch, 10d
 mov dh, 10d
 int 10h
 
 
   mov ax, 600h
 mov bh, 27h
 mov ch, 11d
 mov dh, 11d
 int 10h
 
 
   mov ax, 600h
 mov bh, 27h
 mov ch, 12d
 mov dh, 12d
 int 10h
 
    mov ax, 600h
 mov bh, 27h
 mov ch, 13d
 mov dh, 13d
 int 10h
 
    mov ax, 600h
 mov bh, 27h
 mov ch, 14d
 mov dh, 14d
 int 10h
 
    mov ax, 600h
 mov bh, 27h
 mov ch, 15d
 mov dh, 15d
 int 10h

 
  mov ax, 600h
 mov bh, 27h
 mov ch, 16d
 mov cl, 24d
 mov dh, 16d
 mov dl, 24d
 int 10h
 
  mov ax, 600h
 mov bh, 27h
 mov ch, 16d
 mov cl, 25d
 mov dh, 16d
 mov dl, 25d
 int 10h
 
  
  mov ax, 600h
 mov bh, 27h
 mov ch, 16d
 mov cl, 26d
 mov dh, 16d
 mov dl, 26d
 int 10h
 
   
  mov ax, 600h
 mov bh, 27h
 mov ch, 16d
 mov cl, 27d
 mov dh, 16d
 mov dl, 27d
 int 10h
 
   
  mov ax, 600h
 mov bh, 27h
 mov ch, 16d
 mov cl, 28d
 mov dh, 16d
 mov dl, 28d
 int 10h
 
    
  mov ax, 600h
 mov bh, 27h
 mov ch, 16d
 mov cl, 29d
 mov dh, 16d
 mov dl, 29d
 int 10h
 
  
    
  mov ax, 600h
 mov bh, 27h
 mov ch, 16d
 mov cl, 30d
 mov dh, 16d
 mov dl, 30d
 int 10h
 
  
    
  mov ax, 600h
 mov bh, 27h
 mov ch, 16d
 mov cl, 31d
 mov dh, 16d
 mov dl, 31d
 int 10h
 
       
  mov ax, 600h
 mov bh, 27h
 mov ch, 16d
 mov cl, 32d
 mov dh, 16d
 mov dl, 32d
 int 10h
    
  mov ax, 600h
 mov bh, 27h
 mov ch, 16d
 mov cl, 33d
 mov dh, 16d
 mov dl, 33d
 int 10h
 
    
  mov ax, 600h
 mov bh, 27h
 mov ch, 16d
 mov cl, 33d
 mov dh, 16d
 mov dl, 33d
 int 10h
 
    
  mov ax, 600h
 mov bh, 27h
 mov ch, 16d
 mov cl, 34d
 mov dh, 16d
 mov dl, 34d
 int 10h
    
  mov ax, 600h
 mov bh, 27h
 mov ch, 16d
 mov cl, 35d
 mov dh, 16d
 mov dl, 35d
 int 10h
    
  mov ax, 600h
 mov bh, 27h
 mov ch, 16d
 mov cl, 36d
 mov dh, 16d
 mov dl, 36d
 int 10h
    
  mov ax, 600h
 mov bh, 27h
 mov ch, 16d
 mov cl, 37d
 mov dh, 16d
 mov dl, 37d
 int 10h
    
  mov ax, 600h
 mov bh, 27h
 mov ch, 16d
 mov cl, 38d
 mov dh, 16d
 mov dl, 38d
 int 10h
    
  mov ax, 600h
 mov bh, 27h
 mov ch, 16d
 mov cl, 39d
 mov dh, 16d
 mov dl, 39d
 int 10h
    
  mov ax, 600h
 mov bh, 27h
 mov ch, 16d
 mov cl, 40d
 mov dh, 16d
 mov dl, 40d
 int 10h
    
  mov ax, 600h
 mov bh, 27h
 mov ch, 16d
 mov cl,41d
 mov dh, 16d
 mov dl, 41d
 int 10h
    
  mov ax, 600h
 mov bh, 27h
 mov ch, 16d
 mov cl, 42d
 mov dh, 16d
 mov dl, 42d
 int 10h
    
  mov ax, 600h
 mov bh, 27h
 mov ch, 16d
 mov cl, 43d
 mov dh, 16d
 mov dl, 43d
 int 10h
    
  mov ax, 600h
 mov bh, 27h
 mov ch, 16d
 mov cl, 44d
 mov dh, 16d
 mov dl, 44d
 int 10h
    
  mov ax, 600h
 mov bh, 27h
 mov ch, 16d
 mov cl, 45d
 mov dh, 16d
 mov dl, 45d
 int 10h
    
  mov ax, 600h
 mov bh, 27h
 mov ch, 16d
 mov cl, 46d
 mov dh, 16d
 mov dl, 47d
 int 10h
    
  mov ax, 600h
 mov bh, 27h
 mov ch, 16d
 mov cl, 48d
 mov dh, 16d
 mov dl, 48d
 int 10h
    
  mov ax, 600h
 mov bh, 27h
 mov ch, 16d
 mov cl, 49d
 mov dh, 16d
 mov dl, 49d
 int 10h
    
  mov ax, 600h
 mov bh, 27h
 mov ch, 16d
 mov cl, 50d
 mov dh, 16d
 mov dl, 50d
 int 10h
    
  mov ax, 600h
 mov bh, 27h
 mov ch, 16d
 mov cl, 51d
 mov dh, 16d
 mov dl, 51d
 int 10h
 
 ;length left
 
 mov ax, 600h
 mov bh, 27h
 mov ch, 7d
 mov dh, 7d
 int 10h
 
 mov ax, 600h
 mov bh, 27h
 mov ch, 8d
 mov dh, 8d
 int 10h
 
   mov ax, 600h
 mov bh, 27h
 mov ch, 9d
 mov dh, 9d
 int 10h
 
   mov ax, 600h
 mov bh, 27h
 mov ch, 10d
 mov dh, 10d
 int 10h
 
 
   mov ax, 600h
 mov bh, 27h
 mov ch, 11d
 mov dh, 11d
 int 10h
 
 
   mov ax, 600h
 mov bh, 27h
 mov ch, 12d
 mov dh, 12d
 int 10h
 
    mov ax, 600h
 mov bh, 27h
 mov ch, 13d
 mov dh, 13d
 int 10h
 
    mov ax, 600h
 mov bh, 27h
 mov ch, 14d
 mov dh, 14d
 int 10h
 
    mov ax, 600h
 mov bh, 27h
 mov ch, 15d
 mov dh, 15d
 int 10h
 ret
 half endp
 
 seven proc near
    ; Clear the screen
    mov ax, 0600h
    mov bh, 07h
    mov cx, 0000h
    mov dx, 184fh
    int 10h
	
	; Set cursor position
    mov ah, 02h
    mov bh, 00h
    mov dh, 15d
    mov dl, 24d
    int 10h
	  mov ax, 600h
 mov bh, 16h
 mov dh, 15d;kalabugon sakto na
  mov ch, 8d;dalom sakto nah di na pag tadugon
 mov cl, 24d;babaw
 mov dl, 50d;kalapadon
 int 10h
 
 
 mov ax, 600h
 mov bh, 27h
 mov ch, 16d
 mov cl, 23d
 mov dh, 16d
 mov dl, 23d
 int 10h
 
 mov ax, 600h
 mov bh, 27h
 mov ch, 7d
 mov dh, 7d
 int 10h
 
 mov ax, 600h
 mov bh, 27h
 mov ch, 8d
 mov dh, 8d
 int 10h
 
   mov ax, 600h
 mov bh, 27h
 mov ch, 9d
 mov dh, 9d
 int 10h
 
   mov ax, 600h
 mov bh, 27h
 mov ch, 10d
 mov dh, 10d
 int 10h
 
 
   mov ax, 600h
 mov bh, 27h
 mov ch, 11d
 mov dh, 11d
 int 10h
 
 
   mov ax, 600h
 mov bh, 27h
 mov ch, 12d
 mov dh, 12d
 int 10h
 
    mov ax, 600h
 mov bh, 27h
 mov ch, 13d
 mov dh, 13d
 int 10h
 
    mov ax, 600h
 mov bh, 27h
 mov ch, 14d
 mov dh, 14d
 int 10h
 
    mov ax, 600h
 mov bh, 27h
 mov ch, 15d
 mov dh, 15d
 int 10h

 
  mov ax, 600h
 mov bh, 27h
 mov ch, 16d
 mov cl, 24d
 mov dh, 16d
 mov dl, 24d
 int 10h
 
  mov ax, 600h
 mov bh, 27h
 mov ch, 16d
 mov cl, 25d
 mov dh, 16d
 mov dl, 25d
 int 10h
 
  
  mov ax, 600h
 mov bh, 27h
 mov ch, 16d
 mov cl, 26d
 mov dh, 16d
 mov dl, 26d
 int 10h
 
   
  mov ax, 600h
 mov bh, 27h
 mov ch, 16d
 mov cl, 27d
 mov dh, 16d
 mov dl, 27d
 int 10h
 
   
  mov ax, 600h
 mov bh, 27h
 mov ch, 16d
 mov cl, 28d
 mov dh, 16d
 mov dl, 28d
 int 10h
 
    
  mov ax, 600h
 mov bh, 27h
 mov ch, 16d
 mov cl, 29d
 mov dh, 16d
 mov dl, 29d
 int 10h
 
  
    
  mov ax, 600h
 mov bh, 27h
 mov ch, 16d
 mov cl, 30d
 mov dh, 16d
 mov dl, 30d
 int 10h
 
  
    
  mov ax, 600h
 mov bh, 27h
 mov ch, 16d
 mov cl, 31d
 mov dh, 16d
 mov dl, 31d
 int 10h
 
       
  mov ax, 600h
 mov bh, 27h
 mov ch, 16d
 mov cl, 32d
 mov dh, 16d
 mov dl, 32d
 int 10h
    
  mov ax, 600h
 mov bh, 27h
 mov ch, 16d
 mov cl, 33d
 mov dh, 16d
 mov dl, 33d
 int 10h
 
    
  mov ax, 600h
 mov bh, 27h
 mov ch, 16d
 mov cl, 33d
 mov dh, 16d
 mov dl, 33d
 int 10h
 
    
  mov ax, 600h
 mov bh, 27h
 mov ch, 16d
 mov cl, 34d
 mov dh, 16d
 mov dl, 34d
 int 10h
    
  mov ax, 600h
 mov bh, 27h
 mov ch, 16d
 mov cl, 35d
 mov dh, 16d
 mov dl, 35d
 int 10h
    
  mov ax, 600h
 mov bh, 27h
 mov ch, 16d
 mov cl, 36d
 mov dh, 16d
 mov dl, 36d
 int 10h
    
  mov ax, 600h
 mov bh, 27h
 mov ch, 16d
 mov cl, 37d
 mov dh, 16d
 mov dl, 37d
 int 10h
    
  mov ax, 600h
 mov bh, 27h
 mov ch, 16d
 mov cl, 38d
 mov dh, 16d
 mov dl, 38d
 int 10h
    
  mov ax, 600h
 mov bh, 27h
 mov ch, 16d
 mov cl, 39d
 mov dh, 16d
 mov dl, 39d
 int 10h
    
  mov ax, 600h
 mov bh, 27h
 mov ch, 16d
 mov cl, 40d
 mov dh, 16d
 mov dl, 40d
 int 10h
    
  mov ax, 600h
 mov bh, 27h
 mov ch, 16d
 mov cl,41d
 mov dh, 16d
 mov dl, 41d
 int 10h
    
  mov ax, 600h
 mov bh, 27h
 mov ch, 16d
 mov cl, 42d
 mov dh, 16d
 mov dl, 42d
 int 10h
    
  mov ax, 600h
 mov bh, 27h
 mov ch, 16d
 mov cl, 43d
 mov dh, 16d
 mov dl, 43d
 int 10h
    
  mov ax, 600h
 mov bh, 27h
 mov ch, 16d
 mov cl, 44d
 mov dh, 16d
 mov dl, 44d
 int 10h
    
  mov ax, 600h
 mov bh, 27h
 mov ch, 16d
 mov cl, 45d
 mov dh, 16d
 mov dl, 45d
 int 10h
    
  mov ax, 600h
 mov bh, 27h
 mov ch, 16d
 mov cl, 46d
 mov dh, 16d
 mov dl, 47d
 int 10h
    
  mov ax, 600h
 mov bh, 27h
 mov ch, 16d
 mov cl, 48d
 mov dh, 16d
 mov dl, 48d
 int 10h
    
  mov ax, 600h
 mov bh, 27h
 mov ch, 16d
 mov cl, 49d
 mov dh, 16d
 mov dl, 49d
 int 10h
    
  mov ax, 600h
 mov bh, 27h
 mov ch, 16d
 mov cl, 50d
 mov dh, 16d
 mov dl, 50d
 int 10h
    
  mov ax, 600h
 mov bh, 27h
 mov ch, 16d
 mov cl, 51d
 mov dh, 16d
 mov dl, 51d
 int 10h
 
 ;length left
 
 mov ax, 600h
 mov bh, 27h
 mov ch, 7d
 mov dh, 7d
 int 10h
 
 mov ax, 600h
 mov bh, 27h
 mov ch, 8d
 mov dh, 8d
 int 10h
 
   mov ax, 600h
 mov bh, 27h
 mov ch, 9d
 mov dh, 9d
 int 10h
 
   mov ax, 600h
 mov bh, 27h
 mov ch, 10d
 mov dh, 10d
 int 10h
 
 
   mov ax, 600h
 mov bh, 27h
 mov ch, 11d
 mov dh, 11d
 int 10h
 
 
   mov ax, 600h
 mov bh, 27h
 mov ch, 12d
 mov dh, 12d
 int 10h
 
    mov ax, 600h
 mov bh, 27h
 mov ch, 13d
 mov dh, 13d
 int 10h
 
    mov ax, 600h
 mov bh, 27h
 mov ch, 14d
 mov dh, 14d
 int 10h
 
    mov ax, 600h
 mov bh, 27h
 mov ch, 15d
 mov dh, 15d
 int 10h
 ret
 seven endp
zero proc near
    ; Clear the screen
    mov ax, 0600h
    mov bh, 07h
    mov cx, 0000h
    mov dx, 184fh
    int 10h

    ; Set cursor position
    mov ah, 02h
    mov bh, 00h
    mov dh, 15d
    mov dl, 24d
    int 10h

    ; Display text or graphics
    mov ax, 600h
    mov bh, 16h
    mov dh, 15d
    mov ch, 20d
    mov cl, 24d
    mov dl, 50d
    int 10h
    
    mov ax, 600h
    mov bh, 27h
    mov ch, 16d
    mov cl, 23d
    mov dh, 16d
    mov dl, 23d
    int 10h
    
    mov ax, 600h
    mov bh, 27h
    mov ch, 7d
    mov dh, 7d
    int 10h
    
    mov ax, 600h
    mov bh, 27h
    mov ch, 8d
    mov dh, 8d
    int 10h
    
    mov ax, 600h
    mov bh, 27h
    mov ch, 9d
    mov dh, 9d
    int 10h
    
    mov ax, 600h
    mov bh, 27h
    mov ch, 10d
    mov dh, 10d
    int 10h
    
    
    mov ax, 600h
    mov bh, 27h
    mov ch, 11d
    mov dh, 11d
    int 10h
    
    
    mov ax, 600h
    mov bh, 27h
    mov ch, 12d
    mov dh, 12d
    int 10h
    
    mov ax, 600h
    mov bh, 27h
    mov ch, 13d
    mov dh, 13d
    int 10h
    
    mov ax, 600h
    mov bh, 27h
    mov ch, 14d
    mov dh, 14d
    int 10h

    mov ax, 600h
    mov bh, 27h
    mov ch, 15d
    mov dh, 15d
    int 10h

    
    mov ax, 600h
    mov bh, 27h
    mov ch, 16d
    mov cl, 24d
    mov dh, 16d
    mov dl, 24d
    int 10h
    
    mov ax, 600h
    mov bh, 27h
    mov ch, 16d
    mov cl, 25d
    mov dh, 16d
    mov dl, 25d
    int 10h
    
    
    mov ax, 600h
    mov bh, 27h
    mov ch, 16d
    mov cl, 26d
    mov dh, 16d
    mov dl, 26d
    int 10h
    
    
    mov ax, 600h
    mov bh, 27h
    mov ch, 16d
    mov cl, 27d
    mov dh, 16d
    mov dl, 27d
    int 10h
    
    
    mov ax, 600h
    mov bh, 27h
    mov ch, 16d
    mov cl, 28d
    mov dh, 16d
    mov dl, 28d
    int 10h
    
        
    mov ax, 600h
    mov bh, 27h
    mov ch, 16d
    mov cl, 29d
    mov dh, 16d
    mov dl, 29d
    int 10h
    
    
        
    mov ax, 600h
    mov bh, 27h
    mov ch, 16d
    mov cl, 30d
    mov dh, 16d
    mov dl, 30d
    int 10h
    
    
        
    mov ax, 600h
    mov bh, 27h
    mov ch, 16d
    mov cl, 31d
    mov dh, 16d
    mov dl, 31d
    int 10h
    
        
    mov ax, 600h
    mov bh, 27h
    mov ch, 16d
    mov cl, 32d
    mov dh, 16d
    mov dl, 32d
    int 10h

    mov ax, 600h
    mov bh, 27h
    mov ch, 16d
    mov cl, 33d
    mov dh, 16d
    mov dl, 33d
    int 10h
    
        
    mov ax, 600h
    mov bh, 27h
    mov ch, 16d
    mov cl, 33d
    mov dh, 16d
    mov dl, 33d
    int 10h
    
        
    mov ax, 600h
    mov bh, 27h
    mov ch, 16d
    mov cl, 34d
    mov dh, 16d
    mov dl, 34d
    int 10h
        
    mov ax, 600h
    mov bh, 27h
    mov ch, 16d
    mov cl, 35d
    mov dh, 16d
    mov dl, 35d
    int 10h
        
    mov ax, 600h
    mov bh, 27h
    mov ch, 16d
    mov cl, 36d
    mov dh, 16d
    mov dl, 36d
    int 10h
        
    mov ax, 600h
    mov bh, 27h
    mov ch, 16d
    mov cl, 37d
    mov dh, 16d
    mov dl, 37d
    int 10h
        
    mov ax, 600h
    mov bh, 27h
    mov ch, 16d
    mov cl, 38d
    mov dh, 16d
    mov dl, 38d
    int 10h
        
    mov ax, 600h
    mov bh, 27h
    mov ch, 16d
    mov cl, 39d
    mov dh, 16d
    mov dl, 39d
    int 10h
        
    mov ax, 600h
    mov bh, 27h
    mov ch, 16d
    mov cl, 40d
    mov dh, 16d
    mov dl, 40d
    int 10h
        
    mov ax, 600h
    mov bh, 27h
    mov ch, 16d
    mov cl,41d
    mov dh, 16d
    mov dl, 41d
    int 10h
        
    mov ax, 600h
    mov bh, 27h
    mov ch, 16d
    mov cl, 42d
    mov dh, 16d
    mov dl, 42d
    int 10h
        
    mov ax, 600h
    mov bh, 27h
    mov ch, 16d
    mov cl, 43d
    mov dh, 16d
    mov dl, 43d
    int 10h
        
    mov ax, 600h
    mov bh, 27h
    mov ch, 16d
    mov cl, 44d
    mov dh, 16d
    mov dl, 44d
    int 10h
        
    mov ax, 600h
    mov bh, 27h
    mov ch, 16d
    mov cl, 45d
    mov dh, 16d
    mov dl, 45d
    int 10h
        
    mov ax, 600h
    mov bh, 27h
    mov ch, 16d
    mov cl, 46d
    mov dh, 16d
    mov dl, 47d
    int 10h
        
    mov ax, 600h
    mov bh, 27h
    mov ch, 16d
    mov cl, 48d
    mov dh, 16d
    mov dl, 48d
    int 10h
        
    mov ax, 600h
    mov bh, 27h
    mov ch, 16d
    mov cl, 49d
    mov dh, 16d
    mov dl, 49d
    int 10h
        
    mov ax, 600h
    mov bh, 27h
    mov ch, 16d
    mov cl, 50d
    mov dh, 16d
    mov dl, 50d
    int 10h
        
    mov ax, 600h
    mov bh, 27h
    mov ch, 16d
    mov cl, 51d
    mov dh, 16d
    mov dl, 51d
    int 10h
    
    ;length left
    
    mov ax, 600h
    mov bh, 27h
    mov ch, 7d
    mov dh, 7d
    int 10h
    
    mov ax, 600h
    mov bh, 27h
    mov ch, 8d
    mov dh, 8d
    int 10h
    
    mov ax, 600h
    mov bh, 27h
    mov ch, 9d
    mov dh, 9d
    int 10h
    
    mov ax, 600h
    mov bh, 27h
    mov ch, 10d
    mov dh, 10d
    int 10h
    
    
    mov ax, 600h
    mov bh, 27h
    mov ch, 11d
    mov dh, 11d
    int 10h
    
    
    mov ax, 600h
    mov bh, 27h
    mov ch, 12d
    mov dh, 12d
    int 10h
    
    mov ax, 600h
    mov bh, 27h
    mov ch, 13d
    mov dh, 13d
    int 10h
    
    mov ax, 600h
    mov bh, 27h
    mov ch, 14d
    mov dh, 14d
    int 10h
    
    mov ax, 600h
    mov bh, 27h
    mov ch, 15d
    mov dh, 15d
    int 10h

ret
zero endp
begin endp
end begin