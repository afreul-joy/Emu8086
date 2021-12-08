.model small
.stack 100h
.data

.code                                  
    main proc 
        
        mov bl,1111b ;15
        and bl,0100b ; 4
        ;and = 0100 ; 4
        add bl,48
        
        mov ah,2
        mov dl,bl
        int 21h
        
        exit:
        mov ah,4ch
        int 21h
        main endp
end main  