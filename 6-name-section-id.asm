;Prob-1 - Print Name id Section Batch
.model small
.stack 100h
.data
studentName db "AFREUL JOY $"
studentId db "201-15-3147 $"
section db "PC-E $"
batch db "55 $"
.code                                  
    main proc 
        mov ax,@data
        mov ds,ax  
        
        lea dx,studentName
        mov ah,9
        int 21h
        
        lea dx,studentId
        mov ah,9
        int 21h 
        
        lea dx,batch
        mov ah,9
        int 21h   
        
        
        lea dx,section
        mov ah,9
        int 21h 
        
        exit:
        mov ah,4ch
        int 21h
        main endp
end main  