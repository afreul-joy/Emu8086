include "emu8086.inc"
.model small 
.stack 100h  
.data
    a db ?
    b db 2
    c db 3
.code 
    main proc  
    mov ax,@data
    mov ds,ax
    
    mov ah,1
    int 21h
    mov a,al
    
    mov bl,a
    mov bh,b  ; transfer variable to register
    mov cl,c
    
    add bh,48  ;convert hexa digit to numerical
    
    add bl,bh
    sub bl,48
    
    add cl,48 ;convert hexa digit to numerical
    
    add bl,cl
    sub bl,48
    
    printn
    
    mov ah,2
    mov dl,bl
    int 21h
    
    exit:
    mov ah,4ch                                              
    int 21h
    main endp
end main
        
        
        