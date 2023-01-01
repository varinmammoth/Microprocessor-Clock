# 1 "Update_hands.s"
# 1 "<built-in>" 1
# 1 "Update_hands.s" 2
;#include <xc.inc>
;
;global second_u, second_h, second_l, minute_u, minute_h, minute_l, hour_u, hour_h, hour_l
;extrn update_hand_value, len_hour, len_minute, len_second, second_hand, minute_hand, hour_hand
;
;psect udata_acs ; named variables in access ram
;; second_u: ds1
;; second_h: ds1
;; second_l: ds1
;; minute_u: ds1
;; minute_h: ds1
;; minute_l: ds1
;; hour_u: ds1
;; hour_h: ds1
;; hour_l: ds1
;
;psect code, abs
;
;update_hand:
; call update_second_hand
; call update_minute_hand
; call update_hour_hand
;
; movlw 0x00
; movwf update_hand_value
; return
;
;update_second_hand:
; call table_address
; movff table_u, second_u
; movff table_h, second_h
; movff table_l, second_l
; return
;
;update_minute_hand:
; call table_address
; movff table_u, minute_u
; movff table_h, minute_h
; movff table_l, minute_l
; return
;
;update_hour_hand:
; call table_address
; movff table_u, hour_u
; movff table_h, hour_h
; movff table_l, hour_l
; return
