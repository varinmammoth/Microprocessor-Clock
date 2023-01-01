# 1 "interrupt1.s"
# 1 "<built-in>" 1
# 1 "interrupt1.s" 2
;#include <xc.inc>
;
;psect udata_acs ; named variables in access ram
;
;psect interrupt_setup_code,class=CODE
;int_hi:
; org 0x0008
; goto timer0_interupt
;
;timer0_interupt:
;; btfss TMR0IF
;; retfie f
;; incf PORTC
; bcf TMR0IF
; retfie f
