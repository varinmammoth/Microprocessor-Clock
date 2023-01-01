#include <xc.inc>

global  keypad_run, keypad_check
extrn	style_number, alarm_hit, LCD_show, delay, display, start, hour, minute, second, delay_long, update_hour, alarm_minute, alarm_hour, alarm_set, update_hour_number, alarm_hour_number, hour_number

psect	udata_acs   ; named variables in access ram
    temp:   ds 1
    temp2:   ds 1
    key_code:   ds 1
    counter_keypad:   ds 1
    temp_minute:    ds 1
    temp_hour:	ds 1
    temp_hour_number:	ds 1
    
psect	keypad_code,class=CODE

keypad_run:
    movlw   0x0F
    movwf   TRISJ , A
    movlw   0xF0
    movwf   PORTJ, A
    
    movlw   0x10
    movwf   counter_keypad
    call    delay
    
    movff   PORTJ, temp
    
    movlw   0xF0
    movwf   TRISJ, A
    movlw   0x0F
    movwf   PORTJ, A
    
    movlw   0x10
    movwf   counter_keypad
    call    delay
    
    movff   PORTJ, temp2, A
  
    
    movf    temp2, W
    andwf   temp, W, A
    movwf   key_code
    return

keypad_check:
    call    check_A
    call    check_B
    call    check_C
    call    check_7
    call    check_8
    call    check_0
    return
  
check_A:
    movlw   00011000B
    cpfseq  key_code
    return
    call    set_time
    return
    
check_B:
    movlw   00101000B
    cpfseq  key_code
    return
    movff   minute, temp_minute
    movff   hour, temp_hour
    movff   hour_number, temp_hour_number
    movff   alarm_minute, minute
    movff   alarm_hour, hour
    movff   alarm_hour_number, hour_number
    call    set_alarm
    return
 
check_C:
    movlw   01001000B
    cpfseq  key_code
    return
    incf    style_number
    movlw   3
    cpfseq  style_number
    return
    movlw   1
    movwf   style_number
    return
    
set_time:
    bcf	TMR0IE
    call    keypad_run
    call    check_1
    call    check_2
    call    check_7
    call    check_8
    call    display
    call    check_D
    bra	    set_time

set_alarm:
    bcf	TMR0IE
    call    keypad_run
    call    check_1
    call    check_2
    call    check_7
    call    check_8
    call    display
    call    check_D_alarm
    bra	    set_alarm  
    
check_1:
    movlw   00010001B
    cpfseq  key_code
    return
    call    inc_hour
    movlw   0x70
    call    delay_long
    return
 
check_2:
    movlw   00010010B
    cpfseq  key_code
    return
    call    inc_minute
    movlw   0x70
    call    delay_long
    return

check_7:
    movlw   01000001B
    cpfseq  key_code
    return
    movlw   1
    movwf   alarm_set
    call    LCD_show
    return
 
check_8:
    movlw   01000010B
    cpfseq  key_code
    return
    movlw   0
    movwf   alarm_set
    call    LCD_show
    return    
 
check_0:
    movlw   10000010B
    cpfseq  key_code
    return
    movlw   0
    movwf   alarm_set
    movwf   alarm_hit
    movwf   PORTH
;    bcf	TMR1IE
    call    LCD_show
    return
    
check_D:
    movlw   10001000B
    cpfseq  key_code
    return
    bsf	TMR0IE
    goto    start
 
check_D_alarm:
    movlw   10001000B
    cpfseq  key_code
    return
    bsf	TMR0IE
    movff   minute, alarm_minute
    movff   hour, alarm_hour
    movff   hour_number, alarm_hour_number
    movff   temp_minute, minute
    movff   temp_hour, hour
    movff   temp_hour_number, hour_number
    call    LCD_show
    goto    start    
    
inc_minute:
    incf   minute
    call    check_minute12
    call    check_minute24
    call    check_minute36
    call    check_minute48
    call    check_minute60
    return
    
check_minute12:
    movlw   12
    cpfseq  minute
    return
    call    update_hour
    return

check_minute24:
    movlw   24
    cpfseq  minute
    return
    call    update_hour
    return
 
check_minute36:
    movlw   36
    cpfseq  minute
    return
    call    update_hour
    return
 
check_minute48:
    movlw   48
    cpfseq  minute
    return
    call    update_hour
    return 
  
check_minute60:
    movlw   60
    cpfseq  minute
    return
    call    update_hour
    call    update_hour_number
    movlw   0
    movwf   minute
    return 

inc_hour:
    call    update_hour_number
    movlw   5
    addwf   hour
    movlw   54
    cpfsgt  hour
    return
    movlw   60
    subwf   hour
    return