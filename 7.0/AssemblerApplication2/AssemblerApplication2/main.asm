;
; AssemblerApplication2.asm
;
; Created: 11/8/2017 8:54:37 PM
; Author : Syarif Hidayatullah
;


; Replace with your application code
rjmp main


main:
    ldi r16, 14 ; multiplicator
	ldi r17, 0 ; counter
	ldi r18, 0 ; output register for the result. f(2) = -14(x) = -28 
	ldi r19, 2 ; init x 
	ldi r20, 255 ; Two's Complement starts here
	eor r19,r20
	inc r19 ; Two's Complement ends here

	
L1:
	cp r17, r16 ; compare r17 with r16
	brge L2 ; go to L2 if r17 >= r16 
		add r18, r19 
		inc r17 
	rjmp L1 ; go back to L1

L2:
	

rjmp L2 ; infinite loop

	
