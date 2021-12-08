include 'emu8086.inc'
.model small
.stack 100h
.code                                  
    main proc 
   
        mov ah,1   
        int 21h   
        mov bl,al
        int 21h
        mov cl,al
      
        
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
 