include "emu8086.inc"
.model small
.stack 100h
.code 
    main proc
    print "Enter Four Number : "
    mov ah,1
    int 21h
    mov bl,al
    int 21h
    mov bh,al
    int 21h 
    mov cl,al
    int 21h
    mov ch,al
    
    printn
    
    print "Summation of "
    mov ah,2
    mov dl,bl
    int 21h
    print "," 
   
    mov ah,2
    mov dl,bh
    int 21h
    print ","
    
    mov ah,2
    mov dl,cl
    int 21h
    print "and"
    
    mov ah,2
    mov dl,ch
    int 21h
    print "is"
    
    add bl,bh
    sub bl,48
    add bl,cl
    sub bl,48
    add bl,ch
    sub bl,48
    
    mov ah,2
    mov dl,bl
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
    