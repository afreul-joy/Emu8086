include "emu8086.inc"
.model small
.stack 100h
.data

.code                                  
    main proc 
       
        mov ah,1
        int 21h
        mov bl,al
        int 21h
        mov cl,al
        int 21h
        mov bh,al
        
        cmp bl,cl  ;bl>=cl
        jge a
        jl b
        
        b:
        cmp cl,bh
        jge cl
          print "greater number "
        mov ah,2
        mov dl,bh
        int 21h
        jmp exit
        
         
        a:
        cmp bl,bh     ;bl>=bh
        jge d
        print "greater number "
        mov ah,2
        mov dl,bh
        int 21h
        jmp exit
        
        d:
        print "greater number "
        mov ah,2
        mov dl,bl
        int 21h
        jmp exit
        
         
        exit:
        mov ah,4ch
        int 21h
        main endp                                              
end main             