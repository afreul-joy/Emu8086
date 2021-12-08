.model small
.stack 100h 

.d








































































ata
m1 db 6
m2 db ?

main proc 
     mov ax,@data
     mov ds,ax       ;data init
     
     mov ah,2
     add m1,48    ;display ques variable
     mov dl,m1
     int 21h
     
     mov ah,1 
     int 21h           ;user input
     mov m2,al
     
     mov ah,2
     mov dl,10        ;new line
     mov dl,13
     int 21h
     
     mov ah,2
     mov dl,m2      ;display user input
     int 21h
     
     exit:
     mov ah,4ch
     int 21h
     main endp   
     
end main