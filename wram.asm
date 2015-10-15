;INCLUDE "includes.asm"

;flag_array: MACRO
;	ds ((\1) + 7) / 8
;ENDM



SECTION "CHR0", VRAM [$8000], BANK [0]
v8000:: ds $8400-$8000
v8400:: ds $8460-$8400
v8460:: ds $8480-$8460
v8480::
SECTION "CHR1", VRAM [$8800], BANK [0]
v8800::
SECTION "v8e00", VRAM [$8e00], BANK [0]
v8e00::
SECTION "CHR2", VRAM [$9000], BANK [0]
VTiles2:: ds $96c0-$9000
v96c0:: ds $96d0-$96c0
v96d0::
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

wd000:: ds $168
wd168:: ds $400-$168
wd400:: ds 1
wd401:: ds 1 ; Destination data byte 1: 00 - overworld, 01 - dungeon, 02 - side view area
wd402:: ds 1 ; Destination data byte 2: Values from 00 to 1F accepted. FF is Color Dungeon
wd403:: ds 1 ; Destination data byte 3: Room number. Must appear on map or it will lead to an empty room
wd404:: ds 2 ; Destination data X and Y co-ordinates
wd406:: ds $d416-$d406
wd416:: ds 1
wd417:: ds $d45f-$d417
wd45f:: ds 1
wd460:: ds $d471-$d460
wd471:: ds $d47a-$d471
wd47a:: ds $d47c-$d47a
wd47c:: ds $d600-$d47c
wd600:: ds 1
wd601:: ds $d700-$d601
wd700:: ds $d800-$d700
wd800:: ds $dfff-$d800
wdfff:: ds 1


SECTION "Party", WRAMX, BANK [1]

wPokemonData::




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
