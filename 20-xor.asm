.model small
.stack 100h
.data

.code                                  
    main proc 
        
        mov bl, 0011b ; 3
        xor bl, 0010b ; 2
        ;xor =  0001 ; 3
        add bl,48
        
        mov ah,2
        mov dl,bl
        int 21h
        
        exit:
        mov ah,4ch
        int 21h
        main endp
end main


  