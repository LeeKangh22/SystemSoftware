;Written by Dr. Ahmed Sallam (sallamah.weebly.com)
;-------------------------------------------------
.equ SWI_PrStr, 0x69 
.equ SWI_PrInt,0x6b 
.equ Stdout, 1 
.equ SWI_Exit, 0x11 

.global main
.text

main:

	MOV R0, #Stdout 	;Print to monitor
	
	MOV  R2, #5  		;Init the character
	MOV  R1, #1
	loop:
				
		MOV R3,R1
		MUL R1,R3,R2
		
		SUB  R2, R2, #1 ;Increment it
		CMP  R2, #1 	;Check the limit
	BGE loop 
	SWI SWI_PrInt 	;Print out all the numbers

After:
    SWI SWI_Exit
.data
NL: .asciz"\n"