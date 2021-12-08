include "emu8086.inc"
.model small
.stack 100h
.data

.code                                  
    main proc 
        print "Enter a number for decrement : "
        
        mov ah,1
        int 21h
        mov bl,al
        
        mov ah,2   ; showing user input
        mov dl,bl  
        int 21h
        
        printn 
        print "Decrement of "            
        
        mov ah,2           ; showing user input
        mov dl,bl  
        int 21h
        
        dec bl
      
        
       
        mov ah,2
        mov dl,bl
        int 21h
        
        exit:
        mov ah,4ch
        int 21h
        main endp
end main  