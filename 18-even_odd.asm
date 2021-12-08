include "emu8086.inc"
.model small
.stack 100h
.data

.code                                  
    main proc 
        mov ah,1
        int 21h
        mov bl,al
        printn
        
        cmp bl,49
        je msg 
        
        cmp bl,51
        je msg
        
        cmp bl,53
        je msg 
        
        cmp bl,55
        je msg        
        
        cmp bl,50
        je msg2
        
        cmp bl,52
        je msg2
        
        cmp bl,54
        je msg2 
        
        cmp bl,56
        je msg2
        
        msg:
        print "Your enter number is odd"
        jmp exit
        
        msg2:
        print "Your enter number is even"
        jmp exit
        
        exit:
        mov ah,4ch
        int 21h
        main endp
end main  