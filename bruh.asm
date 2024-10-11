.model small
.stack 100h
.data

  ;Strings
  wit     db "Hello$"
  chos    db "Choose a number between 1-9$"
  ask3    db "WRONG INPUT$"
  give    db "Please enter your choice:$"
  gue     db "What is the number?:$"
  paas    db "TRY AGAIN$"
  gue2    db "CONGRATULATIONS YOU HAVE GUESSED THE NUMBER$"
  lettra1 db ?
  lettra2 db ?
  s       dw ?
  f       dw ?
  color   db 0Eh ; Light yellow on black background
  color2  db 0Ch ; Light red on black background

.code
  main: 
        mov  ax, @data
        mov  ds, ax
 

  ;clearscreen
        mov  ax, 0600h
        mov  bh, color
        mov  cx, 0000h
        mov  dx, 1950h
        int  10h
 
  ;wit
        mov  ah, 02h
        mov  bh, 00h
        mov  dh, 03h
        mov  dl, 18h
        int  10h
 
        mov  ah, 09h
        lea  dx, wit
        int  21h
 
  ;choosing
        mov  ah, 02h
        mov  bh, 00h
        mov  dh, 05h
        mov  dl, 18h
        int  10h
 
        mov  ah, 09h
        lea  dx, chos
        int  21h
 
  ;for enter
        mov  ah, 02h
        mov  bh, 00h
        mov  dh, 07h
        mov  dl, 18h
        int  10h
 
        mov  ah, 09h
        lea  dx, give
        int  21h
 
        mov  ah, 08h
        int  21h
        mov  lettra1, al

  liwat:
  ;clearscreen
        mov  ax, 0600h
        mov  bh, color2
        mov  cx, 0000h
        mov  dx, 1950h
        int  10h

  ;wit
        mov  ah, 02h
        mov  bh, 00h
        mov  dh, 03h
        mov  dl, 18h
        int  10h
 
        mov  ah, 09h
        lea  dx, wit
        int  21h

  ;choosing
        mov  ah, 02h
        mov  bh,  00h
        mov  dh, 05h
        mov  dl, 18h
        int  10h
 
        mov  ah, 09h
        lea  dx, chos
        int  21h

  ;choosing
        mov  ah, 02h
        mov  bh, 00h
        mov  dh, 07h
        mov  dl, 18h
        int  10h
 
        mov  ah, 09h
        lea  dx, give
        int  21h

  ;for enter
        mov  ah, 02h
        mov  bh, 00h
        mov  dh, 08h
        mov  dl, 18h
        int  10h
 
        mov  ah, 09h
        lea  dx, gue
        int  21h
 
        mov  ah, 01h
        int  21h
        mov  al, al

 
        cmp  lettra1, al
        je   wew
        jmp  sala
 
  wew:  
        mov  ah, 02h
        mov  bh, 00h
        mov  dh, 0fh
        mov  dl, 18h
        int  10h
  
        mov  ah, 09h
        lea  dx, gue2
        int  21h
        jmp  exit
 
  sala: 
        mov  ah, 02h
        mov  bh, 00h
        mov  dh, 0ch
        mov  dl, 18h
        int  10h
  
        mov  ah, 09h
        lea  dx, ask3
        int  21h
        call timer
  
        jmp  liwat
  
  exit: 
        mov  ah, 4ch
        int  21h
     
timer Proc near
        mov  s, 0
  x:    
        mov  f, 0
  x1:   
        inc  f           ; increment
        cmp  f, 0fffh     ; compare
        jne  x1
        inc  s
        cmp  s, 00ffh     ; compares here
        jne  x
        ret
timer endp
end main