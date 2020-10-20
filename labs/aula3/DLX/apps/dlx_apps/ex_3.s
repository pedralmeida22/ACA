values:	.word 1,2,3,4,5	; integer array
nelem: 	.word 8 	; array size
result:	.space 4	; sum of elements in array

	.text

.global main

main:
	
	trap     0           ; end of program
