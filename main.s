#include <xc.inc>

global	update_hand_value, start
extrn	timer_setup, timer_interrupt, display, lengths_setup, initialize_time, update_time, keypad_run, keypad_check, alarm_setup, LCD_Setup, LCD_show

psect	udata_acs   ; named variables in access ram 
    update_hand_value:  ds 1
    
psect	code, abs
rst: 	org 0x0
	goto setup

int_hi:	
    org	    0x0008
    goto    timer_interrupt
	
setup:
    movlw   0x00
    movwf   TRISC, A
    movwf   TRISD, A
    movwf   TRISF, A
    movwf   TRISE, A
    movwf   TRISH, A
    movwf   TRISG, A
    movwf   PORTC, A
    movwf   PORTD, A
    movwf   PORTH, A

    call    timer_setup
    call    lengths_setup
    call    initialize_time
    call    alarm_setup
    call    LCD_Setup
    call    LCD_show
    
    goto    start
    
start:
    call    display
    call    keypad_run
    call    keypad_check
    goto    start

    end