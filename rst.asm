
SECTION "NULL", ROM0[$0]
        jp $28b7
; 0x3

SECTION "NULL_40", ROM0[$40]
        jp $0469
; 0x43

SECTION "NULL_48", ROM0[$48]
        jp $0385
; 0x4b

SECTION "NULL_50", ROM0[$50]
        reti
; 0x51

SECTION "NULL_58", ROM0[$58]
        jp $0405
; 0x5b

SECTION "NULL_60", ROM0[$60]
        reti
; 0x61

SECTION "NULL_62", ROM0[$62]
rst62:
        ld hl, $6900
        ld de, $89a0
        jr .asm_80

        ld hl, $6930
        ld de, $89d0
        jr .asm_80

        ld hl, $49d0
        ld de, $89d0
        jr .asm_80

        ld hl, $49a0
        ld de, $89a0

.asm_80
        ld bc, $0030
        call $290b
        xor a
        ld [$ff90], a
        ld [$ff92], a
        ld a, $c
        ld [$2100], a
        ret
; 0x91

