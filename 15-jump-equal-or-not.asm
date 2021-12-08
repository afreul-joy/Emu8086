include "emu8086.inc"
.model small
.stack 100h
.data

.code                                  
    main proc 
        print "Enter First Digit : "
        mov ah,1
        int 21h
        mov bl,al
        
        printn
        print "Enter Second Digit : "
        mov ah,1
        int 21h
        mov cl,al
        printn
        
        cmp bl,cl
        je equal
        jne not_equal
        
        equal:
        print "Your Enter Digit is Equal"
        jmp exit
        
        not_equal:
        print "Your Enter Digit Is Not Equal"
        jmp exit
         
        exit:
        mov ah,4ch
        int 21h
        main endp
end main             +