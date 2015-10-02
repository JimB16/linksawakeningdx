
SECTION "NULL", ROM0[$0]
        jp Function28b7
; 0x3

SECTION "NULL_40", ROM0[$40]
        jp Function469
; 0x43

SECTION "NULL_48", ROM0[$48]
        jp Function385
; 0x4b

SECTION "NULL_50", ROM0[$50]
        reti
; 0x51

SECTION "NULL_58", ROM0[$58]
        jp Function405
; 0x5b

SECTION "NULL_60", ROM0[$60]
        reti
; 0x61

SECTION "NULL_62", ROM0[$62]
rst62:
        ld hl, $6900
        ld de, $89a0
        jr asm_80

rst6a:
        ld hl, $6930
        ld de, $89d0
        jr asm_80

rst72:
        ld hl, $49d0
        ld de, $89d0
        jr asm_80

rst7a:
        ld hl, $49a0
        ld de, $89a0

asm_80:
        ld bc, $0030
        call CopyBytes
        xor a
        ld [hff90], a
        ld [hff92], a

Function8b:
        ld a, $c
        ld [MBC5RomBank], a
        ret
; 0x91

