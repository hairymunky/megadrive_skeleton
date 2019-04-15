;============================================================
; M68000 Vector Table
; Must be present at $0000 to boot the program
;============================================================
    
    ORG $00000000

    ; Label tod compute ROM size
__start:
;============================================================
; Reset puts these values in the sp and pc                 
;============================================================
    dc.l    0   ; Top of RAM
    dc.l    ICD_START

;============================================================
; Snasm equates
; No longer useful unless you have SNASM debug hardware!
; Kept for hisotrical reasons
;============================================================
SCSITrap:    equ $208008
SCSIExcept:  equ $20800C
KeepTraps:   equ     0

;============================================================
; Error exceptions for snasm or owned by megadrive            
;============================================================
    if  KeepTraps
        dc.l    $02<<24+SCSIExcept
        dc.l    $03<<24+SCSIExcept
        dc.l    $04<<24+SCSIExcept
        dc.l    $05<<24+SCSIExcept
        dc.l    $06<<24+SCSIExcept
        dc.l    $07<<24+SCSIExcept
        dc.l    $08<<24+SCSIExcept
        dc.l    $09<<24+SCSIExcept
    else
        dc.l    EX_BusError
        dc.l    EX_AddressError
        dc.l    EX_IllegalInstruction
        dc.l    EX_DivideBy0
        dc.l    EX_CHK
        dc.l    EX_TrapV
        dc.l    EX_Priviledge
        dc.l    EX_Trace
    endif
    dc.l    EX_LineA
    dc.l    EX_LineF


;============================================================
; Motorola reserved exeptions                          
;============================================================
    dcb.l   12,EX_Motorola

;============================================================
; Hardware interrupt vectors                           
;============================================================
    dc.l    irte
    dc.l    irte
    dc.l    external
    dc.l    irte
    dc.l    hbl
    dc.l    irte
    dc.l    vbl
    dc.l    irte

;============================================================
; Traps levels 0-f                             
;============================================================
    if  KeepTraps
        dc.l    $20<<24+SCSITrap
        dc.l    $21<<24+SCSIExcept
        dc.l    $22<<24+SCSIExcept
        dc.l    $23<<24+SCSIExcept
        dc.l    $24<<24+SCSIExcept
        dc.l    $25<<24+SCSIExcept
        dc.l    $26<<24+SCSIExcept
        dc.l    $27<<24+SCSIExcept
        dc.l    $28<<24+SCSIExcept
        dc.l    $29<<24+SCSIExcept
        dc.l    $2A<<24+SCSIExcept
        dc.l    $2B<<24+SCSIExcept
        dc.l    $2C<<24+SCSIExcept
        dc.l    $2D<<24+SCSIExcept
        dc.l    $2E<<24+SCSIExcept
        dc.l    $2F<<24+SCSIExcept
    else
        dc.l    EX_Trap0
        dc.l    EX_Trap1
        dc.l    EX_Trap2
        dc.l    EX_Trap3
        dc.l    EX_Trap4
        dc.l    EX_Trap5
        dc.l    EX_Trap6
        dc.l    EX_Trap7
        dc.l    EX_Trap8
        dc.l    EX_Trap9
        dc.l    EX_TrapA
        dc.l    EX_TrapB
        dc.l    EX_TrapC
        dc.l    EX_TrapD
        dc.l    EX_TrapE
        dc.l    EX_TrapF
    endif

;============================================================
; Motorola reserved                            
;============================================================
    dcb.l   16,EX_Motorola