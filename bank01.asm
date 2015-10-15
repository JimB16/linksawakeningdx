
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
        jr z, asm_412a
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

Function4110:
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

asm_412a
        ret
; 0x412b

Unknown_412b:
	db $48, $58

Function412d:
        ld hl, $c13f
        call Function6c6b
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


INCBIN "baserom.gbc", $4000*1+$153, $1f2a-$153

Function5f2a:
        push bc
        ld a, [$dba5]
        and a
        jr z, .asm_5f58
        ld a, [$fff7]
        cp $ff
        jr nz, .asm_5f3c
        ld hl, $ddda
        jr .asm_5f4d

.asm_5f3c
        cp $a
        jr nc, .asm_5f58
        ld hl, $db16
        ld e, a
        sla a
        sla a
        add e
        ld e, a
        ld d, $0
        add hl, de

.asm_5f4d
        ld de, $dbcc
        ld c, $5
.asm_5f52
        ld a, [de]
        inc de
        ld [hli], a
        dec c
        jr nz, .asm_5f52

.asm_5f58
        pop bc
        ret
; 0x5f5a

INCBIN "baserom.gbc", $4000*1+$1f5a, $1ff1-$1f5a

Function5ff1:
        ld hl, $0000
        ld a, [$fffe]
        and a
        jr z, .asm_5ffd
        ld [hl], $0
        jr .asm_5fff

.asm_5ffd
        ld [hl], $ff

.asm_5fff
        ld b, $28
        ld a, $f4
        ld hl, $c000
.asm_6006
        ld [hli], a
        inc hl
        inc hl
        inc hl
        dec b
        jr nz, .asm_6006
        ret
; 0x600e

Function600e:
        ld a, [$c14f]
        and a
        jr z, .asm_602d
        ld hl, $c000
        ld a, [$db9a]
        add $8
        ld d, a
        ld e, $28
.asm_601f
        ld a, [hl]
        cp d
        jr c, .asm_6025
        ld [hl], $0

.asm_6025
        inc hl
        inc hl
        inc hl
        inc hl
        dec e
        jr nz, .asm_601f
        ret

.asm_602d
        ld a, [$db9a]
        and a
        ret z
        ld a, [$c19f]
        and a
        ret z
        ld d, $3e
        ld a, [$c19f]
        and $80
        jr z, .asm_6042
        ld d, $58

.asm_6042
        ld e, $1f
        ld hl, $c024
.asm_6047
        ld a, [hl]
        cp d
        ld a, [$c19f]
        bit 7, a
        jr nz, .asm_6051
        ccf

.asm_6051
        jr c, .asm_606e
        ld a, [$c173]
        cp $4f
        jr nz, .asm_606c
        ld a, [$c112]
        and a
        jr nz, .asm_606c
        inc hl
        inc hl
        ld a, [hld]
        dec hl
        cp $9a
        jr c, .asm_606c
        cp $a0
        jr c, .asm_606e

.asm_606c
        ld [hl], $0

.asm_606e
        inc hl
        inc hl
        inc hl
        inc hl
        dec e
        jr nz, .asm_6047
        ret
; 0x6076

Function6076:
        ld a, [$dba5]
        and a
        jr z, .asm_6096
        ld a, [$fff9]
        and a
        ret nz
        ld a, [$fff7]
        cp $16
        ret z
        cp $14
        ret z
        cp $13
        ret z
        cp $a
        ret c
        ld a, [$fff6]
        cp $fd
        ret z
        cp $b1
        ret z

.asm_6096
        ld a, [$db7b]
        cp $1
        jr nz, .asm_60d7
        ld e, $f
        ld d, $0
.asm_60a1
        ld hl, $c3a0
        add hl, de
        ld a, [hl]
        cp $d5
        jr nz, .asm_60b3
        ld hl, $c280
        add hl, de
        ld a, [hl]
        and a
        jr z, .asm_60b3
        ld [hl], d

.asm_60b3
        dec e
        ld a, e
        cp $ff
        jr nz, .asm_60a1
        ld a, $d5
        call Function3b7d
        ld a, [$ff98]
        ld hl, $c200
        add hl, de
        ld [hl], a
        ld a, [$ffa2]
        ld hl, $c310
        add hl, de
        ld [hl], a
        ld a, [$ff99]
        ld hl, $c13b
        add [hl]
        ld hl, $c210
        add hl, de
        ld [hl], a

.asm_60d7
        ld a, [$db79]
        cp $1
        jr z, .asm_6106
        cp $2
        jr nz, .asm_6142
        ld a, [$dba5]
        and a
        jr nz, .asm_6142
        ld a, [$fff6]
        cp $40
        jr c, .asm_6142
        ld a, [$db68]
        and $2
        jr z, .asm_6142
        ld a, [$db43]
        cp $2
        jr c, .asm_60ff
        xor a
        jr .asm_6101

.asm_60ff
        ld a, $1

.asm_6101
        ld [$db79], a
        jr .asm_6142

.asm_6106
        ld e, $f
        ld d, $0
.asm_610a
        ld hl, $c3a0
        add hl, de
        ld a, [hl]
        cp $d4
        jr nz, .asm_611c
        ld hl, $c280
        add hl, de
        ld a, [hl]
        and a
        jr z, .asm_611c
        ld [hl], d

.asm_611c
        dec e
        ld a, e
        cp $ff
        jr nz, .asm_610a
        ld a, $d4
        call Function3b7d
        ld a, [$ff98]
        ld hl, $c200
        add hl, de
        ld [hl], a
        ld a, [$ff99]
        ld hl, $c13b
        add [hl]
        ld hl, $c210
        add hl, de
        ld [hl], a
        ld hl, $c2b0
        add hl, de
        inc [hl]
        ld a, $2d
        ld [$fff2], a

.asm_6142
        ld a, [$db73]
        and a
        jp z, Function61e2
        ld e, $f
        ld d, $0
.asm_614d
        ld hl, $c3a0
        add hl, de
        ld a, [hl]
        cp $c1
        jr nz, .asm_615f
        ld hl, $c280
        add hl, de
        ld a, [hl]
        and a
        jr z, .asm_615f
        ld [hl], d

.asm_615f
        dec e
        ld a, e
        cp $ff
        jr nz, .asm_614d
        ld a, $c1
        call Function3b7d
        ld a, [$ff98]
        ld hl, $c200
        add hl, de
        ld [hl], a
        ld hl, $d155
        call Function61db
        ld a, [$ff99]
        ld hl, $c13b
        add [hl]
        ld hl, $c210
        add hl, de
        ld [hl], a
        ld hl, $d175
        call Function61db
        ld a, [$ffa2]
        ld hl, $c310
        add hl, de
        ld [hl], a
        ld hl, $d195
        call Function61db
        ld hl, $c440
        add hl, de
        ld [hl], $1
        ld hl, $c2f0
        add hl, de
        ld [hl], $c
        ld a, [$fff6]
        cp $a4
        jr nz, .asm_61ba
        ld a, [$fff7]
        cp $11
        jr nz, .asm_61ba
        ld a, $8
        ld [$fff2], a
        ld [$c167], a
        ld hl, $c300
        add hl, de
        ld [hl], $79

.asm_61ba
        ld a, [$ff9e]
        ld hl, $d1b5
        call Function61db
        ld a, [$db10]
        and a
        jr z, .asm_61da
        ld a, [$ff98]
        ld hl, $c200
        add hl, de
        add $20
        ld [hl], a
        ld a, [$ff99]
        ld hl, $c210
        add hl, de
        add $10
        ld [hl], a

.asm_61da
        ret
; 0x61db

Function61db:
        ld c, $10
.asm_61dd
        ld [hli], a
        dec c
        jr nz, .asm_61dd
        ret
; 0x61e2

Function61e2:
        ld a, [$fff6]
        cp $a7
        ret z
        ld a, [$db56]
        cp $1
        jr nz, .asm_6224
        ld e, $f
        ld d, $0
.asm_61f2
        ld hl, $c3a0
        add hl, de
        ld a, [hl]
        cp $6d
        jr nz, .asm_6204
        ld hl, $c280
        add hl, de
        ld a, [hl]
        and a
        jr z, .asm_6204
        ld [hl], d

.asm_6204
        dec e
        ld a, e
        cp $ff
        jr nz, .asm_61f2
        ld a, $6d
        call Function3b7d
        ld a, [$ff98]
        ld hl, $c200
        add hl, de
        ld [hl], a
        ld a, [$ff99]
        ld hl, $c210
        add hl, de
        ld [hl], a
        ld a, [$ffa2]
        ld hl, $c310
        add hl, de
        ld [hl], a

.asm_6224
        ret
; 0x6225

INCBIN "baserom.gbc", $4000*1+$2225, $224d-$2225

Unknown_624d:
INCBIN "baserom.gbc", $4000*1+$224d, $226d-$224d

Function626d:
        ld a, [$c109]
        and $f
        sla a
        ld e, a
        ld d, $0
        ld hl, Unknown_624d
        add hl, de
        ld a, [hli]
        ld h, [hl]
        ld l, a
        ld de, v96d0
        ld bc, $0010
        ld a, $f
        call Function28ff
        ld a, [$c109]
        swap a
        and $f
        sla a
        ld e, a
        ld d, $0
        ld hl, Unknown_624d
        add hl, de
        ld a, [hli]
        ld h, [hl]
        ld l, a
        ld de, v96c0
        ld bc, $0010
        ld a, $f
        call Function28ff
        ld a, $6c
        ld [$9909], a
        inc a
        ld [$990a], a
        ret
; 0x62b1

INCBIN "baserom.gbc", $4000*1+$22b1, $2c6b-$22b1

Function6c6b:
        ld a, [$ffcc]
        and $c
        jr z, .asm_6c77
        push af
        ld a, $a
        ld [$fff2], a
        pop af

.asm_6c77
        ret
; 0x6c78

Function6c78:
        ld a, [$ff92]
        cp $8
        jp c, Function6d3a
        jr nz, .asm_6c89
        call Function6cb3
        ld hl, $ff92
        inc [hl]
        ret

.asm_6c89
        call Function6cad
        xor a
        ld [$ff90], a
        ld [$ff92], a
        ret
; 0x6c92

Unknown_6c92:
        db $0f, $51, $b1, $ef, $ec, $aa, $4a, $0c
Unknown_6c9a:
        db $b1, $b2, $b3, $b4, $b5, $b6, $b7, $b8
Unknown_6ca2:
        db $d0, $d2, $d4, $d6, $d8, $da, $dc, $de
Unknown_6caa:
        db $01, $1f, $01

Function6cad:
        ld c, $8
        ld e, $4
        jr asm_6cb7

Function6cb3:
        ld c, $4
        ld e, $0

asm_6cb7
        ld a, c
        ld [$ffe0], a
        ld d, $0

asm_6cbc
        xor a
        ld [$ffd7], a
        ld [$ffd8], a
        ld [$ffd9], a
        ld [$ffda], a
        ld hl, $db65
        add hl, de
        ld a, [hl]
        bit 1, a
        jp nz, .asm_6ced
        ld c, $0
        ld b, c
        ld hl, Unknown_6c92
        add hl, de
        ld a, [hl]
        ld l, a
        ld h, $9d
        push hl
        ld a, $7c
        ld [$ffd7], a
        ld [$ffd8], a
        ld [$ffd9], a
        ld hl, Unknown_6c9a
        add hl, de
        ld a, [hl]
        ld [$ffda], a
        pop hl
        jr .asm_6d0b

.asm_6ced
        ld c, $0
        ld b, c
        ld hl, Unknown_6c92
        add hl, de
        ld a, [hl]
        ld l, a
        ld h, $9d
        push hl
        ld hl, Unknown_6ca2
        add hl, de
        ld a, [hl]
        ld [$ffd7], a
        inc a
        ld [$ffd8], a
        add $f
        ld [$ffd9], a
        inc a
        ld [$ffda], a
        pop hl

.asm_6d0b
        ld a, [$ffd7]
        ld [hl], a
        call Function6d2c
        ld a, [$ffd8]
        ld [hl], a
        inc c
        call Function6d2c
        ld a, [$ffd9]
        ld [hl], a
        inc c
        call Function6d2c
        ld a, [$ffda]
        ld [hl], a
        inc e
        ld a, e
        ld hl, $ffe0
        cp [hl]
        jp nz, asm_6cbc
        ret
; 0x6d2c

Function6d2c:
        push hl
        ld hl, Unknown_6caa
        add hl, bc
        ld a, [hl]
        pop hl
        add l
        ld l, a
        ld a, h
        adc $0
        ld h, a
        ret
; 0x6d3a

Function6d3a:
        ld c, a
        ld b, $0
        sla c
        rl b
        sla c
        rl b
        sla c
        rl b
        sla c
        rl b
        sla c
        rl b
        sla c
        rl b
        ld hl, $8d00
        add hl, bc
        ld e, l
        ld d, h
        ld hl, $4d00
        add hl, bc
        call Functionc36
        ld a, [$ff92]
        inc a
        ld [$ff92], a
        ret
; 0x6d68


INCBIN "baserom.gbc", $4000*1+$2d68, $2da6-$2d68

Function6da6:
        ld bc, $0400
        ld hl, VBGMap0
.asm_6dac
        ld e, $0
        ld a, l
        and $20
        jr z, .asm_6db4
        inc e

.asm_6db4
        ld d, $ae
        ld a, l
        and $1
        xor e
        jr z, .asm_6dbd
        inc d

.asm_6dbd
        ld a, l
        and $1f
        cp $14
        jr nc, .asm_6dc5
        ld [hl], d

.asm_6dc5
        inc hl
        dec bc
        ld a, b
        or c
        jr nz, .asm_6dac
        ld a, [$fffe]
        and a
        jr z, .asm_6dd3
        call $6dd4

.asm_6dd3
        ret
; 0x6dd4

INCBIN "baserom.gbc", $4000*1+$2dd4, $2df5-$2dd4

Function6df5:
        ld c, $c0
        ld b, $a
        ld hl, Unknown_6e03
.asm_6dfc
        ld a, [hli]
        ld [$ff00+c], a
        inc c
        dec b
        jr nz, .asm_6dfc
        ret
; 0x6e03

Unknown_6e03:

INCBIN "baserom.gbc", $4000*1+$2e03, $4000-$2e03
