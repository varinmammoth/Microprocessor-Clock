#include <xc.inc>

global	LCD_show
extrn	LCD_Setup, LCD_Write_Message, LCD_1st_line, LCD_2nd_line, LCD_clear, alarm_set, alarm_hour_number, alarm_minute, LCD_Send_Byte_D, address_2_high, address_2_low, hex_to_dec
	
psect	udata_acs   ; reserve data space in access ram
counter_LCD:    ds 1    ; reserve one byte for a counter variable
    
psect	udata_bank4 ; reserve data anywhere in RAM
myArray:    ds 0x80 ; reserve 128 bytes for message data

psect	data    

alarm_on_table:
	db	'A','l','a','r','m',' ','o','n',0x0a
	align	2
   
alarm_off_table:
	db	'A','l','a','r','m',' ','o','f','f',0x0a
	align	2

psect	LCD_screen_code,class=CODE	

alarm_on_message: 	
	lfsr	0, myArray	; Load FSR0 with address in RAM	
	movlw	low highword(alarm_on_table)	; address of data in PM
	movwf	TBLPTRU, A		; load upper bits to TBLPTRU
	movlw	high(alarm_on_table)	; address of data in PM
	movwf	TBLPTRH, A		; load high byte to TBLPTRH
	movlw	low(alarm_on_table)	; address of data in PM
	movwf	TBLPTRL, A		; load low byte to TBLPTRL
	movlw	9	; bytes to read
	movwf 	counter_LCD, A		; our counter register
loop_on: 	
	tblrd*+			; one byte from PM to TABLAT, increment TBLPRT
	movff	TABLAT, POSTINC0; move data from TABLAT to (FSR0), inc FSR0	
	decfsz	counter_LCD, A		; count down to zero
	bra	loop_on		; keep going until finished
	
	movlw	9	; output message to LCD
	addlw	0xff		; don't send the final carriage return to LCD
	lfsr	2, myArray
	call	LCD_Write_Message
	
	return

alarm_off_message: 	
	lfsr	0, myArray	; Load FSR0 with address in RAM	
	movlw	low highword(alarm_off_table)	; address of data in PM
	movwf	TBLPTRU, A		; load upper bits to TBLPTRU
	movlw	high(alarm_off_table)	; address of data in PM
	movwf	TBLPTRH, A		; load high byte to TBLPTRH
	movlw	low(alarm_off_table)	; address of data in PM
	movwf	TBLPTRL, A		; load low byte to TBLPTRL
	movlw	10	; bytes to read
	movwf 	counter_LCD, A		; our counter register
loop_off: 	
	tblrd*+			; one byte from PM to TABLAT, increment TBLPRT
	movff	TABLAT, POSTINC0; move data from TABLAT to (FSR0), inc FSR0	
	decfsz	counter_LCD, A		; count down to zero
	bra	loop_off		; keep going until finished
	
	movlw	10	; output message to LCD
	addlw	0xff		; don't send the final carriage return to LCD
	lfsr	2, myArray
	call	LCD_Write_Message
	
	return

LCD_show:
    call    LCD_clear
    call    LCD_1st_line
    call    alarm_show
    call    LCD_2nd_line
    call    alarm_time_show
    return
	
alarm_show:
    call    check_on
    call    check_off
    return
    
check_on:
    movlw   1
    cpfseq  alarm_set
    call    alarm_off_message
    return
    
check_off:
    movlw   0
    cpfseq  alarm_set
    call    alarm_on_message
    return
    
alarm_time_show:
    movlw   0
    movwf   address_2_high
    movff   alarm_hour_number, address_2_low
    call    hex_to_dec
    movlw   58
    call    LCD_Send_Byte_D
    movlw   0
    movwf   address_2_high
    movff   alarm_minute, address_2_low
    call    hex_to_dec
    return