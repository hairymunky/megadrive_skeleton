;============================================================
; MEMORY ALLOCATION
; Reserve memory required for the program in this file.
;============================================================

RAM_START:  EQU $FFFF0000   ; Megadrive RAM starts at $FFFF0000
RAM_END:    EQU $FFFFFFFF   ; End of RAM (64kB)
STACK_SIZE: EQU $100        ; Default $100 long words for stack

    RSSET   RAM_END-STACK_SIZE 

    rs.l    STACK_SIZE  ; Reserve Stack space