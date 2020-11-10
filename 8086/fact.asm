Data Segment
    num db 00000001B
Data Ends
         
Code Segment
Assume cs:code, ds:data
	
begin:
	mov ax,data
	mov ds,ax
    mov es,ax
    mov ah,0000h
	mov al,num
	NOT al
	mov bl,al
	adc al,00000001B
	mov bl,al 

Exit:
    mov ax,4c00h
    int 21h
	
Code ENDS
End bigin