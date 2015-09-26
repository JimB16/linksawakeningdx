;INCLUDE "includes.asm"

;flag_array: MACRO
;	ds ((\1) + 7) / 8
;ENDM



SECTION "CHR0", VRAM [$8000], BANK [0]
VTiles0::
SECTION "CHR1", VRAM [$8800], BANK [0]
VTiles1::
SECTION "CHR2", VRAM [$9000], BANK [0]
VTiles2::
SECTION "BG0",  VRAM [$9800], BANK [0]
VBGMap0::
SECTION "BG1",  VRAM [$9C00], BANK [0]
VBGMap1::



SECTION "Stack", WRAM0
wc000::
	ds $ff
Stack:: ; wc0ff
	ds 1


SECTION "WRAM 0", WRAM0

wc100:: ds 1
wc101:: ds $c105-$c101
wc105:: ds 1
wc106:: ds 1


SECTION "WRAM 1", WRAMX, BANK [1]

wd000:: ds $400
wd400:: ds 1
wd401:: ds 1 ; Destination data byte 1: 00 - overworld, 01 - dungeon, 02 - side view area
wd402:: ds 1 ; Destination data byte 2: Values from 00 to 1F accepted. FF is Color Dungeon
wd403:: ds 1 ; Destination data byte 3: Room number. Must appear on map or it will lead to an empty room
wd404:: ds 2 ; Destination data X and Y co-ordinates
wd406:: ds $d416-$d406
wd416:: ds 1
wd417:: ds $d45f-$d417
wd45f:: ds 1


SECTION "Party", WRAMX, BANK [1]

wPokemonData::


SECTION "Pic Animations", WRAMX, BANK [2]

w2_d000::



SECTION "Scratch", SRAM, BANK [0]

sScratch::


SECTION "SRAM Bank 0", SRAM [$a600], BANK [0]

s0_a600:: ds $11a
s0_a71a:: ds $11a
s0_a834:: ds $1d7
s0_aa0b:: ds $1d7

s0_abe2:: ds 1
s0_abe3:: ds 1
s0_abe4:: ds 1
s0_abe5:: ds 1
s0_abe6:: ds 10
s0_abf0:: ds 10
s0_abfa:: ds 2
