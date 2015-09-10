
INCLUDE "rst.asm"


SECTION "Header", ROM0[$100]
Start::
        nop
        jp _Start

;INCBIN "baserom.gbc", $100, $50





INCLUDE "start.asm"




SECTION "bank1", ROMX, BANK[$1]
; 0x4000
        ld a, [$db96]
        rst $0
        ld [de], a
        ld b, b
        ld b, d
        ld b, b
        ld [hl], e
        ld b, b
        ld a, a
        ld b, b
        sbc h
        ld b, b
        xor d
        ld b, b
        ld c, h
        ld e, b
        call $44d9
        ld a, [$fffe]
        and a
        jr z, .asm_4042
        ld hl, $dc10
        ld c, $80
        di
        ld a, $3
        ld [$ff70], a
        ld a, [$d000]
        and a
        jr nz, .asm_403e
.asm_402a
        xor a
        ld [$ff70], a
        ld b, [hl]
        ld a, $3
        ld [$ff70], a
        ld [hl], b
        inc hl
        dec c
        ld a, c
        and a
        jr nz, .asm_402a
        ld a, $1
        ld [$d000], a

.asm_403e
        xor a
        ld [$ff70], a
        ei

.asm_4042
        call $1d31
        call $0ef8
        call $1a1d
        ld a, [$c16b]
        cp $4
        jr nz, .asm_4072
        ld a, $3
        ld [$ffa9], a
        ld a, $30
        ld [$ffaa], a
        call $44d9
        xor a
        ld [$c1bf], a
        ld [$c14f], a
        ld [$c1b8], a
        ld [$c1b9], a
        ld [$c1b5], a
        ld a, $f
        ld [$d6fe], a

.asm_4072
        ret
; 0x4073


INCBIN "baserom.gbc", $4000*1+$73, $4000-$73

SECTION "bank2", ROMX, BANK[$2]

INCBIN "baserom.gbc", 16384*2, 16384

SECTION "bank3", ROMX, BANK[$3]

INCBIN "baserom.gbc", 16384*3, 16384

SECTION "bank4", ROMX, BANK[$4]

INCBIN "baserom.gbc", 16384*4, 16384

SECTION "bank5", ROMX, BANK[$5]

INCBIN "baserom.gbc", 16384*5, 16384

SECTION "bank6", ROMX, BANK[$6]

INCBIN "baserom.gbc", 16384*6, 16384

SECTION "bank7", ROMX, BANK[$7]

INCBIN "baserom.gbc", 16384*7, 16384

SECTION "bank8", ROMX, BANK[$8]

INCBIN "baserom.gbc", 16384*8, 16384

SECTION "bank9", ROMX, BANK[$9]

INCBIN "baserom.gbc", 16384*9, 16384

SECTION "bank10", ROMX, BANK[10]

RoomPointerData: ; 0x28000
	dw $4200, $4203, $4242, $4287, $42b3, $42e8, $431a, $4338


INCBIN "baserom.gbc", 16384*10+$10, $4000-$10

SECTION "bank11", ROMX, BANK[11]

INCBIN "baserom.gbc", 16384*11, 16384

SECTION "bank12", ROMX, BANK[12]

INCBIN "baserom.gbc", 16384*12, 16384

SECTION "bank13", ROMX, BANK[13]

INCBIN "baserom.gbc", 16384*13, 16384

SECTION "bank14", ROMX, BANK[14]

INCBIN "baserom.gbc", 16384*14, $4000

SECTION "bank15", ROMX, BANK[15]

INCBIN "baserom.gbc", 16384*15, 16384

SECTION "bank16", ROMX, BANK[16]

INCBIN "baserom.gbc", 16384*16, 16384

SECTION "bank17", ROMX, BANK[17]

INCBIN "baserom.gbc", 16384*17, 16384

SECTION "bank18", ROMX, BANK[18]

INCBIN "baserom.gbc", 16384*18, 16384

SECTION "bank19", ROMX, BANK[19]

INCBIN "baserom.gbc", 16384*19, 16384

SECTION "bank20", ROMX, BANK[20]




INCBIN "baserom.gbc", 16384*20, $198a
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




SECTION "bank21", ROMX, BANK[21]

INCBIN "baserom.gbc", 16384*21, 16384

SECTION "bank22", ROMX, BANK[22]

INCBIN "baserom.gbc", 16384*22, 16384

SECTION "bank23", ROMX, BANK[23]

INCBIN "baserom.gbc", 16384*23, 16384

SECTION "bank24", ROMX, BANK[24]

INCBIN "baserom.gbc", 16384*24, 16384

SECTION "bank25", ROMX, BANK[25]

INCBIN "baserom.gbc", 16384*25, 16384

SECTION "bank26", ROMX, BANK[26]

INCBIN "baserom.gbc", 16384*26, 16384

SECTION "bank27", ROMX, BANK[27]

INCBIN "baserom.gbc", 16384*27, 16384

SECTION "bank28", ROMX, BANK[28]

INCBIN "baserom.gbc", 16384*28, 16384

SECTION "bank29", ROMX, BANK[29]

INCBIN "baserom.gbc", 16384*29, 16384

SECTION "bank30", ROMX, BANK[30]

INCBIN "baserom.gbc", 16384*30, 16384

SECTION "bank31", ROMX, BANK[31]

INCBIN "baserom.gbc", 16384*31, 16384

SECTION "bank32", ROMX, BANK[32]

INCBIN "baserom.gbc", 16384*32, 16384

SECTION "bank33", ROMX, BANK[33]

INCBIN "baserom.gbc", 16384*33, 16384

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
