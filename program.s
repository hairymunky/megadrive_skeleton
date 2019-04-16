;============================================================
; PROGRAM.S
;   - Glues all the other files together and brings them in
;     for compilation.
;
;   - The layout described in the following comments are
;     just suggestions. Just be sure to keep the code and
;     data inside the ROM AREA and that the final size is
;     not too large (if burning a ROM chip).
;============================================================

    ; Include static stuff here
    ; ie Macros, equates, RAM allocation
    include memory.s


;   ***** ROM CARTDRIDGE SECTION *****
;   Anything beyond here will be built into
;   the final ROM image.
;
;============================================================
; CODE AREA
; All program code should live here (ie Input, Physics etc)
;============================================================

    ; These 3 files must come first before any other code
    include vector.s 
    include header.s 
    include segainit.s 

    ; The game code!
    include main.s  

;============================================================
; DATA AREA
; All data should be included here (ie Level data, bitmaps etc)
;============================================================


;============================================================
; END OF ROM
; *** NO CODE/DATA BEYOND THIS POINT ***
;============================================================
__end: