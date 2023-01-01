#include <xc.inc>

global	second, minute, hour, initialize_time, update_time, hour_number, update_hour, update_hour_number, hour_number
extrn	check_alarm, LCD_show

psect	udata_acs   ; named variables in access ram 
    second:  ds 1
    minute:  ds 1
    hour:    ds 1
    hour_number:    ds 1
    
psect	update_time_code,class=CODE
initialize_time:
    movlw   0
    movwf   second
    movwf   minute
    movwf   hour
    movwf   hour_number

update_time:
    call    check_alarm
    incf   second
    movlw   60
    cpfseq  second
    return
    call    update_minute
    movlw   0
    movwf   second
    return
	
update_minute:
    incf    minute
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
    call    update_hour_number
    call    update_hour
    movlw   0
    movwf   minute
    return 

update_hour:
    incf   hour
    movlw   60
    cpfseq  hour
    return
    movlw   0
    movwf   hour
    return

update_hour_number:
    incf   hour_number
    movlw   12
    cpfseq  hour_number
    return
    movlw   0
    movwf   hour_number
    return