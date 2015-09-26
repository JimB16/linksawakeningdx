
; http://otakunozoku.com/RGBDSdocs/fix.htm

INCLUDE "gbhw.asm"
INCLUDE "enum.asm"
INCLUDE "hram.asm"


INCLUDE "rst.asm"


SECTION "Header", ROM0[$100]
Start::
        nop
        jp _Start


INCLUDE "start.asm"




SECTION "bank1", ROMX, BANK[$1]

INCLUDE "bank01.asm"



SECTION "bank2", ROMX, BANK[$2]

INCBIN "baserom.gbc", 16384*2, $4000

SECTION "bank3", ROMX, BANK[$3]

INCBIN "baserom.gbc", 16384*3, $4000

SECTION "bank4", ROMX, BANK[$4]

INCBIN "baserom.gbc", 16384*4, $4000

SECTION "bank5", ROMX, BANK[$5]

INCBIN "baserom.gbc", 16384*5, $4000

SECTION "bank6", ROMX, BANK[$6]

INCBIN "baserom.gbc", 16384*6, $4000

SECTION "bank7", ROMX, BANK[$7]

INCBIN "baserom.gbc", 16384*7, $4000

SECTION "bank8", ROMX, BANK[$8]

INCBIN "baserom.gbc", 16384*8, $4000

SECTION "bank9", ROMX, BANK[$9]

INCBIN "baserom.gbc", 16384*9, $4000



SECTION "bank10", ROMX, BANK[$a]

INCLUDE "bank10.asm"




SECTION "bank11", ROMX, BANK[$b]

INCBIN "baserom.gbc", 16384*11, $4000

SECTION "bank12", ROMX, BANK[$c]

INCBIN "baserom.gbc", 16384*12, $4000

SECTION "bank13", ROMX, BANK[$d]

INCBIN "baserom.gbc", 16384*13, $4000

SECTION "bank14", ROMX, BANK[$e]

INCBIN "baserom.gbc", 16384*14, $4000

SECTION "bank15", ROMX, BANK[$f]

INCBIN "baserom.gbc", 16384*15, $4000

SECTION "bank16", ROMX, BANK[$10]

INCBIN "baserom.gbc", 16384*16, $4000

SECTION "bank17", ROMX, BANK[$11]

INCBIN "baserom.gbc", 16384*17, $4000

SECTION "bank18", ROMX, BANK[$12]

INCBIN "baserom.gbc", 16384*18, 16384

SECTION "bank19", ROMX, BANK[$13]

INCBIN "baserom.gbc", 16384*19, 16384



SECTION "bank20", ROMX, BANK[$14]

; 2=opens shutters.  4=defeats all enemies.  6=a treasure chest appears at position 28.  8=a key falls at position 32.  A=a staircase will appear at position 18.  C=the miniboss flag is set, shutter opens, warp to start of dungeon is opened.
; Events
	const_def
	const EVENT_0
	const EVENT_1
	const EVENT_2
	const EVENT_3
	const EVENT_4
	const EVENT_5
	const EVENT_6
	const EVENT_7
	const EVENT_8
	const EVENT_9
	const EVENT_A
	const EVENT_B
	const EVENT_C
	const EVENT_D
	const EVENT_E
	const EVENT_F

; 1=must defeat all enemies.  2=push a block.  3=push a trigger.  4=?  5=light all torches.  6=level 2 nightmare key puzzle, that is you need to destroy a Pols Voice first, then a keese, then a staflos.  7=push two blocks together, can be in any form as long as they are both movable blocks.  8=kill special enemies, which are defined as enemies that can't normally be destroyed like traps and sparks.  9=level 4 tile puzzle must be completed.  A=defeat boss 4 or 7 to open shutter door.  B=one way shutter, or throw somthing at it to open.  C=throw the horse heads at a wall to stand them up.  D=smash a chest to open, allways get a nightmare key, allways opens at a specific spot.  E="Fill in the holes with the rock that rolls".  F=fire an arrow at a statue, might be sprite related.
; EventTriggers
	const_def
	const EVENT_TRIGGER_0
	const EVENT_TRIGGER_1
	const EVENT_TRIGGER_2

EventData: ; 0x50000
	db $00
	db $00
	db EVENT_2 << 4 | EVENT_TRIGGER_1
	db EVENT_A << 4 | EVENT_TRIGGER_1
	db $22, $00, $21, $00, $00, $00, $61, $00, $00, $61, $00, $00
	db $00, $C1, $21, $63, $61, $21, $81, $00, $00, $00, $00, $00, $00, $00, $00, $00
; 0x50020

INCBIN "baserom.gbc", 16384*20+$20, $198a-$20

; 0x51980
	db "What a relief! I"
	db "thought you^d   "
	db "never wake up!  "
	db "You were tossing"
	db "and turning...  "
	db "What?  Zelda?   "
	db "No, my name^s   "
	db "Marin!  You must"
	db "still be feeling"
	db "a little woozy. "
	db "You are on      "
	db "Koholi"
	
; 0x51990
INCBIN "baserom.gbc", 16384*20+$1a40, $4000-$1a40




SECTION "bank21", ROMX, BANK[$15]

INCLUDE "bank21.asm"



SECTION "bank22", ROMX, BANK[$16]
SpriteData: ; 0x58000
	dw Sprite_59186
	dw Sprite_5918D
	dw Sprite_59192
	dw Sprite_59195
	dw $5198, $519B, $519E, $51A3
	dw $51A4, $51A9, $51AA, $51AF, $51B4, $51B9, $51BE, $51BF
; 0x58020

INCBIN "baserom.gbc", 16384*22+$20, $1186-$20

Sprite_59186: ; 0x59186
	db $67, $29, $24, $35, $26, $7A, $FF
Sprite_5918D: ; 0x5918D
	db $46, $61, $53, $7A, $FF
Sprite_59192: ; 0x59192
	db $64, $0B, $FF
Sprite_59195: ; 0x59195

INCBIN "baserom.gbc", 16384*22+$1195, $4000-$1195




SECTION "bank23", ROMX, BANK[$17]

INCBIN "baserom.gbc", 16384*23, $4000

SECTION "bank24", ROMX, BANK[$18]

INCBIN "baserom.gbc", 16384*24, $4000

SECTION "bank25", ROMX, BANK[$19]

INCBIN "baserom.gbc", 16384*25, $4000

SECTION "bank26", ROMX, BANK[$1a]

INCBIN "baserom.gbc", 16384*26, $4000

SECTION "bank27", ROMX, BANK[$1b]

INCBIN "baserom.gbc", 16384*27, $4000

SECTION "bank28", ROMX, BANK[$1c]

INCBIN "baserom.gbc", 16384*28, $4000

SECTION "bank29", ROMX, BANK[$1d]

INCBIN "baserom.gbc", 16384*29, $4000

SECTION "bank30", ROMX, BANK[$1e]

INCBIN "baserom.gbc", 16384*30, $4000



SECTION "bank31", ROMX, BANK[$1f]

INCLUDE "bank31.asm"



SECTION "bank32", ROMX, BANK[$20]

INCBIN "baserom.gbc", 16384*32, 16384



SECTION "bank33", ROMX, BANK[$21]

INCLUDE "bank33.asm"



SECTION "bank34", ROMX, BANK[34]

INCBIN "baserom.gbc", 16384*34, 16384

SECTION "bank35", ROMX, BANK[35]

INCBIN "baserom.gbc", 16384*35, 16384

SECTION "bank36", ROMX, BANK[36]

INCBIN "baserom.gbc", 16384*36, 16384

SECTION "bank37", ROMX, BANK[37]

INCBIN "baserom.gbc", 16384*37, 16384

SECTION "bank38", ROMX, BANK[38]

INCBIN "baserom.gbc", 16384*38, 16384

SECTION "bank39", ROMX, BANK[39]

INCBIN "baserom.gbc", 16384*39, 16384

SECTION "bank40", ROMX, BANK[40]

INCBIN "baserom.gbc", 16384*40, 16384

SECTION "bank41", ROMX, BANK[41]

INCBIN "baserom.gbc", 16384*41, 16384

SECTION "bank42", ROMX, BANK[42]

INCBIN "baserom.gbc", 16384*42, 16384

SECTION "bank43", ROMX, BANK[43]

INCBIN "baserom.gbc", 16384*43, 16384

SECTION "bank44", ROMX, BANK[44]

INCBIN "baserom.gbc", 16384*44, 16384

SECTION "bank45", ROMX, BANK[45]

INCBIN "baserom.gbc", 16384*45, 16384

SECTION "bank46", ROMX, BANK[46]

INCBIN "baserom.gbc", 16384*46, 16384

SECTION "bank47", ROMX, BANK[47]

INCBIN "baserom.gbc", 16384*47, 16384

SECTION "bank48", ROMX, BANK[48]

INCBIN "baserom.gbc", 16384*48, 16384

SECTION "bank49", ROMX, BANK[49]

INCBIN "baserom.gbc", 16384*49, 16384

SECTION "bank50", ROMX, BANK[50]

INCBIN "baserom.gbc", 16384*50, 16384

SECTION "bank51", ROMX, BANK[51]

INCBIN "baserom.gbc", 16384*51, 16384

SECTION "bank52", ROMX, BANK[52]

INCBIN "baserom.gbc", 16384*52, 16384

SECTION "bank53", ROMX, BANK[53]

INCBIN "baserom.gbc", 16384*53, 16384

SECTION "bank54", ROMX, BANK[54]

INCBIN "baserom.gbc", 16384*54, $3356

SECTION "bank55", ROMX, BANK[55]

INCBIN "baserom.gbc", 16384*55, $1cda

SECTION "bank56", ROMX, BANK[56]

INCBIN "baserom.gbc", 16384*56, $3898

SECTION "bank57", ROMX, BANK[57]

INCBIN "baserom.gbc", 16384*57, 16384

SECTION "bank58", ROMX, BANK[58]

INCBIN "baserom.gbc", 16384*58, 16384

SECTION "bank59", ROMX, BANK[59]

INCBIN "baserom.gbc", 16384*59, 16384

SECTION "bank60", ROMX, BANK[60]

INCBIN "baserom.gbc", 16384*60, $2bde

SECTION "bank61", ROMX, BANK[61]

INCBIN "baserom.gbc", 16384*61, $254e

SECTION "bank62", ROMX, BANK[62]
; empty bank

SECTION "bank63", ROMX, BANK[63]

INCBIN "baserom.gbc", 16384*63, $3b4b
