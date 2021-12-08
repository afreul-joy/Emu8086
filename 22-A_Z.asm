include "emu8086.inc"
.model small
.stack 100h
.data
a db "Loop concept : $"
.code                                  
    main proc 
        mov ax,@data
        mov ds,ax
        
        lea dx,a
        mov ah,9
        int 21h
        
        printn
        
        mov cx,26
        mov ah,2
        mov dl,65
        
        level1:
        int 21h
        inc dl
        loop level1
        
        
        exit:
        mov ah,4ch
        int 21h
        main endp
end main  