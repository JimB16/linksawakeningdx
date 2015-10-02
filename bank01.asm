
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
        ld [rSVBK], a
        ld a, [$d000]
        and a
        jr nz, .asm_403e
.asm_402a
        xor a
        ld [rSVBK], a
        ld b, [hl]
        ld a, $3
        ld [rSVBK], a
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
        ld [rSVBK], a
        ei

.asm_4042
        call Function1d31
        call Functionef8
        call Function1a1d
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

Function4073:
        ld a, $d
        ld [$d6fe], a
        xor a
        ld [$c13f], a
        jp $44d9
; 0x407f

Function407f:
        ld a, $d
        ld [$d6ff], a
        ld a, $ff
        ld [$db9a], a
        xor a
        ld [$ff96], a
        ld [$ff97], a
        ld [$c16b], a
        ld [$c16c], a
        ld a, $1
        ld [$ddd5], a
        jp $44d9
; 0x409c

Function409c:
        call Function1a34
        ld a, [$c16b]
        cp $4
        jr nz, .asm_40a9
        call $44d9

.asm_40a9
        ret
; 0x40aa

Function40aa:
        call Function412d
        ld a, [$ffcc]
        and $b0
        jr z, .asm_412a
        ld a, $13
        ld [hfff2], a
        ld a, [$c13f]
        cp $1
        jr z, .asm_40f9
        call $44d9
        xor a
        ld [$c16b], a
        ld [$c16c], a
        ld a, [$dba5]
        and a
        jr z, .asm_40d5
        xor a
        ld [$c50a], a
        ld [$c116], a

.asm_40d5
        ret

        xor a
        ld [$db98], a
        ld [$db99], a
        ld [rOBP0], a
        ld [rOBP1], a
        ld [$db97], a
        ld [rBGP], a
        ld a, [$ff98]
        ld [$db9d], a
        ld a, [$ff99]
        ld [$db9e], a
        call $52af
        ld a, $80
        ld [$dbc7], a
        ret

.asm_40f9
        call $27e9
        call $5e1e
        call $29c2
        xor a
        ld [$fff5], a
        ld a, $1
        ld [$dbaf], a
        call $6225
        call $28c6
        ld a, $c7
        ld [rLCDC], a
        ld [$d6fd], a
        ld a, $7
        ld [rWX], a
        ld a, $80
        ld [$db9a], a
        ld [rWY], a
        ld a, $7
        ld [$ffa9], a
        ld a, $70
        ld [$ffaa], a

.asm_412a
        ret
; 0x412b

Unknown_412b:
	db $48, $58

Function412d:
        ld hl, $c13f
        call $6c6b
        ld a, [$ffcc]
        and $c
        jr z, .asm_413e
        ld a, [hl]
        inc a
        and $1
        ld [hl], a

.asm_413e
        ld e, [hl]
        ld d, $0
        ld hl, Unknown_412b
        add hl, de
        ld a, [hl]
        ld hl, $c018
        ld [hli], a
        ld a, $24
        ld [hli], a
        ld a, $be
        ld [hli], a
        ld [hl], $0
        ret
; 0x4153


INCBIN "baserom.gbc", $4000*1+$153, $4000-$153
