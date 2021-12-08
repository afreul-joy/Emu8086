.model small 
.stack 100h
.code

   main proc 
   mov ah,1   ;input
   int 21h
   mov bl,al 
   
   
   mov ah,2
   int 21h   ;output
   mov dl,bl 
    
   exit:
   mov ah,4ch
   int 21h
   main endp

end main 