#include <xc.inc>

global  timer_setup, timer_interrupt
extrn	second, minute, hour, update_time, sound_alarm

psect	udata_acs   ; named variables in access ram
	timer_counter:	ds 1
	
psect	timer_setup_code,class=CODE

timer_interrupt:
    call	timer_0_interrupt
;    call	timer_1_interrupt
    retfie	f
    
timer_0_interrupt:
    btfss	TMR0IF		; check that this is timer0 interrupt
    return		; if not then return
    bcf	TMR0IF
    incf	timer_counter
    movlw	244
;    movlw	20
    cpfseq	timer_counter
    return
    movlw	0
    movwf	timer_counter
    comf	PORTE
    call	update_time	; updates the second, minute, and hour variable
    return		; return from interrupt
   
;timer_1_interrupt:
;    btfss	TMR1IF		; check that this is timer0 interrupt
;    return		; if not then return
;    comf    PORTE
;    bcf	TMR1IF
;    call    sound_alarm
;    return
    
timer_setup:
    movlw   0
    movwf   timer_counter
    movlw	10001000B
    movwf	T0CON, A
;    movlw	00110111B
;    movwf	T1CON, A
    bsf	TMR0IE		; Enable timer0 interrupt
;    bsf         PEIE
;    bsf	        TMR1IE
    bsf	GIE		; Enable all interrupts
    return
    
