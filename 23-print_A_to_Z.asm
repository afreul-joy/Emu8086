include "emu8086.inc"
.model small
.stack 100h
.data
 msg db "Loop Concept $"
.code                                  
    main proc 
        mov ax,@data
        mov ds,ax
        
        mov ah,9
        lea dx,msg
        int 21h
        
        printn
        
        mov cx,26
        mov ah,2
        mov dl,"A"
      
        
        lvl:
        int 21h 
        printn
        inc dl
        loop lvl
        
        
        exit:
        mov ah,4ch
        int 21h
        main endp
end main  