; 0x7c000

Function7c000:
        jp Function7c009
; 0x7c003

Function7c003:
        jp $7b5c
; 0x7c006

Function7c006:
        jp Function7c01e
; 0x7c009

Function7c009:
        ld hl, $d300
.asm_7c00c
        ld [hl], $0
        inc l
        jr nz, .asm_7c00c
        ld a, $80
        ld [$ff26], a
        ld a, $77
        ld [$ff24], a
        ld a, $ff
        ld [$ff25], a
        ret
; 0x7c01e

Function7c01e:
        call Function7c204
        call $53ed
        call $64ec
        xor a
        ld [$d360], a
        ld [$d370], a
        ld [$d378], a
        ret
; 0x7c032

Function7c032:


INCBIN "baserom.gbc", 16384*31+$0032, $0204-$0032


Function7c204:
        ld hl, $d360
        ld a, [hl]
        and a
        jr z, .asm_7c21c
        cp $1
        jr z, .asm_7c216
        ld a, [$d3c6]
        and a
        jp nz, $53e6

.asm_7c216
        ld a, [hl]
        ld hl, $4100
        jr .asm_7c223

.asm_7c21c
        inc hl
        ld a, [hl]
        and a
        ret z
        ld hl, $4182

.asm_7c223
        call $7a64
        ld de, $d390
        ld bc, $d394
        jp [hl]
; 0x7c22d



INCBIN "baserom.gbc", 16384*31+$022d, $4000-$022d

