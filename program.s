;============================================================
; MANIC MINER
; A Megadrive port of the classic Spectrum Game by Mat Smith
;============================================================

    ; Include static stuff here
    ; ie Macros, equates, RAM allocation
    include memory.s

;============================================================
; CODE AREA
; All program code should live here
;============================================================

    ; These 3 files must come first before any other code
    include vector.s 
    include header.s 
    include segainit.s 

    ; The game code!
    include main.s  
;============================================================
; DATA AREA
; All data should be included here
;============================================================


;============================================================
; END OF ROM
; *** NO CODE/DATA BEYOND THIS POINT ***
;============================================================
__end:
