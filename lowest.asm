INCLUDE 'EMU8086.INC'
.MODEL SMALL 
.STACK 100H 
.CODE 
 
MAIN PROC  
    print "Enter three num : " 
    mov ah,1
    int 21h
    mov bl,al
    int 21h
    mov cl,al
    int 21h
    mov bh,bl
    
    
    cmp bl,cl
    jle a
    jg b
    
    a:
    cmp bl,bh
    jle c
    print " Biggest num is "
    mov ah,2
    int 21h
    mov dl,bh
     
    c:  
    print "Biggest Num is : "
    mov ah,2
    mov dl,bl
    int 21h
    
    b:
    cmp cl,bh
    jg d
    print "Biggest Num is : "
    mov ah,2
    mov dl,bh
    int 21h
    
    d:  
    print "Biggest Num is : "
    mov ah,2
    mov dl,cl
    int 21h

    
    MOV AH,4CH 
    INT 21H 
    MAIN ENDP 
END MAIN