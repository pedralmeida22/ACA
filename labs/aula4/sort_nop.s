        .data
    
array: .word 1,2,3,4,5,6,7,8,9,10
n:      .word 8

        .text
        .global main

main:
        addi r1, r0, n      ; r1 = add(n)
	nop
	nop
        lw r1, 0(r1)        ; r2 = val(n) 10
	
	addi r2, r0, array  ; r2 = add(array[0])

        add r3, r0, r0      ; i = 0
        
	addi r8, r1, -1     ; r8 = n - 1
	nop
	nop
loop1:  slt r9, r3, r8
	nop
	nop
	beqz r9, end
	nop
	nop
	nop
	
	addi r6, r2, 4	    ; r6 = add(array[j=1])
	lw r4, 0(r2)	    ; r4 = array[i]
	addi r5, r3, 1	    ; j = i + 1

loop2:  lw r7, 0(r6)
	nop
	nop
	slt r9, r4, r7
	nop
	nop
	beqz r9, goon
	nop
	nop
	nop
	add r9, r4, r0
	add r4, r7, r0
	add r7, r9, r0
	nop
	sw 0(r2), r4
	nop
	sw 0(r6), r7

goon:   addi r5, r5, 1
	nop
	addi r6, r6, 4
	slt r9, r5, r1
	nop
	nop
	bnez r9, loop2
	nop
	nop
	nop

	addi r3, r3, 1
	addi r2, r2, 4
	j loop1
	nop
	nop
	nop

end:    trap 0