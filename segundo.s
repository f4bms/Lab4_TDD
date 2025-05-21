//EJ 2

MOV r0, #0
MOV r1, #1

loop:

CMP r0, #1
BLE endloop

MUL r1, r0, r1
SUB r0, r0, #1
B loop

endloop:

