
SECTION "bank23", ROMX, BANK[$17]

; 0x5c000

Unknown_5c000:
INCBIN "baserom.gbc", 16384*23+$0, $40-$0
Unknown_5c040:
INCBIN "baserom.gbc", 16384*23+$40, $48-$40
Unknown_5c048:
INCBIN "baserom.gbc", 16384*23+$48, $62-$48

Function5c062:
        ld a, [$d00b]
        ld e, a
        ld d, $0
        ld hl, Unknown_5c000
        add hl, de
        ld a, [hl]
        rra
        rra
        and $e
        ld b, a
        ld a, [hl]
        and $7
        ld e, a
        ld hl, Unknown_5c040
        add hl, de
        ld c, [hl]
        xor a
        ld d, a
.asm_5c07d
        ld [$ffd9], a
        sla a
        ld e, a
        ld hl, Unknown_5c048
        add hl, de
        ld a, [hli]
        ld h, [hl]
        add b
        ld l, a
        ld a, [hl]
        and c
        ld [hli], a
        ld a, [hl]
        and c
        ld [hl], a
        ld a, [$ffd9]
        inc a
        cp $d
        jr nz, .asm_5c07d
        xor a
        ld [$ffa5], a
        ret
; 0x5c09b

INCBIN "baserom.gbc", 16384*23+$9b, $8c7-$9b

Unknown_5c8c7:
    db $f4, $f4, $f5, $f6, $f7, $f7, $f8, $f8, $f8, $f8, $f7, $f7, $f6, $f5, $f4, $f4

Function5c8d7:
        ld a, [$ffe7]
        rra
        rra
        rra
        nop
        and $f
        ld e, a
        ld d, $0
        ld hl, Unknown_5c8c7
        add hl, de
        ld a, [hl]
        sub $5
        ld [$ff42], a
        ld [$ffe8], a
        ld a, [$c17f]
        cp $fe
        ret z
        ld a, [$c180]
        inc a
        ld [$c180], a
        ld a, [$d005]
        ld [$ffd8], a
        ld hl, $c17c
        xor a
        ld [hli], a
        ld [hli], a
        ld [hli], a
        ld a, [$fffe]
        and a
        jr nz, .asm_5c95e
.asm_5c90b
        ld a, [$ff41]
        and $3
        jr nz, .asm_5c90b
        ld d, $0
.asm_5c913
        ld a, [$c17e]
        inc a
        ld [$c17e], a
        and $1
        jr nz, .asm_5c913
        ld a, [$c17c]
        add $1
        ld [$c17c], a
        ld a, [$c17d]
        adc $0
        ld [$c17d], a
        ld a, [$c17c]
        cp $50
        jr z, .asm_5c95a
        ld hl, $c180
        ld a, [$c17c]
        add [hl]
        and $1f
        ld hl, $ffd8
        or [hl]
        ld e, a
        ld hl, Unknown5c9b1
        add hl, de
        ld a, [hl]
        push af
        ld hl, $ff96
        add [hl]
        ld [$ff43], a
        pop af
        sra a
        ld hl, $ffe8
        add [hl]
        ld [$ff42], a
        jr .asm_5c90b

.asm_5c95a
        xor a
        ld [$ff43], a
        ret

.asm_5c95e
        ld a, [$ff41]
        and $3
        jr nz, .asm_5c95e
        ld d, $0
.asm_5c966
        ld a, [$c17e]
        inc a
        ld [$c17e], a
        and $1
        jr nz, .asm_5c966
        ld a, [$c17c]
        add $1
        ld [$c17c], a
        ld a, [$c17d]
        adc $0
        ld [$c17d], a
        ld a, [$c17c]
        cp $60
        jr z, .asm_5c9ad
        ld hl, $c180
        ld a, [$c17c]
        add [hl]
        and $1f
        ld hl, $ffd8
        or [hl]
        ld e, a
        ld hl, Unknown5c9b1
        add hl, de
        ld a, [hl]
        push af
        ld hl, $ff96
        add [hl]
        ld [$ff43], a
        pop af
        sra a
        ld hl, $ffe8
        add [hl]
        ld [$ff42], a
        jr .asm_5c95e

.asm_5c9ad
        xor a
        ld [$ff43], a
        ret
; 0x5c9b1

Unknown5c9b1:

INCBIN "baserom.gbc", 16384*23+$9b1, $ab1-$9b1

Function5cab1:

INCBIN "baserom.gbc", 16384*23+$ab1, $3d00-$ab1

Unknown_5fd00:
    db $37, $7f

Function5fd02:
        ld a, [$ffe7]
        and $10
        ret nz
        ld e, $0
        ld a, [$c19f]
        and $80
        jr z, .asm_5fd11
        inc e

.asm_5fd11
        ld d, $0
        ld a, [$db95]
        cp $1
        jr z, .asm_5fd32
        ld hl, Unknown_5fd00
        add hl, de
        ld a, [hl]
        ld [$c018], a
        ld a, $97
        ld [$c019], a
        ld a, $a2
        ld [$c01a], a
        ld a, $42
        ld [$c01b], a
        ret

.asm_5fd32
        ld hl, Unknown_5fd00
        add hl, de
        ld a, [hl]
        ld hl, $ff97
        sub [hl]
        ld [$c000], a
        ld a, $97
        ld [$c001], a
        ld a, $fe
        ld [$c002], a
        ld a, $40
        ld [$c003], a
        ret
; 0x5fd4e

Unknown_5fd4e:
    db $30, $78
Unknown_5fd50:
    db $30, $58

Function5fd52:
        ld e, $0
        ld a, [$c19f]
        and $80
        jr z, .asm_5fd5c
        inc e

.asm_5fd5c
        ld d, $0
        ld a, [$db95]
        cp $1
        jr z, .asm_5fd8a
        ld hl, Unknown_5fd4e
        add hl, de
        ld a, [hl]
        ld [$c018], a
        ld e, $0
        ld a, [$c177]
        and $1
        jr z, .asm_5fd77
        inc e

.asm_5fd77
        ld hl, Unknown_5fd50
        add hl, de
        ld a, [hl]
        ld [$c019], a
        ld a, $3e
        ld [$c01a], a
        ld a, $0
        ld [$c01b], a
        ret

.asm_5fd8a
        ld hl, Unknown_5fd4e
        add hl, de
        ld a, [hl]
        ld hl, $ff97
        sub [hl]
        ld [$c000], a
        ld e, $0
        ld a, [$c177]
        and $1
        jr z, .asm_5fda0
        inc e

.asm_5fda0
        ld hl, Unknown_5fd50
        add hl, de
        ld a, [hl]
        ld [$c001], a
        ld a, $9e
        ld [$c002], a
        ld a, $0
        ld [$c003], a
        ret
; 0x5fdb3

INCBIN "baserom.gbc", 16384*23+$3db3, $4000-$3db3
