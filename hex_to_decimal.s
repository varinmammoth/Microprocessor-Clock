#include <xc.inc>

global	digit1, digit2, digit3, digit4, hex_to_dec
extrn	multiplier16x16, multiplier24x8, address_1_high, address_1_low, address_2_high, address_2_low, address_1_1, address_1_2, address_1_3, address_2, eight1, eight2, eight3, eight4, LCD_Send_Byte_D, LCD_clear, delay

psect	udata_acs   ; named variables in access ram
    digit1:  ds 1
    digit2:  ds 1
    digit3:  ds 1
    digit4:  ds 1
 
psect	hex_to_decimal_code,class=CODE
hex_to_dec:
;    k is set to 0x418A
    movlw   0x41
    movwf   address_1_high
    movlw   0x8A
    movwf   address_1_low
;the number we want to convert
;    movlw   0x04
;    movwf   address_2_high
;    movlw   0xD2
;    movwf   address_2_low
;multiply
    call    multiplier16x16
    
    movff    eight1, address_1_1
    movff    eight2, address_1_2
    movff    eight3, address_1_3
    movlw    0x0A
    movwf    address_2
    movff    eight4, digit4
    
    call     multiplier24x8
    
    movff    eight1, address_1_1
    movff    eight2, address_1_2
    movff    eight3, address_1_3
    movlw    0x0A
    movwf    address_2
    movff    eight4, digit3
    
    call     multiplier24x8
    
    movff    eight1, address_1_1
    movff    eight2, address_1_2
    movff    eight3, address_1_3
    movlw    0x0A
    movwf    address_2
    movff    eight4, digit2
    
    call     multiplier24x8
    
    movff    eight4, digit1
;    move first bit of eight4 to result
    
;    movf     digit4, W
;    addlw    0x30
;    call     LCD_Send_Byte_D
;    movf     digit3, W
;    addlw    0x30
;    call     LCD_Send_Byte_D
    movf     digit2, W
    addlw    0x30
    call     LCD_Send_Byte_D
    movf     digit1, W
    addlw    0x30
    call     LCD_Send_Byte_D
    
    movlw    0xAA
    call     delay
;    call     LCD_clear
    
    
    
    return
    
   
    
  



