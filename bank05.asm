

SECTION "bank5", ROMX, BANK[$5]

; 0x14000

INCBIN "baserom.gbc", 16384*5+$0, $156b-$0


Function1556b:
        call Functionbf7
        ld [hl], $c0
        ld a, $18
        ld [$d202], a
        ret
; 0x15576


INCBIN "baserom.gbc", 16384*5+$1576, $19de-$1576


Unknown_159de:
        db $07, $00, $0f, $07, $1f, $0f, $3f, $18, $3f, $10, $3f, $14, $3f, $10, $3f, $1b

Unknown_159ee:
        db $e0, $00, $f0, $e0, $f8, $f0, $fc, $78, $fc, $70, $ff, $c0, $ff, $3e, $ff, $f1

Unknown_159fe:
        db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $03, $00, $07, $03

Unknown_15a0e:
        db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $3f, $00, $ff, $3e, $ef, $f1


Function15a1e:
        ld hl, $c430
        add hl, bc
        ld a, [hl]
        and $7f
        ld [hl], a
        ld e, $f
        ld d, b
.asm_15a29
        ld hl, $c280
        add hl, de
        ld [hl], b
        dec e
        ld a, e
        cp $1
        jr nz, .asm_15a29
        ld a, [$d478]
        and a
        jr z, .asm_15a5d
        ld a, BANK(Function15b09)
        call ChangeROMBank
        call Function15b09
        ld hl, $c290
        add hl, de
        ld [hl], $7
        ld hl, $c2e0
        add hl, de
        ld [hl], $60
        ld a, $1
        ld [$ffa5], a
        call Function3b09
        ld [hl], $4
        ld a, $c0
        ld [$c210], a
        ret

.asm_15a5d
        ld a, $2
        ld [$ffa5], a
        ld [$d478], a
        call Functionc01
        ld [hl], $80
        ld e, $c
        xor a
        ld hl, $d790
.asm_15a6f
        ld [hli], a
        dec e
        jr nz, .asm_15a6f
        ld a, $2
        ld [$d205], a
        ld a, $5c
        ld [$d368], a
        ret
; 0x15a7e


INCBIN "baserom.gbc", 16384*5+$1a7e, $1b09-$1a7e


Function15b09:
        ld a, [$de0b]
        and a
        jr z, .asm_15b18
        xor a
        ld [$de0b], a
        ld a, $19
        ld [$d368], a

.asm_15b18
        ld a, $63
        call Function3b7d
        ld hl, $c360
        add hl, de
        ld [hl], $c
        ld hl, $c200
        add hl, de
        ld [hl], $d0
        ld hl, $c210
        add hl, de
        ld [hl], $18
        ld hl, $c2b0
        add hl, de
        ld [hl], $1
        ld hl, $c240
        add hl, de
        ld [hl], $e0
        ld hl, $c380
        add hl, de
        ld [hl], $0
        ld hl, $c2e0
        add hl, de
        ld [hl], $80
        call Function15c39
        jp Function3b09
; 0x15b4d


INCBIN "baserom.gbc", 16384*5+$1b4d, $1c39-$1b4d

Function15c39:
        ld a, $22
        ld [$fff4], a
        ret
; 0x15c3e


INCBIN "baserom.gbc", 16384*5+$1c3e, $231b-$1c3e

Function1631b:
        call Functionc01
        ld [hl], $40
        ld hl, $c3b0
        add hl, bc
        ld [hl], $ff
        ld hl, $c360
        add hl, bc
        ld [hl], $ff
        ret
; 0x1632d


INCBIN "baserom.gbc", 16384*5+$232d, $2831-$232d

Function16831:
        ld hl, $c460
        add hl, bc
        ld e, [hl]
        sla e
        sla e
        sla e
        sla e
        sla e
        sla e
        ld d, b
        ld hl, $d000
        add hl, de
        push de
        ld e, $20
.asm_1684a
        xor a
        ld [hli], a
        dec e
        ld a, e
        cp $0
        jr nz, .asm_1684a
        pop de
        ld hl, $d100
        add hl, de
        ld e, $20
.asm_16859
        xor a
        ld [hli], a
        dec e
        ld a, e
        cp $0
        jr nz, .asm_16859
        ld hl, $c250
        add hl, bc
        ld [hl], $6
        call Functionc01
        ld [hl], $40
        call Functionbfc
        ld [hl], $40
        ld hl, $c3b0
        add hl, bc
        ld [hl], $3
        ret
; 0x16878


INCBIN "baserom.gbc", 16384*5+$2878, $2cdf-$2878

Function16cdf:
        call Functionc01
        ld [hl], $80
        xor a
        ld [$d200], a
        ld [$d203], a
        ld [$d204], a
        ld hl, $c390
        add hl, bc
        ld [hl], $1
        ret
; 0x16cf5

INCBIN "baserom.gbc", 16384*5+$2cf5, $4000-$2cf5
