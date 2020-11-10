.equ SWI_Exit, 0x11
.equ NUM, 2

.global main
.text

main:

	LDR R0, =NUM
	MVN R0, R0
	MOV R1, R0
	ADD R0, R0, #1
	MOV R1, R0

After:
    SWI SWI_Exit
    
