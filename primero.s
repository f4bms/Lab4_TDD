//EJ 1

.data
array: .word 0, 1, 2, 3, 4, 5, 6, 7, 8, 9

.text
.global _start
_start:
	MOV r0, #0 //index

	MOV r1, #0 // un valor especifico

loop:
	CMP r0, #10
	BGE endloop

	ldr r2, =array
	ldr r3, [r2, r0, LSL#2]

	//hago primero el else
	CMP r3, r1
	BLT add

	MUL r3, r3, r1
	B last

add:
	ADD r3, r3, r1

	// if r3 be r1 -> r3 = mult r3, r1
	/*CMP r3, r1
	BGE multi
	multi: 
	MUL r3, r3,r1
	B add

	ADD r3, r3, r1
	B add
	//else  r3 = Add r3, r3, r1
	*/
last:
	STR r3, [r2, r0, LSL #2]
	ADD r0, r0, #1 
	B loop

endloop:

