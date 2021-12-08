include 'emu8086.inc'
.model small
.stack 100h
           
.code                                  
    main proc 
    
        print "enter a hexadecimal digit : " 
        mov ah,1 
        int 21h
        mov bl,al 
        
        printn  
        
        mov ah,2
        mov dl,49
        int 21h
        
        sub bl,17 
        mov dl,bl
        int 21h
        
        exit:
        mov ah,4ch
        int 21h
        main endp
end main  