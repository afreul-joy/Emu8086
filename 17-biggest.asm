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
         
        a:
        cmp bl,bh ;bl>=bh
        jge d
        print " greater number "
        mov ah,2
        mov dl,bh
        int 21h
        jmp exit
                  
        b:
        cmp cl,bh ;cl>=bh
        jge c
        print " greater number "
        mov ah,2
        mov dl,bh
        int 21h
        jmp exit                  
        
        c:
        print " greater number "
        mov ah,2
        mov dl,cl
        int 21h
        jmp exit
                  
        d:
        print " greater number "
        mov ah,2
        mov dl,bl
        int 21h
        jmp exit
             
        exit:
        mov ah,4ch
        int 21h
        main endp                                              
end main             