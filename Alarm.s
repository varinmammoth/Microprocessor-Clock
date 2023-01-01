#include <xc.inc>

global	alarm_hit, alarm_minute, alarm_hour, alarm_setup, alarm_set, check_alarm, alarm_hour_number
extrn	minute, hour

psect	udata_acs   ; named variables in access ram 
    alarm_minute:  ds 1
    alarm_hour:  ds 1
    alarm_set:	ds 1
    alarm_hour_number:	ds 1
    alarm_hit:	ds 1

psect	alarm_code,class=CODE   
    
alarm_setup:
    movlw   0
    movwf   alarm_minute
    movwf   alarm_hour
    movwf   alarm_set
    movwf   alarm_hour_number
    return
    
check_alarm:  
    movlw   1
    cpfseq  alarm_set
    return
    movf    minute, W
    cpfseq  alarm_minute
    return
    movf    hour, W
    cpfseq  alarm_hour
    return
;    bsf	TMR1IE
    movlw   1
    movwf   alarm_hit
    movlw   0xFF
    movwf   PORTH
    return
    