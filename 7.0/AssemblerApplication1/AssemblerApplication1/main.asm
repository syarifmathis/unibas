;
; AssemblerApplication1.asm
;
; Created: 11/8/2017 8:54:37 PM
; Author : Syarif Hidayatullah
;


; Replace with your application code
rjmp main


main:
    ldi r16, 12 ; multiplicator
	ldi r17, 1 ; counter
	ldi r18, 2 ; init x and the register for the result. f(2) = 12(x) = 24
	.DEF xinit = r18 ; x
	mov r19, xinit ; copy xinit to r19

L1:
	cp r17, r16 ; compare r17 with r16
	brge L2 ; go to L2 if r17 >= r16 
		add r18, r19 
		inc r17 
	rjmp L1 ; go back to L1

L2:
	

rjmp L2 ; infinite loop

	
