        .data
    
array: .word 1,2,3,4,5,6,7,8,9,10
n:      .word 10

        .text
        .global main

main:
        addi r1, r0, n      ; r1 = add(n)
        lw r2, 0(r1)        ; r2 = val(n) 10

        add r4, r4, r0      ; i = 0
        addi r5, r4, 1      ; j = 1

        subbi r9, r2, 1     ; r9 = n - 1

        
        