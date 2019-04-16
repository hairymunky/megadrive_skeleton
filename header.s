;==========================================================
; Sega Cartridge Header
; Amend as required by program (within the byte sizes)
;==========================================================

    org $100

    dc.b    'SEGA GENESIS    '  ; 01    $100    Sega Genesis ID (16 bytes)
    dc.b    '(C)SEGA 1992.SEP'  ; 02    $110    company ID / release date (YYYY.MMM) (16 bytes)

    ;<---------    US TITLE    ---------->
    dc.b    "                "  ; 03    $120    game title for US market (32 bytes)
    dc.b    '                '  ;       $130
    dc.b    '                '  ;       $140

    ;<--------- JAPANESE TITLE ---------->
    dc.b    "                "  ; 04    $150    game title for Japanese market (32 bytes)
    dc.b    '                '  ;       $160
    dc.b    '                '  ;       $170

    ;<---------  PRODUCT CODE  ---------->
    dc.b    'xx xx-0000 -00'    ; 05    $180    cartridge cat., product no., version no. (14 bytes)

    
    dc.w    $0000               ; 06    $18E    check sum data (installed by checksum program) (2 bytes)
    dc.b    'J               '  ; 07    $190    I/O peripheral info. (J=Control Pad) (16 bytes)
    dc.l    __start, __end      ; 08    $1A0    cartridge size (start and end address) (16 bytes)
    dc.l    $00FF0000,$00FFFFFF ; 09    $1A8    RAM size (start and end address) (16 bytes)
    dc.b    '                '  ; 10    $1B0    external RAM info. (12 bytes)
    dc.b    '                '  ; 11    $1C0    modem info. (12 bytes)
    dc.b    '                '  ;       $1D0
    dc.b    '                '  ;       $1E0
    dc.b    'U               '  ; 13    $1F0    country code for release (16 bytes)