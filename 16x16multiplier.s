#include <xc.inc>

global  multiplier16x16, multiplier24x8, eight1, eight2, eight3, eight4, address_1_high, address_1_low, address_2_high, address_2_low, address_1_1, address_1_2, address_1_3, address_2

psect	udata_acs   ; named variables in access ram
    eight1:  ds 1
    eight2:  ds 1
    eight3:  ds 1
    eight4:  ds 1
    
    temp1:  ds 1
    temp2:  ds 1
    temp3:  ds 1
    temp4:  ds 1
    
;    for 16x16 multiplication
    address_1_high:  ds 1
    address_1_low:  ds 1
    address_2_high:  ds 1
    address_2_low:  ds 1
    
;   for 24x8 multiplication
    address_1_1:  ds 1
    address_1_2:  ds 1
    address_1_3:  ds 1
    address_2:  ds 1
 
psect	multiplier_code,class=CODE
multiplier16x16:
    
 ;   multiply 1-low and 2-low, store in eight1234
    movf    address_1_low, W
    mulwf   address_2_low
    movff   PRODL, eight1
    movff   PRODH, eight2
    movlw   0x00
    movwf   eight3
    movwf   eight4
    
;   multiply 2-low and 1-high, store in temp1234
    movf    address_1_high, W
    mulwf   address_2_low
    movff   PRODL, temp2
    movff   PRODH, temp3
    movlw   0x00
    movwf   temp1
    movwf   temp4
    
;   add temp1234 with eight1234, and store result in eight1234
    movf    temp1, W
    addwfc  eight1, F
    movf    temp2, W
    addwfc  eight2, F
    movf    temp3, W
    addwfc  eight3, F
    movf    temp4, W
    addwfc  eight4, F
;   now the sum of first two lines are in eight1234
   
;   do multiplication of 2-hight and 1-low and store in temp1234
    movf    address_2_high, W
    mulwf   address_1_low
    movff   PRODL, temp2
    movff   PRODH, temp3
    movlw   0x00
    movwf   temp1
    movwf   temp4
    
;   add temp1234 with eight1234, and store result in eight1234
    movf    temp1, W
    addwfc  eight1, F
    movf    temp2, W
    addwfc  eight2, F
    movf    temp3, W
    addwfc  eight3, F
    movf    temp4, W
    addwfc  eight4, F
;   now the sum of first three lines are in eight1234
    
;   do multiplication of 1-high and 2-high and store in temp1234
    movf    address_2_high, W
    mulwf   address_1_high
    movff   PRODL, temp3
    movff   PRODH, temp4
    movlw   0x00
    movwf   temp1
    movwf   temp2
    
;   add temp1234 with eight1234, and store result in eight1234
    movf    temp1, W
    addwfc  eight1, F
    movf    temp2, W
    addwfc  eight2, F
    movf    temp3, W
    addwfc  eight3, F
    movf    temp4, W
    addwfc  eight4, F
;   now the sum of first four lines are in eight1234, ie. the final result of the 16bit x 16bit multiplication
    
    return
    
multiplier24x8:
   ;   multiply 1-1 and 2, store in eight1234
    movf    address_1_1, W
    mulwf   address_2
    movff   PRODL, eight1
    movff   PRODH, eight2
    movlw   0x00
    movwf   eight3
    movwf   eight4
    
    ;   multiply 1-2 and 2, store in temp1234
    movf    address_1_2, W
    mulwf   address_2
    movff   PRODL, temp2
    movff   PRODH, temp3
    movlw   0x00
    movwf   temp1
    movwf   temp4
  
    ;   add temp1234 with eight1234, and store result in eight1234
    movf    temp1, W
    addwfc  eight1, F
    movf    temp2, W
    addwfc  eight2, F
    movf    temp3, W
    addwfc  eight3, F
    movf    temp4, W
    addwfc  eight4, F
    ;   now the sum of first two lines are in eight1234
    
    ;   do multiplication of 1-3 and 2 and store in temp1234
    movf    address_1_3, W
    mulwf   address_2
    movff   PRODL, temp3
    movff   PRODH, temp4
    movlw   0x00
    movwf   temp1
    movwf   temp2
    
    ;   add temp1234 with eight1234, and store result in eight1234
    movf    temp1, W
    addwfc  eight1, F
    movf    temp2, W
    addwfc  eight2, F
    movf    temp3, W
    addwfc  eight3, F
    movf    temp4, W
    addwfc  eight4, F
    ;   now the sum of first four lines are in eight1234, ie. the final result of the 16bit x 16bit multiplication
    
    return
