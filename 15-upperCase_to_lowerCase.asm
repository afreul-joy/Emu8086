include "emu8086.inc"
.model small
.stack 100h
.data

.code                                  
    main proc 
        print "Enter a capital Latter : "
        mov ah,1
        int 21h
        mov bl,al
        
        add bl,32
       
        printn 
        mov ah,2
        mov dl,bl
        int 21h
        
        
        exit:
        mov ah,4ch
        int 21h
        main endp
end main  