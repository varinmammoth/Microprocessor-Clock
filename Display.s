#include <xc.inc>

global  display, sound_alarm
extrn	alarm_hit, alarm_table, style_number, alarm_set, delay, clock_circle_1, clock_circle_2, len_style_1, len_style_2, len_style_3, len_hour, len_minute, len_second, clock_style_1, clock_style_2, second, minute, hour, hand0,hand1,hand2,hand3,hand4,hand5,hand6,hand7,hand8,hand9,hand10,hand11,hand12,hand13,hand14,hand15,hand16,hand17,hand18,hand19,hand20,hand21,hand22,hand23,hand24,hand25,hand26,hand27,hand28,hand29,hand30,hand31,hand32,hand33,hand34,hand35,hand36,hand37,hand38,hand39,hand40,hand41,hand42,hand43,hand44,hand45,hand46,hand47,hand48,hand49,hand50,hand51,hand52,hand53,hand54,hand55,hand56,hand57,hand58,hand59

psect	udata_acs   ; named variables in access ram 
    counter_display:  ds 1
    
psect	display_code,class=CODE
        
    
display:	
    bcf	    CFGS	; point to Flash program memory  
    bsf	    EEPGD 	; access Flash program memory
    call    circle_1
    call    circle_2
    call    check_style
    call    check_second
    call    check_minute
    call    check_hour
;    call    sound_alarm
    return

show_alarm:
    movff   alarm_set, PORTG
    return
    
sound_alarm:
    movlw   1
    cpfseq  alarm_hit
    return
    movlw   low highword(alarm_table)	; address of data in PM
    movwf   TBLPTRU, A	; load upper bits to TBLPTRU
    movlw   high(alarm_table)	; address of data in PM
    movwf   TBLPTRH, A	; load high byte to TBLPTRH
    movlw   low(alarm_table)	; address of data in PM
    movwf   TBLPTRL, A
    movlw   254
    movwf   counter_display
    call    loop_alarm
    return
    
check_style:
    call    check_style_1
    call    check_style_2
    return
    
check_style_1:
    movlw   1
    cpfseq  style_number
    return
    call    style_1
    return
    
check_style_2:
    movlw   2
    cpfseq  style_number
    return
    call    style_2
    return
   
check_second:
    call    check_second0
    call    check_second1
    call    check_second2
    call    check_second3
    call    check_second4
    call    check_second5
    call    check_second6
    call    check_second7
    call    check_second8
    call    check_second9
    call    check_second10
    call    check_second11
    call    check_second12
    call    check_second13
    call    check_second14
    call    check_second15
    call    check_second16
    call    check_second17
    call    check_second18
    call    check_second19
    call    check_second20
    call    check_second21
    call    check_second22
    call    check_second23
    call    check_second24
    call    check_second25
    call    check_second26
    call    check_second27
    call    check_second28
    call    check_second29
    call    check_second30
    call    check_second31
    call    check_second32
    call    check_second33
    call    check_second34
    call    check_second35
    call    check_second36
    call    check_second37
    call    check_second38
    call    check_second39
    call    check_second40
    call    check_second41
    call    check_second42
    call    check_second43
    call    check_second44
    call    check_second45
    call    check_second46
    call    check_second47
    call    check_second48
    call    check_second49
    call    check_second50
    call    check_second51
    call    check_second52
    call    check_second53
    call    check_second54
    call    check_second55
    call    check_second56
    call    check_second57
    call    check_second58
    call    check_second59
    return
    
check_minute:
    call    check_minute0
    call    check_minute1
    call    check_minute2
    call    check_minute3
    call    check_minute4
    call    check_minute5
    call    check_minute6
    call    check_minute7
    call    check_minute8
    call    check_minute9
    call    check_minute10
    call    check_minute11
    call    check_minute12
    call    check_minute13
    call    check_minute14
    call    check_minute15
    call    check_minute16
    call    check_minute17
    call    check_minute18
    call    check_minute19
    call    check_minute20
    call    check_minute21
    call    check_minute22
    call    check_minute23
    call    check_minute24
    call    check_minute25
    call    check_minute26
    call    check_minute27
    call    check_minute28
    call    check_minute29
    call    check_minute30
    call    check_minute31
    call    check_minute32
    call    check_minute33
    call    check_minute34
    call    check_minute35
    call    check_minute36
    call    check_minute37
    call    check_minute38
    call    check_minute39
    call    check_minute40
    call    check_minute41
    call    check_minute42
    call    check_minute43
    call    check_minute44
    call    check_minute45
    call    check_minute46
    call    check_minute47
    call    check_minute48
    call    check_minute49
    call    check_minute50
    call    check_minute51
    call    check_minute52
    call    check_minute53
    call    check_minute54
    call    check_minute55
    call    check_minute56
    call    check_minute57
    call    check_minute58
    call    check_minute59
    return

check_hour:
    call    check_hour0
    call    check_hour1
    call    check_hour2
    call    check_hour3
    call    check_hour4
    call    check_hour5
    call    check_hour6
    call    check_hour7
    call    check_hour8
    call    check_hour9
    call    check_hour10
    call    check_hour11
    call    check_hour12
    call    check_hour13
    call    check_hour14
    call    check_hour15
    call    check_hour16
    call    check_hour17
    call    check_hour18
    call    check_hour19
    call    check_hour20
    call    check_hour21
    call    check_hour22
    call    check_hour23
    call    check_hour24
    call    check_hour25
    call    check_hour26
    call    check_hour27
    call    check_hour28
    call    check_hour29
    call    check_hour30
    call    check_hour31
    call    check_hour32
    call    check_hour33
    call    check_hour34
    call    check_hour35
    call    check_hour36
    call    check_hour37
    call    check_hour38
    call    check_hour39
    call    check_hour40
    call    check_hour41
    call    check_hour42
    call    check_hour43
    call    check_hour44
    call    check_hour45
    call    check_hour46
    call    check_hour47
    call    check_hour48
    call    check_hour49
    call    check_hour50
    call    check_hour51
    call    check_hour52
    call    check_hour53
    call    check_hour54
    call    check_hour55
    call    check_hour56
    call    check_hour57
    call    check_hour58
    call    check_hour59
    return
    
circle_1:
    movlw   low highword(clock_circle_1)	; address of data in PM
    movwf   TBLPTRU, A	; load upper bits to TBLPTRU
    movlw   high(clock_circle_1)	; address of data in PM
    movwf   TBLPTRH, A	; load high byte to TBLPTRH
    movlw   low(clock_circle_1)	; address of data in PM
    movwf   TBLPTRL, A
   
    movlw   254
    movwf   counter_display
    
;    movlw   0x01
;    call    loop_delay
    call    loop
    return

circle_2:
    movlw   low highword(clock_circle_2)	; address of data in PM
    movwf   TBLPTRU, A	; load upper bits to TBLPTRU
    movlw   high(clock_circle_2)	; address of data in PM
    movwf   TBLPTRH, A	; load high byte to TBLPTRH
    movlw   low(clock_circle_2)	; address of data in PM
    movwf   TBLPTRL, A
   
    movlw   254
    movwf   counter_display
    
;    movlw   0x01
;    call    loop_delay
    call    loop
    return
      
style_1:
    movlw   low highword(clock_style_1)	; address of data in PM
    movwf   TBLPTRU, A	; load upper bits to TBLPTRU
    movlw   high(clock_style_1)	; address of data in PM
    movwf   TBLPTRH, A	; load high byte to TBLPTRH
    movlw   low(clock_style_1)	; address of data in PM
    movwf   TBLPTRL, A

    movff   len_style_1, counter_display
    return

style_2:
    movlw   low highword(clock_style_2)	; address of data in PM
    movwf   TBLPTRU, A	; load upper bits to TBLPTRU
    movlw   high(clock_style_2)	; address of data in PM
    movwf   TBLPTRH, A	; load high byte to TBLPTRH
    movlw   low(clock_style_2)	; address of data in PM
    movwf   TBLPTRL, A

    movff   len_style_2, counter_display
    movlw   0x01
    call    loop_delay
    return
    
display_second0:
    movlw   low highword(hand0)
    movwf   TBLPTRU, A
    movlw   high(hand0)
    movwf   TBLPTRH, A
    movlw   low(hand0)
    movwf   TBLPTRL, A
    movff   len_second, counter_display
    call    loop
    return
display_second1:
    movlw   low highword(hand1)
    movwf   TBLPTRU, A
    movlw   high(hand1)
    movwf   TBLPTRH, A
    movlw   low(hand1)
    movwf   TBLPTRL, A
    movff   len_second, counter_display
    call    loop
    return
display_second2:
    movlw   low highword(hand2)
    movwf   TBLPTRU, A
    movlw   high(hand2)
    movwf   TBLPTRH, A
    movlw   low(hand2)
    movwf   TBLPTRL, A
    movff   len_second, counter_display
    call    loop
    return
display_second3:
    movlw   low highword(hand3)
    movwf   TBLPTRU, A
    movlw   high(hand3)
    movwf   TBLPTRH, A
    movlw   low(hand3)
    movwf   TBLPTRL, A
    movff   len_second, counter_display
    call    loop
    return
display_second4:
    movlw   low highword(hand4)
    movwf   TBLPTRU, A
    movlw   high(hand4)
    movwf   TBLPTRH, A
    movlw   low(hand4)
    movwf   TBLPTRL, A
    movff   len_second, counter_display
    call    loop
    return
display_second5:
    movlw   low highword(hand5)
    movwf   TBLPTRU, A
    movlw   high(hand5)
    movwf   TBLPTRH, A
    movlw   low(hand5)
    movwf   TBLPTRL, A
    movff   len_second, counter_display
    call    loop
    return
display_second6:
    movlw   low highword(hand6)
    movwf   TBLPTRU, A
    movlw   high(hand6)
    movwf   TBLPTRH, A
    movlw   low(hand6)
    movwf   TBLPTRL, A
    movff   len_second, counter_display
    call    loop
    return
display_second7:
    movlw   low highword(hand7)
    movwf   TBLPTRU, A
    movlw   high(hand7)
    movwf   TBLPTRH, A
    movlw   low(hand7)
    movwf   TBLPTRL, A
    movff   len_second, counter_display
    call    loop
    return
display_second8:
    movlw   low highword(hand8)
    movwf   TBLPTRU, A
    movlw   high(hand8)
    movwf   TBLPTRH, A
    movlw   low(hand8)
    movwf   TBLPTRL, A
    movff   len_second, counter_display
    call    loop
    return
display_second9:
    movlw   low highword(hand9)
    movwf   TBLPTRU, A
    movlw   high(hand9)
    movwf   TBLPTRH, A
    movlw   low(hand9)
    movwf   TBLPTRL, A
    movff   len_second, counter_display
    call    loop
    return
display_second10:
    movlw   low highword(hand10)
    movwf   TBLPTRU, A
    movlw   high(hand10)
    movwf   TBLPTRH, A
    movlw   low(hand10)
    movwf   TBLPTRL, A
    movff   len_second, counter_display
    call    loop
    return
display_second11:
    movlw   low highword(hand11)
    movwf   TBLPTRU, A
    movlw   high(hand11)
    movwf   TBLPTRH, A
    movlw   low(hand11)
    movwf   TBLPTRL, A
    movff   len_second, counter_display
    call    loop
    return
display_second12:
    movlw   low highword(hand12)
    movwf   TBLPTRU, A
    movlw   high(hand12)
    movwf   TBLPTRH, A
    movlw   low(hand12)
    movwf   TBLPTRL, A
    movff   len_second, counter_display
    call    loop
    return
display_second13:
    movlw   low highword(hand13)
    movwf   TBLPTRU, A
    movlw   high(hand13)
    movwf   TBLPTRH, A
    movlw   low(hand13)
    movwf   TBLPTRL, A
    movff   len_second, counter_display
    call    loop
    return
display_second14:
    movlw   low highword(hand14)
    movwf   TBLPTRU, A
    movlw   high(hand14)
    movwf   TBLPTRH, A
    movlw   low(hand14)
    movwf   TBLPTRL, A
    movff   len_second, counter_display
    call    loop
    return
display_second15:
    movlw   low highword(hand15)
    movwf   TBLPTRU, A
    movlw   high(hand15)
    movwf   TBLPTRH, A
    movlw   low(hand15)
    movwf   TBLPTRL, A
    movff   len_second, counter_display
    call    loop
    return
display_second16:
    movlw   low highword(hand16)
    movwf   TBLPTRU, A
    movlw   high(hand16)
    movwf   TBLPTRH, A
    movlw   low(hand16)
    movwf   TBLPTRL, A
    movff   len_second, counter_display
    call    loop
    return
display_second17:
    movlw   low highword(hand17)
    movwf   TBLPTRU, A
    movlw   high(hand17)
    movwf   TBLPTRH, A
    movlw   low(hand17)
    movwf   TBLPTRL, A
    movff   len_second, counter_display
    call    loop
    return
display_second18:
    movlw   low highword(hand18)
    movwf   TBLPTRU, A
    movlw   high(hand18)
    movwf   TBLPTRH, A
    movlw   low(hand18)
    movwf   TBLPTRL, A
    movff   len_second, counter_display
    call    loop
    return
display_second19:
    movlw   low highword(hand19)
    movwf   TBLPTRU, A
    movlw   high(hand19)
    movwf   TBLPTRH, A
    movlw   low(hand19)
    movwf   TBLPTRL, A
    movff   len_second, counter_display
    call    loop
    return
display_second20:
    movlw   low highword(hand20)
    movwf   TBLPTRU, A
    movlw   high(hand20)
    movwf   TBLPTRH, A
    movlw   low(hand20)
    movwf   TBLPTRL, A
    movff   len_second, counter_display
    call    loop
    return
display_second21:
    movlw   low highword(hand21)
    movwf   TBLPTRU, A
    movlw   high(hand21)
    movwf   TBLPTRH, A
    movlw   low(hand21)
    movwf   TBLPTRL, A
    movff   len_second, counter_display
    call    loop
    return
display_second22:
    movlw   low highword(hand22)
    movwf   TBLPTRU, A
    movlw   high(hand22)
    movwf   TBLPTRH, A
    movlw   low(hand22)
    movwf   TBLPTRL, A
    movff   len_second, counter_display
    call    loop
    return
display_second23:
    movlw   low highword(hand23)
    movwf   TBLPTRU, A
    movlw   high(hand23)
    movwf   TBLPTRH, A
    movlw   low(hand23)
    movwf   TBLPTRL, A
    movff   len_second, counter_display
    call    loop
    return
display_second24:
    movlw   low highword(hand24)
    movwf   TBLPTRU, A
    movlw   high(hand24)
    movwf   TBLPTRH, A
    movlw   low(hand24)
    movwf   TBLPTRL, A
    movff   len_second, counter_display
    call    loop
    return
display_second25:
    movlw   low highword(hand25)
    movwf   TBLPTRU, A
    movlw   high(hand25)
    movwf   TBLPTRH, A
    movlw   low(hand25)
    movwf   TBLPTRL, A
    movff   len_second, counter_display
    call    loop
    return
display_second26:
    movlw   low highword(hand26)
    movwf   TBLPTRU, A
    movlw   high(hand26)
    movwf   TBLPTRH, A
    movlw   low(hand26)
    movwf   TBLPTRL, A
    movff   len_second, counter_display
    call    loop
    return
display_second27:
    movlw   low highword(hand27)
    movwf   TBLPTRU, A
    movlw   high(hand27)
    movwf   TBLPTRH, A
    movlw   low(hand27)
    movwf   TBLPTRL, A
    movff   len_second, counter_display
    call    loop
    return
display_second28:
    movlw   low highword(hand28)
    movwf   TBLPTRU, A
    movlw   high(hand28)
    movwf   TBLPTRH, A
    movlw   low(hand28)
    movwf   TBLPTRL, A
    movff   len_second, counter_display
    call    loop
    return
display_second29:
    movlw   low highword(hand29)
    movwf   TBLPTRU, A
    movlw   high(hand29)
    movwf   TBLPTRH, A
    movlw   low(hand29)
    movwf   TBLPTRL, A
    movff   len_second, counter_display
    call    loop
    return
display_second30:
    movlw   low highword(hand30)
    movwf   TBLPTRU, A
    movlw   high(hand30)
    movwf   TBLPTRH, A
    movlw   low(hand30)
    movwf   TBLPTRL, A
    movff   len_second, counter_display
    call    loop
    return
display_second31:
    movlw   low highword(hand31)
    movwf   TBLPTRU, A
    movlw   high(hand31)
    movwf   TBLPTRH, A
    movlw   low(hand31)
    movwf   TBLPTRL, A
    movff   len_second, counter_display
    call    loop
    return
display_second32:
    movlw   low highword(hand32)
    movwf   TBLPTRU, A
    movlw   high(hand32)
    movwf   TBLPTRH, A
    movlw   low(hand32)
    movwf   TBLPTRL, A
    movff   len_second, counter_display
    call    loop
    return
display_second33:
    movlw   low highword(hand33)
    movwf   TBLPTRU, A
    movlw   high(hand33)
    movwf   TBLPTRH, A
    movlw   low(hand33)
    movwf   TBLPTRL, A
    movff   len_second, counter_display
    call    loop
    return
display_second34:
    movlw   low highword(hand34)
    movwf   TBLPTRU, A
    movlw   high(hand34)
    movwf   TBLPTRH, A
    movlw   low(hand34)
    movwf   TBLPTRL, A
    movff   len_second, counter_display
    call    loop
    return
display_second35:
    movlw   low highword(hand35)
    movwf   TBLPTRU, A
    movlw   high(hand35)
    movwf   TBLPTRH, A
    movlw   low(hand35)
    movwf   TBLPTRL, A
    movff   len_second, counter_display
    call    loop
    return
display_second36:
    movlw   low highword(hand36)
    movwf   TBLPTRU, A
    movlw   high(hand36)
    movwf   TBLPTRH, A
    movlw   low(hand36)
    movwf   TBLPTRL, A
    movff   len_second, counter_display
    call    loop
    return
display_second37:
    movlw   low highword(hand37)
    movwf   TBLPTRU, A
    movlw   high(hand37)
    movwf   TBLPTRH, A
    movlw   low(hand37)
    movwf   TBLPTRL, A
    movff   len_second, counter_display
    call    loop
    return
display_second38:
    movlw   low highword(hand38)
    movwf   TBLPTRU, A
    movlw   high(hand38)
    movwf   TBLPTRH, A
    movlw   low(hand38)
    movwf   TBLPTRL, A
    movff   len_second, counter_display
    call    loop
    return
display_second39:
    movlw   low highword(hand39)
    movwf   TBLPTRU, A
    movlw   high(hand39)
    movwf   TBLPTRH, A
    movlw   low(hand39)
    movwf   TBLPTRL, A
    movff   len_second, counter_display
    call    loop
    return
display_second40:
    movlw   low highword(hand40)
    movwf   TBLPTRU, A
    movlw   high(hand40)
    movwf   TBLPTRH, A
    movlw   low(hand40)
    movwf   TBLPTRL, A
    movff   len_second, counter_display
    call    loop
    return
display_second41:
    movlw   low highword(hand41)
    movwf   TBLPTRU, A
    movlw   high(hand41)
    movwf   TBLPTRH, A
    movlw   low(hand41)
    movwf   TBLPTRL, A
    movff   len_second, counter_display
    call    loop
    return
display_second42:
    movlw   low highword(hand42)
    movwf   TBLPTRU, A
    movlw   high(hand42)
    movwf   TBLPTRH, A
    movlw   low(hand42)
    movwf   TBLPTRL, A
    movff   len_second, counter_display
    call    loop
    return
display_second43:
    movlw   low highword(hand43)
    movwf   TBLPTRU, A
    movlw   high(hand43)
    movwf   TBLPTRH, A
    movlw   low(hand43)
    movwf   TBLPTRL, A
    movff   len_second, counter_display
    call    loop
    return
display_second44:
    movlw   low highword(hand44)
    movwf   TBLPTRU, A
    movlw   high(hand44)
    movwf   TBLPTRH, A
    movlw   low(hand44)
    movwf   TBLPTRL, A
    movff   len_second, counter_display
    call    loop
    return
display_second45:
    movlw   low highword(hand45)
    movwf   TBLPTRU, A
    movlw   high(hand45)
    movwf   TBLPTRH, A
    movlw   low(hand45)
    movwf   TBLPTRL, A
    movff   len_second, counter_display
    call    loop
    return
display_second46:
    movlw   low highword(hand46)
    movwf   TBLPTRU, A
    movlw   high(hand46)
    movwf   TBLPTRH, A
    movlw   low(hand46)
    movwf   TBLPTRL, A
    movff   len_second, counter_display
    call    loop
    return
display_second47:
    movlw   low highword(hand47)
    movwf   TBLPTRU, A
    movlw   high(hand47)
    movwf   TBLPTRH, A
    movlw   low(hand47)
    movwf   TBLPTRL, A
    movff   len_second, counter_display
    call    loop
    return
display_second48:
    movlw   low highword(hand48)
    movwf   TBLPTRU, A
    movlw   high(hand48)
    movwf   TBLPTRH, A
    movlw   low(hand48)
    movwf   TBLPTRL, A
    movff   len_second, counter_display
    call    loop
    return
display_second49:
    movlw   low highword(hand49)
    movwf   TBLPTRU, A
    movlw   high(hand49)
    movwf   TBLPTRH, A
    movlw   low(hand49)
    movwf   TBLPTRL, A
    movff   len_second, counter_display
    call    loop
    return
display_second50:
    movlw   low highword(hand50)
    movwf   TBLPTRU, A
    movlw   high(hand50)
    movwf   TBLPTRH, A
    movlw   low(hand50)
    movwf   TBLPTRL, A
    movff   len_second, counter_display
    call    loop
    return
display_second51:
    movlw   low highword(hand51)
    movwf   TBLPTRU, A
    movlw   high(hand51)
    movwf   TBLPTRH, A
    movlw   low(hand51)
    movwf   TBLPTRL, A
    movff   len_second, counter_display
    call    loop
    return
display_second52:
    movlw   low highword(hand52)
    movwf   TBLPTRU, A
    movlw   high(hand52)
    movwf   TBLPTRH, A
    movlw   low(hand52)
    movwf   TBLPTRL, A
    movff   len_second, counter_display
    call    loop
    return
display_second53:
    movlw   low highword(hand53)
    movwf   TBLPTRU, A
    movlw   high(hand53)
    movwf   TBLPTRH, A
    movlw   low(hand53)
    movwf   TBLPTRL, A
    movff   len_second, counter_display
    call    loop
    return
display_second54:
    movlw   low highword(hand54)
    movwf   TBLPTRU, A
    movlw   high(hand54)
    movwf   TBLPTRH, A
    movlw   low(hand54)
    movwf   TBLPTRL, A
    movff   len_second, counter_display
    call    loop
    return
display_second55:
    movlw   low highword(hand55)
    movwf   TBLPTRU, A
    movlw   high(hand55)
    movwf   TBLPTRH, A
    movlw   low(hand55)
    movwf   TBLPTRL, A
    movff   len_second, counter_display
    call    loop
    return
display_second56:
    movlw   low highword(hand56)
    movwf   TBLPTRU, A
    movlw   high(hand56)
    movwf   TBLPTRH, A
    movlw   low(hand56)
    movwf   TBLPTRL, A
    movff   len_second, counter_display
    call    loop
    return
display_second57:
    movlw   low highword(hand57)
    movwf   TBLPTRU, A
    movlw   high(hand57)
    movwf   TBLPTRH, A
    movlw   low(hand57)
    movwf   TBLPTRL, A
    movff   len_second, counter_display
    call    loop
    return
display_second58:
    movlw   low highword(hand58)
    movwf   TBLPTRU, A
    movlw   high(hand58)
    movwf   TBLPTRH, A
    movlw   low(hand58)
    movwf   TBLPTRL, A
    movff   len_second, counter_display
    call    loop
    return
display_second59:
    movlw   low highword(hand59)
    movwf   TBLPTRU, A
    movlw   high(hand59)
    movwf   TBLPTRH, A
    movlw   low(hand59)
    movwf   TBLPTRL, A
    movff   len_second, counter_display
    call    loop
    return

display_minute0:
    movlw   low highword(hand0)
    movwf   TBLPTRU, A
    movlw   high(hand0)
    movwf   TBLPTRH, A
    movlw   low(hand0)
    movwf   TBLPTRL, A
    movff   len_minute, counter_display
    call    loop
    return
display_minute1:
    movlw   low highword(hand1)
    movwf   TBLPTRU, A
    movlw   high(hand1)
    movwf   TBLPTRH, A
    movlw   low(hand1)
    movwf   TBLPTRL, A
    movff   len_minute, counter_display
    call    loop
    return
display_minute2:
    movlw   low highword(hand2)
    movwf   TBLPTRU, A
    movlw   high(hand2)
    movwf   TBLPTRH, A
    movlw   low(hand2)
    movwf   TBLPTRL, A
    movff   len_minute, counter_display
    call    loop
    return
display_minute3:
    movlw   low highword(hand3)
    movwf   TBLPTRU, A
    movlw   high(hand3)
    movwf   TBLPTRH, A
    movlw   low(hand3)
    movwf   TBLPTRL, A
    movff   len_minute, counter_display
    call    loop
    return
display_minute4:
    movlw   low highword(hand4)
    movwf   TBLPTRU, A
    movlw   high(hand4)
    movwf   TBLPTRH, A
    movlw   low(hand4)
    movwf   TBLPTRL, A
    movff   len_minute, counter_display
    call    loop
    return
display_minute5:
    movlw   low highword(hand5)
    movwf   TBLPTRU, A
    movlw   high(hand5)
    movwf   TBLPTRH, A
    movlw   low(hand5)
    movwf   TBLPTRL, A
    movff   len_minute, counter_display
    call    loop
    return
display_minute6:
    movlw   low highword(hand6)
    movwf   TBLPTRU, A
    movlw   high(hand6)
    movwf   TBLPTRH, A
    movlw   low(hand6)
    movwf   TBLPTRL, A
    movff   len_minute, counter_display
    call    loop
    return
display_minute7:
    movlw   low highword(hand7)
    movwf   TBLPTRU, A
    movlw   high(hand7)
    movwf   TBLPTRH, A
    movlw   low(hand7)
    movwf   TBLPTRL, A
    movff   len_minute, counter_display
    call    loop
    return
display_minute8:
    movlw   low highword(hand8)
    movwf   TBLPTRU, A
    movlw   high(hand8)
    movwf   TBLPTRH, A
    movlw   low(hand8)
    movwf   TBLPTRL, A
    movff   len_minute, counter_display
    call    loop
    return
display_minute9:
    movlw   low highword(hand9)
    movwf   TBLPTRU, A
    movlw   high(hand9)
    movwf   TBLPTRH, A
    movlw   low(hand9)
    movwf   TBLPTRL, A
    movff   len_minute, counter_display
    call    loop
    return
display_minute10:
    movlw   low highword(hand10)
    movwf   TBLPTRU, A
    movlw   high(hand10)
    movwf   TBLPTRH, A
    movlw   low(hand10)
    movwf   TBLPTRL, A
    movff   len_minute, counter_display
    call    loop
    return
display_minute11:
    movlw   low highword(hand11)
    movwf   TBLPTRU, A
    movlw   high(hand11)
    movwf   TBLPTRH, A
    movlw   low(hand11)
    movwf   TBLPTRL, A
    movff   len_minute, counter_display
    call    loop
    return
display_minute12:
    movlw   low highword(hand12)
    movwf   TBLPTRU, A
    movlw   high(hand12)
    movwf   TBLPTRH, A
    movlw   low(hand12)
    movwf   TBLPTRL, A
    movff   len_minute, counter_display
    call    loop
    return
display_minute13:
    movlw   low highword(hand13)
    movwf   TBLPTRU, A
    movlw   high(hand13)
    movwf   TBLPTRH, A
    movlw   low(hand13)
    movwf   TBLPTRL, A
    movff   len_minute, counter_display
    call    loop
    return
display_minute14:
    movlw   low highword(hand14)
    movwf   TBLPTRU, A
    movlw   high(hand14)
    movwf   TBLPTRH, A
    movlw   low(hand14)
    movwf   TBLPTRL, A
    movff   len_minute, counter_display
    call    loop
    return
display_minute15:
    movlw   low highword(hand15)
    movwf   TBLPTRU, A
    movlw   high(hand15)
    movwf   TBLPTRH, A
    movlw   low(hand15)
    movwf   TBLPTRL, A
    movff   len_minute, counter_display
    call    loop
    return
display_minute16:
    movlw   low highword(hand16)
    movwf   TBLPTRU, A
    movlw   high(hand16)
    movwf   TBLPTRH, A
    movlw   low(hand16)
    movwf   TBLPTRL, A
    movff   len_minute, counter_display
    call    loop
    return
display_minute17:
    movlw   low highword(hand17)
    movwf   TBLPTRU, A
    movlw   high(hand17)
    movwf   TBLPTRH, A
    movlw   low(hand17)
    movwf   TBLPTRL, A
    movff   len_minute, counter_display
    call    loop
    return
display_minute18:
    movlw   low highword(hand18)
    movwf   TBLPTRU, A
    movlw   high(hand18)
    movwf   TBLPTRH, A
    movlw   low(hand18)
    movwf   TBLPTRL, A
    movff   len_minute, counter_display
    call    loop
    return
display_minute19:
    movlw   low highword(hand19)
    movwf   TBLPTRU, A
    movlw   high(hand19)
    movwf   TBLPTRH, A
    movlw   low(hand19)
    movwf   TBLPTRL, A
    movff   len_minute, counter_display
    call    loop
    return
display_minute20:
    movlw   low highword(hand20)
    movwf   TBLPTRU, A
    movlw   high(hand20)
    movwf   TBLPTRH, A
    movlw   low(hand20)
    movwf   TBLPTRL, A
    movff   len_minute, counter_display
    call    loop
    return
display_minute21:
    movlw   low highword(hand21)
    movwf   TBLPTRU, A
    movlw   high(hand21)
    movwf   TBLPTRH, A
    movlw   low(hand21)
    movwf   TBLPTRL, A
    movff   len_minute, counter_display
    call    loop
    return
display_minute22:
    movlw   low highword(hand22)
    movwf   TBLPTRU, A
    movlw   high(hand22)
    movwf   TBLPTRH, A
    movlw   low(hand22)
    movwf   TBLPTRL, A
    movff   len_minute, counter_display
    call    loop
    return
display_minute23:
    movlw   low highword(hand23)
    movwf   TBLPTRU, A
    movlw   high(hand23)
    movwf   TBLPTRH, A
    movlw   low(hand23)
    movwf   TBLPTRL, A
    movff   len_minute, counter_display
    call    loop
    return
display_minute24:
    movlw   low highword(hand24)
    movwf   TBLPTRU, A
    movlw   high(hand24)
    movwf   TBLPTRH, A
    movlw   low(hand24)
    movwf   TBLPTRL, A
    movff   len_minute, counter_display
    call    loop
    return
display_minute25:
    movlw   low highword(hand25)
    movwf   TBLPTRU, A
    movlw   high(hand25)
    movwf   TBLPTRH, A
    movlw   low(hand25)
    movwf   TBLPTRL, A
    movff   len_minute, counter_display
    call    loop
    return
display_minute26:
    movlw   low highword(hand26)
    movwf   TBLPTRU, A
    movlw   high(hand26)
    movwf   TBLPTRH, A
    movlw   low(hand26)
    movwf   TBLPTRL, A
    movff   len_minute, counter_display
    call    loop
    return
display_minute27:
    movlw   low highword(hand27)
    movwf   TBLPTRU, A
    movlw   high(hand27)
    movwf   TBLPTRH, A
    movlw   low(hand27)
    movwf   TBLPTRL, A
    movff   len_minute, counter_display
    call    loop
    return
display_minute28:
    movlw   low highword(hand28)
    movwf   TBLPTRU, A
    movlw   high(hand28)
    movwf   TBLPTRH, A
    movlw   low(hand28)
    movwf   TBLPTRL, A
    movff   len_minute, counter_display
    call    loop
    return
display_minute29:
    movlw   low highword(hand29)
    movwf   TBLPTRU, A
    movlw   high(hand29)
    movwf   TBLPTRH, A
    movlw   low(hand29)
    movwf   TBLPTRL, A
    movff   len_minute, counter_display
    call    loop
    return
display_minute30:
    movlw   low highword(hand30)
    movwf   TBLPTRU, A
    movlw   high(hand30)
    movwf   TBLPTRH, A
    movlw   low(hand30)
    movwf   TBLPTRL, A
    movff   len_minute, counter_display
    call    loop
    return
display_minute31:
    movlw   low highword(hand31)
    movwf   TBLPTRU, A
    movlw   high(hand31)
    movwf   TBLPTRH, A
    movlw   low(hand31)
    movwf   TBLPTRL, A
    movff   len_minute, counter_display
    call    loop
    return
display_minute32:
    movlw   low highword(hand32)
    movwf   TBLPTRU, A
    movlw   high(hand32)
    movwf   TBLPTRH, A
    movlw   low(hand32)
    movwf   TBLPTRL, A
    movff   len_minute, counter_display
    call    loop
    return
display_minute33:
    movlw   low highword(hand33)
    movwf   TBLPTRU, A
    movlw   high(hand33)
    movwf   TBLPTRH, A
    movlw   low(hand33)
    movwf   TBLPTRL, A
    movff   len_minute, counter_display
    call    loop
    return
display_minute34:
    movlw   low highword(hand34)
    movwf   TBLPTRU, A
    movlw   high(hand34)
    movwf   TBLPTRH, A
    movlw   low(hand34)
    movwf   TBLPTRL, A
    movff   len_minute, counter_display
    call    loop
    return
display_minute35:
    movlw   low highword(hand35)
    movwf   TBLPTRU, A
    movlw   high(hand35)
    movwf   TBLPTRH, A
    movlw   low(hand35)
    movwf   TBLPTRL, A
    movff   len_minute, counter_display
    call    loop
    return
display_minute36:
    movlw   low highword(hand36)
    movwf   TBLPTRU, A
    movlw   high(hand36)
    movwf   TBLPTRH, A
    movlw   low(hand36)
    movwf   TBLPTRL, A
    movff   len_minute, counter_display
    call    loop
    return
display_minute37:
    movlw   low highword(hand37)
    movwf   TBLPTRU, A
    movlw   high(hand37)
    movwf   TBLPTRH, A
    movlw   low(hand37)
    movwf   TBLPTRL, A
    movff   len_minute, counter_display
    call    loop
    return
display_minute38:
    movlw   low highword(hand38)
    movwf   TBLPTRU, A
    movlw   high(hand38)
    movwf   TBLPTRH, A
    movlw   low(hand38)
    movwf   TBLPTRL, A
    movff   len_minute, counter_display
    call    loop
    return
display_minute39:
    movlw   low highword(hand39)
    movwf   TBLPTRU, A
    movlw   high(hand39)
    movwf   TBLPTRH, A
    movlw   low(hand39)
    movwf   TBLPTRL, A
    movff   len_minute, counter_display
    call    loop
    return
display_minute40:
    movlw   low highword(hand40)
    movwf   TBLPTRU, A
    movlw   high(hand40)
    movwf   TBLPTRH, A
    movlw   low(hand40)
    movwf   TBLPTRL, A
    movff   len_minute, counter_display
    call    loop
    return
display_minute41:
    movlw   low highword(hand41)
    movwf   TBLPTRU, A
    movlw   high(hand41)
    movwf   TBLPTRH, A
    movlw   low(hand41)
    movwf   TBLPTRL, A
    movff   len_minute, counter_display
    call    loop
    return
display_minute42:
    movlw   low highword(hand42)
    movwf   TBLPTRU, A
    movlw   high(hand42)
    movwf   TBLPTRH, A
    movlw   low(hand42)
    movwf   TBLPTRL, A
    movff   len_minute, counter_display
    call    loop
    return
display_minute43:
    movlw   low highword(hand43)
    movwf   TBLPTRU, A
    movlw   high(hand43)
    movwf   TBLPTRH, A
    movlw   low(hand43)
    movwf   TBLPTRL, A
    movff   len_minute, counter_display
    call    loop
    return
display_minute44:
    movlw   low highword(hand44)
    movwf   TBLPTRU, A
    movlw   high(hand44)
    movwf   TBLPTRH, A
    movlw   low(hand44)
    movwf   TBLPTRL, A
    movff   len_minute, counter_display
    call    loop
    return
display_minute45:
    movlw   low highword(hand45)
    movwf   TBLPTRU, A
    movlw   high(hand45)
    movwf   TBLPTRH, A
    movlw   low(hand45)
    movwf   TBLPTRL, A
    movff   len_minute, counter_display
    call    loop
    return
display_minute46:
    movlw   low highword(hand46)
    movwf   TBLPTRU, A
    movlw   high(hand46)
    movwf   TBLPTRH, A
    movlw   low(hand46)
    movwf   TBLPTRL, A
    movff   len_minute, counter_display
    call    loop
    return
display_minute47:
    movlw   low highword(hand47)
    movwf   TBLPTRU, A
    movlw   high(hand47)
    movwf   TBLPTRH, A
    movlw   low(hand47)
    movwf   TBLPTRL, A
    movff   len_minute, counter_display
    call    loop
    return
display_minute48:
    movlw   low highword(hand48)
    movwf   TBLPTRU, A
    movlw   high(hand48)
    movwf   TBLPTRH, A
    movlw   low(hand48)
    movwf   TBLPTRL, A
    movff   len_minute, counter_display
    call    loop
    return
display_minute49:
    movlw   low highword(hand49)
    movwf   TBLPTRU, A
    movlw   high(hand49)
    movwf   TBLPTRH, A
    movlw   low(hand49)
    movwf   TBLPTRL, A
    movff   len_minute, counter_display
    call    loop
    return
display_minute50:
    movlw   low highword(hand50)
    movwf   TBLPTRU, A
    movlw   high(hand50)
    movwf   TBLPTRH, A
    movlw   low(hand50)
    movwf   TBLPTRL, A
    movff   len_minute, counter_display
    call    loop
    return
display_minute51:
    movlw   low highword(hand51)
    movwf   TBLPTRU, A
    movlw   high(hand51)
    movwf   TBLPTRH, A
    movlw   low(hand51)
    movwf   TBLPTRL, A
    movff   len_minute, counter_display
    call    loop
    return
display_minute52:
    movlw   low highword(hand52)
    movwf   TBLPTRU, A
    movlw   high(hand52)
    movwf   TBLPTRH, A
    movlw   low(hand52)
    movwf   TBLPTRL, A
    movff   len_minute, counter_display
    call    loop
    return
display_minute53:
    movlw   low highword(hand53)
    movwf   TBLPTRU, A
    movlw   high(hand53)
    movwf   TBLPTRH, A
    movlw   low(hand53)
    movwf   TBLPTRL, A
    movff   len_minute, counter_display
    call    loop
    return
display_minute54:
    movlw   low highword(hand54)
    movwf   TBLPTRU, A
    movlw   high(hand54)
    movwf   TBLPTRH, A
    movlw   low(hand54)
    movwf   TBLPTRL, A
    movff   len_minute, counter_display
    call    loop
    return
display_minute55:
    movlw   low highword(hand55)
    movwf   TBLPTRU, A
    movlw   high(hand55)
    movwf   TBLPTRH, A
    movlw   low(hand55)
    movwf   TBLPTRL, A
    movff   len_minute, counter_display
    call    loop
    return
display_minute56:
    movlw   low highword(hand56)
    movwf   TBLPTRU, A
    movlw   high(hand56)
    movwf   TBLPTRH, A
    movlw   low(hand56)
    movwf   TBLPTRL, A
    movff   len_minute, counter_display
    call    loop
    return
display_minute57:
    movlw   low highword(hand57)
    movwf   TBLPTRU, A
    movlw   high(hand57)
    movwf   TBLPTRH, A
    movlw   low(hand57)
    movwf   TBLPTRL, A
    movff   len_minute, counter_display
    call    loop
    return
display_minute58:
    movlw   low highword(hand58)
    movwf   TBLPTRU, A
    movlw   high(hand58)
    movwf   TBLPTRH, A
    movlw   low(hand58)
    movwf   TBLPTRL, A
    movff   len_minute, counter_display
    call    loop
    return
display_minute59:
    movlw   low highword(hand59)
    movwf   TBLPTRU, A
    movlw   high(hand59)
    movwf   TBLPTRH, A
    movlw   low(hand59)
    movwf   TBLPTRL, A
    movff   len_minute, counter_display
    call    loop
    return
    
display_hour0:
    movlw   low highword(hand0)
    movwf   TBLPTRU, A
    movlw   high(hand0)
    movwf   TBLPTRH, A
    movlw   low(hand0)
    movwf   TBLPTRL, A
    movff   len_hour, counter_display
    call    loop
    return
display_hour1:
    movlw   low highword(hand1)
    movwf   TBLPTRU, A
    movlw   high(hand1)
    movwf   TBLPTRH, A
    movlw   low(hand1)
    movwf   TBLPTRL, A
    movff   len_hour, counter_display
    call    loop
    return
display_hour2:
    movlw   low highword(hand2)
    movwf   TBLPTRU, A
    movlw   high(hand2)
    movwf   TBLPTRH, A
    movlw   low(hand2)
    movwf   TBLPTRL, A
    movff   len_hour, counter_display
    call    loop
    return
display_hour3:
    movlw   low highword(hand3)
    movwf   TBLPTRU, A
    movlw   high(hand3)
    movwf   TBLPTRH, A
    movlw   low(hand3)
    movwf   TBLPTRL, A
    movff   len_hour, counter_display
    call    loop
    return
display_hour4:
    movlw   low highword(hand4)
    movwf   TBLPTRU, A
    movlw   high(hand4)
    movwf   TBLPTRH, A
    movlw   low(hand4)
    movwf   TBLPTRL, A
    movff   len_hour, counter_display
    call    loop
    return
display_hour5:
    movlw   low highword(hand5)
    movwf   TBLPTRU, A
    movlw   high(hand5)
    movwf   TBLPTRH, A
    movlw   low(hand5)
    movwf   TBLPTRL, A
    movff   len_hour, counter_display
    call    loop
    return
display_hour6:
    movlw   low highword(hand6)
    movwf   TBLPTRU, A
    movlw   high(hand6)
    movwf   TBLPTRH, A
    movlw   low(hand6)
    movwf   TBLPTRL, A
    movff   len_hour, counter_display
    call    loop
    return
display_hour7:
    movlw   low highword(hand7)
    movwf   TBLPTRU, A
    movlw   high(hand7)
    movwf   TBLPTRH, A
    movlw   low(hand7)
    movwf   TBLPTRL, A
    movff   len_hour, counter_display
    call    loop
    return
display_hour8:
    movlw   low highword(hand8)
    movwf   TBLPTRU, A
    movlw   high(hand8)
    movwf   TBLPTRH, A
    movlw   low(hand8)
    movwf   TBLPTRL, A
    movff   len_hour, counter_display
    call    loop
    return
display_hour9:
    movlw   low highword(hand9)
    movwf   TBLPTRU, A
    movlw   high(hand9)
    movwf   TBLPTRH, A
    movlw   low(hand9)
    movwf   TBLPTRL, A
    movff   len_hour, counter_display
    call    loop
    return
display_hour10:
    movlw   low highword(hand10)
    movwf   TBLPTRU, A
    movlw   high(hand10)
    movwf   TBLPTRH, A
    movlw   low(hand10)
    movwf   TBLPTRL, A
    movff   len_hour, counter_display
    call    loop
    return
display_hour11:
    movlw   low highword(hand11)
    movwf   TBLPTRU, A
    movlw   high(hand11)
    movwf   TBLPTRH, A
    movlw   low(hand11)
    movwf   TBLPTRL, A
    movff   len_hour, counter_display
    call    loop
    return
display_hour12:
    movlw   low highword(hand12)
    movwf   TBLPTRU, A
    movlw   high(hand12)
    movwf   TBLPTRH, A
    movlw   low(hand12)
    movwf   TBLPTRL, A
    movff   len_hour, counter_display
    call    loop
    return
display_hour13:
    movlw   low highword(hand13)
    movwf   TBLPTRU, A
    movlw   high(hand13)
    movwf   TBLPTRH, A
    movlw   low(hand13)
    movwf   TBLPTRL, A
    movff   len_hour, counter_display
    call    loop
    return
display_hour14:
    movlw   low highword(hand14)
    movwf   TBLPTRU, A
    movlw   high(hand14)
    movwf   TBLPTRH, A
    movlw   low(hand14)
    movwf   TBLPTRL, A
    movff   len_hour, counter_display
    call    loop
    return
display_hour15:
    movlw   low highword(hand15)
    movwf   TBLPTRU, A
    movlw   high(hand15)
    movwf   TBLPTRH, A
    movlw   low(hand15)
    movwf   TBLPTRL, A
    movff   len_hour, counter_display
    call    loop
    return
display_hour16:
    movlw   low highword(hand16)
    movwf   TBLPTRU, A
    movlw   high(hand16)
    movwf   TBLPTRH, A
    movlw   low(hand16)
    movwf   TBLPTRL, A
    movff   len_hour, counter_display
    call    loop
    return
display_hour17:
    movlw   low highword(hand17)
    movwf   TBLPTRU, A
    movlw   high(hand17)
    movwf   TBLPTRH, A
    movlw   low(hand17)
    movwf   TBLPTRL, A
    movff   len_hour, counter_display
    call    loop
    return
display_hour18:
    movlw   low highword(hand18)
    movwf   TBLPTRU, A
    movlw   high(hand18)
    movwf   TBLPTRH, A
    movlw   low(hand18)
    movwf   TBLPTRL, A
    movff   len_hour, counter_display
    call    loop
    return
display_hour19:
    movlw   low highword(hand19)
    movwf   TBLPTRU, A
    movlw   high(hand19)
    movwf   TBLPTRH, A
    movlw   low(hand19)
    movwf   TBLPTRL, A
    movff   len_hour, counter_display
    call    loop
    return
display_hour20:
    movlw   low highword(hand20)
    movwf   TBLPTRU, A
    movlw   high(hand20)
    movwf   TBLPTRH, A
    movlw   low(hand20)
    movwf   TBLPTRL, A
    movff   len_hour, counter_display
    call    loop
    return
display_hour21:
    movlw   low highword(hand21)
    movwf   TBLPTRU, A
    movlw   high(hand21)
    movwf   TBLPTRH, A
    movlw   low(hand21)
    movwf   TBLPTRL, A
    movff   len_hour, counter_display
    call    loop
    return
display_hour22:
    movlw   low highword(hand22)
    movwf   TBLPTRU, A
    movlw   high(hand22)
    movwf   TBLPTRH, A
    movlw   low(hand22)
    movwf   TBLPTRL, A
    movff   len_hour, counter_display
    call    loop
    return
display_hour23:
    movlw   low highword(hand23)
    movwf   TBLPTRU, A
    movlw   high(hand23)
    movwf   TBLPTRH, A
    movlw   low(hand23)
    movwf   TBLPTRL, A
    movff   len_hour, counter_display
    call    loop
    return
display_hour24:
    movlw   low highword(hand24)
    movwf   TBLPTRU, A
    movlw   high(hand24)
    movwf   TBLPTRH, A
    movlw   low(hand24)
    movwf   TBLPTRL, A
    movff   len_hour, counter_display
    call    loop
    return
display_hour25:
    movlw   low highword(hand25)
    movwf   TBLPTRU, A
    movlw   high(hand25)
    movwf   TBLPTRH, A
    movlw   low(hand25)
    movwf   TBLPTRL, A
    movff   len_hour, counter_display
    call    loop
    return
display_hour26:
    movlw   low highword(hand26)
    movwf   TBLPTRU, A
    movlw   high(hand26)
    movwf   TBLPTRH, A
    movlw   low(hand26)
    movwf   TBLPTRL, A
    movff   len_hour, counter_display
    call    loop
    return
display_hour27:
    movlw   low highword(hand27)
    movwf   TBLPTRU, A
    movlw   high(hand27)
    movwf   TBLPTRH, A
    movlw   low(hand27)
    movwf   TBLPTRL, A
    movff   len_hour, counter_display
    call    loop
    return
display_hour28:
    movlw   low highword(hand28)
    movwf   TBLPTRU, A
    movlw   high(hand28)
    movwf   TBLPTRH, A
    movlw   low(hand28)
    movwf   TBLPTRL, A
    movff   len_hour, counter_display
    call    loop
    return
display_hour29:
    movlw   low highword(hand29)
    movwf   TBLPTRU, A
    movlw   high(hand29)
    movwf   TBLPTRH, A
    movlw   low(hand29)
    movwf   TBLPTRL, A
    movff   len_hour, counter_display
    call    loop
    return
display_hour30:
    movlw   low highword(hand30)
    movwf   TBLPTRU, A
    movlw   high(hand30)
    movwf   TBLPTRH, A
    movlw   low(hand30)
    movwf   TBLPTRL, A
    movff   len_hour, counter_display
    call    loop
    return
display_hour31:
    movlw   low highword(hand31)
    movwf   TBLPTRU, A
    movlw   high(hand31)
    movwf   TBLPTRH, A
    movlw   low(hand31)
    movwf   TBLPTRL, A
    movff   len_hour, counter_display
    call    loop
    return
display_hour32:
    movlw   low highword(hand32)
    movwf   TBLPTRU, A
    movlw   high(hand32)
    movwf   TBLPTRH, A
    movlw   low(hand32)
    movwf   TBLPTRL, A
    movff   len_hour, counter_display
    call    loop
    return
display_hour33:
    movlw   low highword(hand33)
    movwf   TBLPTRU, A
    movlw   high(hand33)
    movwf   TBLPTRH, A
    movlw   low(hand33)
    movwf   TBLPTRL, A
    movff   len_hour, counter_display
    call    loop
    return
display_hour34:
    movlw   low highword(hand34)
    movwf   TBLPTRU, A
    movlw   high(hand34)
    movwf   TBLPTRH, A
    movlw   low(hand34)
    movwf   TBLPTRL, A
    movff   len_hour, counter_display
    call    loop
    return
display_hour35:
    movlw   low highword(hand35)
    movwf   TBLPTRU, A
    movlw   high(hand35)
    movwf   TBLPTRH, A
    movlw   low(hand35)
    movwf   TBLPTRL, A
    movff   len_hour, counter_display
    call    loop
    return
display_hour36:
    movlw   low highword(hand36)
    movwf   TBLPTRU, A
    movlw   high(hand36)
    movwf   TBLPTRH, A
    movlw   low(hand36)
    movwf   TBLPTRL, A
    movff   len_hour, counter_display
    call    loop
    return
display_hour37:
    movlw   low highword(hand37)
    movwf   TBLPTRU, A
    movlw   high(hand37)
    movwf   TBLPTRH, A
    movlw   low(hand37)
    movwf   TBLPTRL, A
    movff   len_hour, counter_display
    call    loop
    return
display_hour38:
    movlw   low highword(hand38)
    movwf   TBLPTRU, A
    movlw   high(hand38)
    movwf   TBLPTRH, A
    movlw   low(hand38)
    movwf   TBLPTRL, A
    movff   len_hour, counter_display
    call    loop
    return
display_hour39:
    movlw   low highword(hand39)
    movwf   TBLPTRU, A
    movlw   high(hand39)
    movwf   TBLPTRH, A
    movlw   low(hand39)
    movwf   TBLPTRL, A
    movff   len_hour, counter_display
    call    loop
    return
display_hour40:
    movlw   low highword(hand40)
    movwf   TBLPTRU, A
    movlw   high(hand40)
    movwf   TBLPTRH, A
    movlw   low(hand40)
    movwf   TBLPTRL, A
    movff   len_hour, counter_display
    call    loop
    return
display_hour41:
    movlw   low highword(hand41)
    movwf   TBLPTRU, A
    movlw   high(hand41)
    movwf   TBLPTRH, A
    movlw   low(hand41)
    movwf   TBLPTRL, A
    movff   len_hour, counter_display
    call    loop
    return
display_hour42:
    movlw   low highword(hand42)
    movwf   TBLPTRU, A
    movlw   high(hand42)
    movwf   TBLPTRH, A
    movlw   low(hand42)
    movwf   TBLPTRL, A
    movff   len_hour, counter_display
    call    loop
    return
display_hour43:
    movlw   low highword(hand43)
    movwf   TBLPTRU, A
    movlw   high(hand43)
    movwf   TBLPTRH, A
    movlw   low(hand43)
    movwf   TBLPTRL, A
    movff   len_hour, counter_display
    call    loop
    return
display_hour44:
    movlw   low highword(hand44)
    movwf   TBLPTRU, A
    movlw   high(hand44)
    movwf   TBLPTRH, A
    movlw   low(hand44)
    movwf   TBLPTRL, A
    movff   len_hour, counter_display
    call    loop
    return
display_hour45:
    movlw   low highword(hand45)
    movwf   TBLPTRU, A
    movlw   high(hand45)
    movwf   TBLPTRH, A
    movlw   low(hand45)
    movwf   TBLPTRL, A
    movff   len_hour, counter_display
    call    loop
    return
display_hour46:
    movlw   low highword(hand46)
    movwf   TBLPTRU, A
    movlw   high(hand46)
    movwf   TBLPTRH, A
    movlw   low(hand46)
    movwf   TBLPTRL, A
    movff   len_hour, counter_display
    call    loop
    return
display_hour47:
    movlw   low highword(hand47)
    movwf   TBLPTRU, A
    movlw   high(hand47)
    movwf   TBLPTRH, A
    movlw   low(hand47)
    movwf   TBLPTRL, A
    movff   len_hour, counter_display
    call    loop
    return
display_hour48:
    movlw   low highword(hand48)
    movwf   TBLPTRU, A
    movlw   high(hand48)
    movwf   TBLPTRH, A
    movlw   low(hand48)
    movwf   TBLPTRL, A
    movff   len_hour, counter_display
    call    loop
    return
display_hour49:
    movlw   low highword(hand49)
    movwf   TBLPTRU, A
    movlw   high(hand49)
    movwf   TBLPTRH, A
    movlw   low(hand49)
    movwf   TBLPTRL, A
    movff   len_hour, counter_display
    call    loop
    return
display_hour50:
    movlw   low highword(hand50)
    movwf   TBLPTRU, A
    movlw   high(hand50)
    movwf   TBLPTRH, A
    movlw   low(hand50)
    movwf   TBLPTRL, A
    movff   len_hour, counter_display
    call    loop
    return
display_hour51:
    movlw   low highword(hand51)
    movwf   TBLPTRU, A
    movlw   high(hand51)
    movwf   TBLPTRH, A
    movlw   low(hand51)
    movwf   TBLPTRL, A
    movff   len_hour, counter_display
    call    loop
    return
display_hour52:
    movlw   low highword(hand52)
    movwf   TBLPTRU, A
    movlw   high(hand52)
    movwf   TBLPTRH, A
    movlw   low(hand52)
    movwf   TBLPTRL, A
    movff   len_hour, counter_display
    call    loop
    return
display_hour53:
    movlw   low highword(hand53)
    movwf   TBLPTRU, A
    movlw   high(hand53)
    movwf   TBLPTRH, A
    movlw   low(hand53)
    movwf   TBLPTRL, A
    movff   len_hour, counter_display
    call    loop
    return
display_hour54:
    movlw   low highword(hand54)
    movwf   TBLPTRU, A
    movlw   high(hand54)
    movwf   TBLPTRH, A
    movlw   low(hand54)
    movwf   TBLPTRL, A
    movff   len_hour, counter_display
    call    loop
    return
display_hour55:
    movlw   low highword(hand55)
    movwf   TBLPTRU, A
    movlw   high(hand55)
    movwf   TBLPTRH, A
    movlw   low(hand55)
    movwf   TBLPTRL, A
    movff   len_hour, counter_display
    call    loop
    return
display_hour56:
    movlw   low highword(hand56)
    movwf   TBLPTRU, A
    movlw   high(hand56)
    movwf   TBLPTRH, A
    movlw   low(hand56)
    movwf   TBLPTRL, A
    movff   len_hour, counter_display
    call    loop
    return
display_hour57:
    movlw   low highword(hand57)
    movwf   TBLPTRU, A
    movlw   high(hand57)
    movwf   TBLPTRH, A
    movlw   low(hand57)
    movwf   TBLPTRL, A
    movff   len_hour, counter_display
    call    loop
    return
display_hour58:
    movlw   low highword(hand58)
    movwf   TBLPTRU, A
    movlw   high(hand58)
    movwf   TBLPTRH, A
    movlw   low(hand58)
    movwf   TBLPTRL, A
    movff   len_hour, counter_display
    call    loop
    return
display_hour59:
    movlw   low highword(hand59)
    movwf   TBLPTRU, A
    movlw   high(hand59)
    movwf   TBLPTRH, A
    movlw   low(hand59)
    movwf   TBLPTRL, A
    movff   len_hour, counter_display
    call    loop
    return
    
loop:
    
    tblrd*+			; move one byte from PM to TABLAT, increment TBLPRT
    movff   TABLAT, PORTC	; move read data from TABLAT to (FSR0), increment FSR0	
    decfsz  counter_display, A	; count down to zero
    
    tblrd*+			; move one byte from PM to TABLAT, increment TBLPRT
    movff   TABLAT, PORTD	; move read data from TABLAT to (FSR0), increment FSR0	
    decfsz  counter_display, A	; count down to zero
    bra	    loop	
    
    return

loop_delay:
    call    delay
    
    tblrd*+			; move one byte from PM to TABLAT, increment TBLPRT
    movff   TABLAT, PORTC	; move read data from TABLAT to (FSR0), increment FSR0	
    decfsz  counter_display, A	; count down to zero
    
    tblrd*+			; move one byte from PM to TABLAT, increment TBLPRT
    movff   TABLAT, PORTD	; move read data from TABLAT to (FSR0), increment FSR0	
    decfsz  counter_display, A	; count down to zero
    bra	    loop_delay	
    
    return

loop_alarm:  
    tblrd*+			; move one byte from PM to TABLAT, increment TBLPRT
    movff   TABLAT, PORTH	; move read data from TABLAT to (FSR0), increment FSR0	
    decfsz  counter_display, A	; count down to zero	
    
    return
    
check_second0:
    movlw   0
    cpfseq  second
    return 
    goto    display_second0   
    return
check_second1:
    movlw   1
    cpfseq  second
    return 
    goto    display_second1   
    return
check_second2:
    movlw   2
    cpfseq  second
    return 
    goto    display_second2   
    return
check_second3:
    movlw   3
    cpfseq  second
    return 
    goto    display_second3   
    return
check_second4:
    movlw   4
    cpfseq  second
    return 
    goto    display_second4   
    return
check_second5:
    movlw   5
    cpfseq  second
    return 
    goto    display_second5   
    return
check_second6:
    movlw   6
    cpfseq  second
    return 
    goto    display_second6   
    return
check_second7:
    movlw   7
    cpfseq  second
    return 
    goto    display_second7   
    return
check_second8:
    movlw   8
    cpfseq  second
    return 
    goto    display_second8   
    return
check_second9:
    movlw   9
    cpfseq  second
    return 
    goto    display_second9   
    return
check_second10:
    movlw   10
    cpfseq  second
    return 
    goto    display_second10   
    return
check_second11:
    movlw   11
    cpfseq  second
    return 
    goto    display_second11   
    return
check_second12:
    movlw   12
    cpfseq  second
    return 
    goto    display_second12   
    return
check_second13:
    movlw   13
    cpfseq  second
    return 
    goto    display_second13   
    return
check_second14:
    movlw   14
    cpfseq  second
    return 
    goto    display_second14   
    return
check_second15:
    movlw   15
    cpfseq  second
    return 
    goto    display_second15   
    return
check_second16:
    movlw   16
    cpfseq  second
    return 
    goto    display_second16   
    return
check_second17:
    movlw   17
    cpfseq  second
    return 
    goto    display_second17   
    return
check_second18:
    movlw   18
    cpfseq  second
    return 
    goto    display_second18   
    return
check_second19:
    movlw   19
    cpfseq  second
    return 
    goto    display_second19   
    return
check_second20:
    movlw   20
    cpfseq  second
    return 
    goto    display_second20   
    return
check_second21:
    movlw   21
    cpfseq  second
    return 
    goto    display_second21   
    return
check_second22:
    movlw   22
    cpfseq  second
    return 
    goto    display_second22   
    return
check_second23:
    movlw   23
    cpfseq  second
    return 
    goto    display_second23   
    return
check_second24:
    movlw   24
    cpfseq  second
    return 
    goto    display_second24   
    return
check_second25:
    movlw   25
    cpfseq  second
    return 
    goto    display_second25   
    return
check_second26:
    movlw   26
    cpfseq  second
    return 
    goto    display_second26   
    return
check_second27:
    movlw   27
    cpfseq  second
    return 
    goto    display_second27   
    return
check_second28:
    movlw   28
    cpfseq  second
    return 
    goto    display_second28   
    return
check_second29:
    movlw   29
    cpfseq  second
    return 
    goto    display_second29   
    return
check_second30:
    movlw   30
    cpfseq  second
    return 
    goto    display_second30   
    return
check_second31:
    movlw   31
    cpfseq  second
    return 
    goto    display_second31   
    return
check_second32:
    movlw   32
    cpfseq  second
    return 
    goto    display_second32   
    return
check_second33:
    movlw   33
    cpfseq  second
    return 
    goto    display_second33   
    return
check_second34:
    movlw   34
    cpfseq  second
    return 
    goto    display_second34   
    return
check_second35:
    movlw   35
    cpfseq  second
    return 
    goto    display_second35   
    return
check_second36:
    movlw   36
    cpfseq  second
    return 
    goto    display_second36   
    return
check_second37:
    movlw   37
    cpfseq  second
    return 
    goto    display_second37   
    return
check_second38:
    movlw   38
    cpfseq  second
    return 
    goto    display_second38   
    return
check_second39:
    movlw   39
    cpfseq  second
    return 
    goto    display_second39   
    return
check_second40:
    movlw   40
    cpfseq  second
    return 
    goto    display_second40   
    return
check_second41:
    movlw   41
    cpfseq  second
    return 
    goto    display_second41   
    return
check_second42:
    movlw   42
    cpfseq  second
    return 
    goto    display_second42   
    return
check_second43:
    movlw   43
    cpfseq  second
    return 
    goto    display_second43   
    return
check_second44:
    movlw   44
    cpfseq  second
    return 
    goto    display_second44   
    return
check_second45:
    movlw   45
    cpfseq  second
    return 
    goto    display_second45   
    return
check_second46:
    movlw   46
    cpfseq  second
    return 
    goto    display_second46   
    return
check_second47:
    movlw   47
    cpfseq  second
    return 
    goto    display_second47   
    return
check_second48:
    movlw   48
    cpfseq  second
    return 
    goto    display_second48   
    return
check_second49:
    movlw   49
    cpfseq  second
    return 
    goto    display_second49   
    return
check_second50:
    movlw   50
    cpfseq  second
    return 
    goto    display_second50   
    return
check_second51:
    movlw   51
    cpfseq  second
    return 
    goto    display_second51   
    return
check_second52:
    movlw   52
    cpfseq  second
    return 
    goto    display_second52   
    return
check_second53:
    movlw   53
    cpfseq  second
    return 
    goto    display_second53   
    return
check_second54:
    movlw   54
    cpfseq  second
    return 
    goto    display_second54   
    return
check_second55:
    movlw   55
    cpfseq  second
    return 
    goto    display_second55   
    return
check_second56:
    movlw   56
    cpfseq  second
    return 
    goto    display_second56   
    return
check_second57:
    movlw   57
    cpfseq  second
    return 
    goto    display_second57   
    return
check_second58:
    movlw   58
    cpfseq  second
    return 
    goto    display_second58   
    return
check_second59:
    movlw   59
    cpfseq  second
    return 
    goto    display_second59   
    return
 
check_minute0:
    movlw   0
    cpfseq  minute
    return 
    goto    display_minute0   
    return
check_minute1:
    movlw   1
    cpfseq  minute
    return 
    goto    display_minute1   
    return
check_minute2:
    movlw   2
    cpfseq  minute
    return 
    goto    display_minute2   
    return
check_minute3:
    movlw   3
    cpfseq  minute
    return 
    goto    display_minute3   
    return
check_minute4:
    movlw   4
    cpfseq  minute
    return 
    goto    display_minute4   
    return
check_minute5:
    movlw   5
    cpfseq  minute
    return 
    goto    display_minute5   
    return
check_minute6:
    movlw   6
    cpfseq  minute
    return 
    goto    display_minute6   
    return
check_minute7:
    movlw   7
    cpfseq  minute
    return 
    goto    display_minute7   
    return
check_minute8:
    movlw   8
    cpfseq  minute
    return 
    goto    display_minute8   
    return
check_minute9:
    movlw   9
    cpfseq  minute
    return 
    goto    display_minute9   
    return
check_minute10:
    movlw   10
    cpfseq  minute
    return 
    goto    display_minute10   
    return
check_minute11:
    movlw   11
    cpfseq  minute
    return 
    goto    display_minute11   
    return
check_minute12:
    movlw   12
    cpfseq  minute
    return 
    goto    display_minute12   
    return
check_minute13:
    movlw   13
    cpfseq  minute
    return 
    goto    display_minute13   
    return
check_minute14:
    movlw   14
    cpfseq  minute
    return 
    goto    display_minute14   
    return
check_minute15:
    movlw   15
    cpfseq  minute
    return 
    goto    display_minute15   
    return
check_minute16:
    movlw   16
    cpfseq  minute
    return 
    goto    display_minute16   
    return
check_minute17:
    movlw   17
    cpfseq  minute
    return 
    goto    display_minute17   
    return
check_minute18:
    movlw   18
    cpfseq  minute
    return 
    goto    display_minute18   
    return
check_minute19:
    movlw   19
    cpfseq  minute
    return 
    goto    display_minute19   
    return
check_minute20:
    movlw   20
    cpfseq  minute
    return 
    goto    display_minute20   
    return
check_minute21:
    movlw   21
    cpfseq  minute
    return 
    goto    display_minute21   
    return
check_minute22:
    movlw   22
    cpfseq  minute
    return 
    goto    display_minute22   
    return
check_minute23:
    movlw   23
    cpfseq  minute
    return 
    goto    display_minute23   
    return
check_minute24:
    movlw   24
    cpfseq  minute
    return 
    goto    display_minute24   
    return
check_minute25:
    movlw   25
    cpfseq  minute
    return 
    goto    display_minute25   
    return
check_minute26:
    movlw   26
    cpfseq  minute
    return 
    goto    display_minute26   
    return
check_minute27:
    movlw   27
    cpfseq  minute
    return 
    goto    display_minute27   
    return
check_minute28:
    movlw   28
    cpfseq  minute
    return 
    goto    display_minute28   
    return
check_minute29:
    movlw   29
    cpfseq  minute
    return 
    goto    display_minute29   
    return
check_minute30:
    movlw   30
    cpfseq  minute
    return 
    goto    display_minute30   
    return
check_minute31:
    movlw   31
    cpfseq  minute
    return 
    goto    display_minute31   
    return
check_minute32:
    movlw   32
    cpfseq  minute
    return 
    goto    display_minute32   
    return
check_minute33:
    movlw   33
    cpfseq  minute
    return 
    goto    display_minute33   
    return
check_minute34:
    movlw   34
    cpfseq  minute
    return 
    goto    display_minute34   
    return
check_minute35:
    movlw   35
    cpfseq  minute
    return 
    goto    display_minute35   
    return
check_minute36:
    movlw   36
    cpfseq  minute
    return 
    goto    display_minute36   
    return
check_minute37:
    movlw   37
    cpfseq  minute
    return 
    goto    display_minute37   
    return
check_minute38:
    movlw   38
    cpfseq  minute
    return 
    goto    display_minute38   
    return
check_minute39:
    movlw   39
    cpfseq  minute
    return 
    goto    display_minute39   
    return
check_minute40:
    movlw   40
    cpfseq  minute
    return 
    goto    display_minute40   
    return
check_minute41:
    movlw   41
    cpfseq  minute
    return 
    goto    display_minute41   
    return
check_minute42:
    movlw   42
    cpfseq  minute
    return 
    goto    display_minute42   
    return
check_minute43:
    movlw   43
    cpfseq  minute
    return 
    goto    display_minute43   
    return
check_minute44:
    movlw   44
    cpfseq  minute
    return 
    goto    display_minute44   
    return
check_minute45:
    movlw   45
    cpfseq  minute
    return 
    goto    display_minute45   
    return
check_minute46:
    movlw   46
    cpfseq  minute
    return 
    goto    display_minute46   
    return
check_minute47:
    movlw   47
    cpfseq  minute
    return 
    goto    display_minute47   
    return
check_minute48:
    movlw   48
    cpfseq  minute
    return 
    goto    display_minute48   
    return
check_minute49:
    movlw   49
    cpfseq  minute
    return 
    goto    display_minute49   
    return
check_minute50:
    movlw   50
    cpfseq  minute
    return 
    goto    display_minute50   
    return
check_minute51:
    movlw   51
    cpfseq  minute
    return 
    goto    display_minute51   
    return
check_minute52:
    movlw   52
    cpfseq  minute
    return 
    goto    display_minute52   
    return
check_minute53:
    movlw   53
    cpfseq  minute
    return 
    goto    display_minute53   
    return
check_minute54:
    movlw   54
    cpfseq  minute
    return 
    goto    display_minute54   
    return
check_minute55:
    movlw   55
    cpfseq  minute
    return 
    goto    display_minute55   
    return
check_minute56:
    movlw   56
    cpfseq  minute
    return 
    goto    display_minute56   
    return
check_minute57:
    movlw   57
    cpfseq  minute
    return 
    goto    display_minute57   
    return
check_minute58:
    movlw   58
    cpfseq  minute
    return 
    goto    display_minute58   
    return
check_minute59:
    movlw   59
    cpfseq  minute
    return 
    goto    display_minute59   
    return
   
check_hour0:
    movlw   0
    cpfseq  hour
    return 
    goto    display_hour0   
    return
check_hour1:
    movlw   1
    cpfseq  hour
    return 
    goto    display_hour1   
    return
check_hour2:
    movlw   2
    cpfseq  hour
    return 
    goto    display_hour2   
    return
check_hour3:
    movlw   3
    cpfseq  hour
    return 
    goto    display_hour3   
    return
check_hour4:
    movlw   4
    cpfseq  hour
    return 
    goto    display_hour4   
    return
check_hour5:
    movlw   5
    cpfseq  hour
    return 
    goto    display_hour5   
    return
check_hour6:
    movlw   6
    cpfseq  hour
    return 
    goto    display_hour6   
    return
check_hour7:
    movlw   7
    cpfseq  hour
    return 
    goto    display_hour7   
    return
check_hour8:
    movlw   8
    cpfseq  hour
    return 
    goto    display_hour8   
    return
check_hour9:
    movlw   9
    cpfseq  hour
    return 
    goto    display_hour9   
    return
check_hour10:
    movlw   10
    cpfseq  hour
    return 
    goto    display_hour10   
    return
check_hour11:
    movlw   11
    cpfseq  hour
    return 
    goto    display_hour11   
    return
check_hour12:
    movlw   12
    cpfseq  hour
    return 
    goto    display_hour12   
    return
check_hour13:
    movlw   13
    cpfseq  hour
    return 
    goto    display_hour13   
    return
check_hour14:
    movlw   14
    cpfseq  hour
    return 
    goto    display_hour14   
    return
check_hour15:
    movlw   15
    cpfseq  hour
    return 
    goto    display_hour15   
    return
check_hour16:
    movlw   16
    cpfseq  hour
    return 
    goto    display_hour16   
    return
check_hour17:
    movlw   17
    cpfseq  hour
    return 
    goto    display_hour17   
    return
check_hour18:
    movlw   18
    cpfseq  hour
    return 
    goto    display_hour18   
    return
check_hour19:
    movlw   19
    cpfseq  hour
    return 
    goto    display_hour19   
    return
check_hour20:
    movlw   20
    cpfseq  hour
    return 
    goto    display_hour20   
    return
check_hour21:
    movlw   21
    cpfseq  hour
    return 
    goto    display_hour21   
    return
check_hour22:
    movlw   22
    cpfseq  hour
    return 
    goto    display_hour22   
    return
check_hour23:
    movlw   23
    cpfseq  hour
    return 
    goto    display_hour23   
    return
check_hour24:
    movlw   24
    cpfseq  hour
    return 
    goto    display_hour24   
    return
check_hour25:
    movlw   25
    cpfseq  hour
    return 
    goto    display_hour25   
    return
check_hour26:
    movlw   26
    cpfseq  hour
    return 
    goto    display_hour26   
    return
check_hour27:
    movlw   27
    cpfseq  hour
    return 
    goto    display_hour27   
    return
check_hour28:
    movlw   28
    cpfseq  hour
    return 
    goto    display_hour28   
    return
check_hour29:
    movlw   29
    cpfseq  hour
    return 
    goto    display_hour29   
    return
check_hour30:
    movlw   30
    cpfseq  hour
    return 
    goto    display_hour30   
    return
check_hour31:
    movlw   31
    cpfseq  hour
    return 
    goto    display_hour31   
    return
check_hour32:
    movlw   32
    cpfseq  hour
    return 
    goto    display_hour32   
    return
check_hour33:
    movlw   33
    cpfseq  hour
    return 
    goto    display_hour33   
    return
check_hour34:
    movlw   34
    cpfseq  hour
    return 
    goto    display_hour34   
    return
check_hour35:
    movlw   35
    cpfseq  hour
    return 
    goto    display_hour35   
    return
check_hour36:
    movlw   36
    cpfseq  hour
    return 
    goto    display_hour36   
    return
check_hour37:
    movlw   37
    cpfseq  hour
    return 
    goto    display_hour37   
    return
check_hour38:
    movlw   38
    cpfseq  hour
    return 
    goto    display_hour38   
    return
check_hour39:
    movlw   39
    cpfseq  hour
    return 
    goto    display_hour39   
    return
check_hour40:
    movlw   40
    cpfseq  hour
    return 
    goto    display_hour40   
    return
check_hour41:
    movlw   41
    cpfseq  hour
    return 
    goto    display_hour41   
    return
check_hour42:
    movlw   42
    cpfseq  hour
    return 
    goto    display_hour42   
    return
check_hour43:
    movlw   43
    cpfseq  hour
    return 
    goto    display_hour43   
    return
check_hour44:
    movlw   44
    cpfseq  hour
    return 
    goto    display_hour44   
    return
check_hour45:
    movlw   45
    cpfseq  hour
    return 
    goto    display_hour45   
    return
check_hour46:
    movlw   46
    cpfseq  hour
    return 
    goto    display_hour46   
    return
check_hour47:
    movlw   47
    cpfseq  hour
    return 
    goto    display_hour47   
    return
check_hour48:
    movlw   48
    cpfseq  hour
    return 
    goto    display_hour48   
    return
check_hour49:
    movlw   49
    cpfseq  hour
    return 
    goto    display_hour49   
    return
check_hour50:
    movlw   50
    cpfseq  hour
    return 
    goto    display_hour50   
    return
check_hour51:
    movlw   51
    cpfseq  hour
    return 
    goto    display_hour51   
    return
check_hour52:
    movlw   52
    cpfseq  hour
    return 
    goto    display_hour52   
    return
check_hour53:
    movlw   53
    cpfseq  hour
    return 
    goto    display_hour53   
    return
check_hour54:
    movlw   54
    cpfseq  hour
    return 
    goto    display_hour54   
    return
check_hour55:
    movlw   55
    cpfseq  hour
    return 
    goto    display_hour55   
    return
check_hour56:
    movlw   56
    cpfseq  hour
    return 
    goto    display_hour56   
    return
check_hour57:
    movlw   57
    cpfseq  hour
    return 
    goto    display_hour57   
    return
check_hour58:
    movlw   58
    cpfseq  hour
    return 
    goto    display_hour58   
    return
check_hour59:
    movlw   59
    cpfseq  hour
    return 
    goto    display_hour59   
    return