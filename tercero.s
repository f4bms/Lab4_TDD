//EJ3

.global _start
_start:
	MOV r0, #20 
	MOV r1, #0x2000 
	STR r0, [r1]
	MOV r3, #0x1000 


loop:
	LDR r2, [r3]
		
	MOV r4, #0xE048
	CMP r2, r4
	BEQ arriba
		
	MOV r4, #0xE050
	CMP r2, r4
	BEQ abajo
		
	//Repite loop si no se presiono ninguna tecla
	B loop
		
arriba: 
	ADD r0, r0, #1
	B count
	
abajo: 
	SUB r0, r0, #1
	B count
	
count: 
	STR r0, [r1, #0x500]
	B loop

