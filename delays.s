#include <xc.inc>

global  delay, delay_long

psect	udata_acs   ; named variables in access ram
    counter1:  ds 1
    counter2:  ds 1
    counter3:  ds 1
    counter4:  ds 1

psect	delay_code,class=CODE

delay:
	movwf	counter1, A
	call	delay1
	return

delay_long:
	movwf	counter2, A
	movwf	counter3, A
	movwf	counter4, A
	call	delay2
	return
	
delay1:
	decfsz	counter1, A
	bra	delay1
	return

delay2:
	movwf	counter3, A
	call	delay3
	decfsz	counter2, A
	bra	delay2
	return

delay3:
	movwf	counter4, A
	call	delay4
	decfsz	counter3, A
	bra	delay3
	return
	
delay4:
	decfsz	counter4, A
	bra	delay4
	return
	
	