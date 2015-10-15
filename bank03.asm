

SECTION "bank3", ROMX, BANK[$3]

; 0xC000

Unknown_c000:

INCBIN "baserom.gbc", 16384*3+$0, $fb-$0

Unknown_c0fb: ; 0x40fb

INCBIN "baserom.gbc", 16384*3+$fb, $1f6-$fb

Unknown_c1f6: ; 0x41f6

INCBIN "baserom.gbc", 16384*3+$1f6, $2f1-$1f6

Unknown_c2f1: ; 0x42f1

INCBIN "baserom.gbc", 16384*3+$2f1, $7bc-$2f1

Unknown_c7bc: ; 0x47bc

INCBIN "baserom.gbc", 16384*3+$7bc, $826-$7bc

Unknown_c826: ; 0x4826

INCBIN "baserom.gbc", 16384*3+$826, $85b-$826

Functionc85b:
        call Function3a01
        ld a, [$fff6]
        ld hl, $c3e0
        add hl, bc
        ld [hl], a
        ld hl, $c460
        add hl, bc
        ld [hl], $ff
        ld hl, $c3a0
        add hl, bc
        ld e, [hl]
        ld d, b
        ld hl, Unknown_c000
        add hl, de
        ld a, [hl]
        ld hl, $c340
        add hl, bc
        ld [hl], a
        ld hl, Unknown_c0fb
        add hl, de
        ld a, [hl]
        ld hl, $c350
        add hl, bc
        ld [hl], a
        call Functionc895
        ld hl, Unknown_c2f1
        add hl, de
        ld a, [hl]
        ld hl, $c430
        add hl, bc
        ld [hl], a
        jp Function3ae1
; 0xc895

Functionc895:
        push de
        ld hl, Unknown_c1f6
        add hl, de
        ld e, [hl]
        ld hl, $c4d0
        add hl, bc
        ld [hl], e
        ld d, b
        ld hl, Unknown_c7bc
        add hl, de
        ld a, [hl]
        ld hl, $c360
        add hl, bc
        ld [hl], a
        pop de
        ret
; 0xc8ad

INCBIN "baserom.gbc", 16384*3+$8ad, $13df-$8ad

Functiond3df:
        ld hl, $fff4
        ld [hl], $5
        ld e, $1f
        ld a, [$fff1]
        cp $ff
        jr z, .asm_d3f4
        cp $1
        jr z, .asm_d3f4
        ld [hl], $9
        ld e, $f

.asm_d3f4
        ld hl, $c2f0
        add hl, bc
        ld [hl], e
        ld hl, $c340
        add hl, bc
        inc [hl]
        inc [hl]
        ret
; 0xd400

Functiond400:
        ld a, $5
        call Functione4c6
        ret c
        ld a, [$ffd7]
        ld hl, $c200
        add hl, de
        ld [hl], a
        ld a, [$ffd8]
        ld hl, $ffda
        sub [hl]
        ld hl, $c210
        add hl, de
        ld [hl], a
        ld hl, $c3b0
        add hl, de
        ld [hl], $0
        ld hl, $c2f0
        add hl, de
        ld [hl], $f
        ld hl, $c340
        add hl, de
        ld [hl], $c4
        ld a, $9
        ld [$fff4], a
        jp Function3f84
; 0xd431


INCBIN "baserom.gbc", 16384*3+$1431, $1593-$1431

Unknown_d593: ; 0x5593

INCBIN "baserom.gbc", 16384*3+$1593, $15a1-$1593

Unknown_d5a1: ; 0x55a1

INCBIN "baserom.gbc", 16384*3+$15a1, $15af-$15a1

Unknown_d5af: ; 0x55af

INCBIN "baserom.gbc", 16384*3+$15af, $15be-$15af

Unknown_d5be: ; 0x55be

INCBIN "baserom.gbc", 16384*3+$15be, $15c6-$15be

Functiond5c6:
        ld a, [$ffeb]
        cp $23
        jr nz, .asm_d5d9
        ld hl, $c2b0
        add hl, bc
        ld a, [hl]
        and a
        jr z, .asm_d5d9
        ld a, $31
        jp asm_d667

.asm_d5d9
        ld hl, $c4e0
        add hl, bc
        ld a, [hl]
        cp $ff
        ret z
        and a
        jp nz, asm_d667
        ld a, [wd471]
        inc a
        ld [wd471], a
        cp $c
        jr c, .asm_d606
        xor a
        ld [wd471], a
        ld a, [$c1be]
        ld hl, wd47c
        or [hl]
        ld hl, $fff9
        or [hl]
        jr nz, .asm_d606
        ld a, $34
        jp asm_d667

.asm_d606
        ld hl, $c4d0
        add hl, bc
        ld d, b
        ld e, [hl]
        ld hl, Unknown_c826
        add hl, de
        ld a, [hl]
        and a
        ret z
        ld e, a
        ld d, $1e
        ld a, [$db5b]
        cp $7
        jr c, .asm_d625
        ld d, $23
        cp $b
        jr c, .asm_d625
        ld d, $28

.asm_d625
        ld hl, $d415
        inc [hl]
        ld a, [hl]
        cp d
        jr c, .asm_d63f
        ld [hl], b
        ld a, [$c1be]
        ld hl, $fff9
        or [hl]
        ld hl, wd47c
        or [hl]
        jr nz, .asm_d63f
        ld a, $33
        jr asm_d667

.asm_d63f
        ld d, b
        ld hl, Unknown_d5a1
        ld a, [$c163]
        and a
        jr z, .asm_d64c
        ld hl, Unknown_d5af

.asm_d64c
        add hl, de
        call Function2804
        and [hl]
        ret nz
        ld hl, Unknown_d593
        add hl, de
        ld a, [hl]
        cp $ff
        jr nz, asm_d667
        call Function2804
        and $7
        ld e, a
        ld d, b
        ld hl, Unknown_d5be
        add hl, de
        ld a, [hl]

asm_d667
        call Functione4c6
        ret c
        ld hl, $c2b0
        add hl, bc
        ld a, [hl]
        ld hl, $c2b0
        add hl, de
        ld [hl], a
        ld a, [$ffd7]
        ld hl, $c200
        add hl, de
        ld [hl], a
        ld a, [$ffd8]
        ld hl, $c210
        add hl, de
        ld [hl], a
        ld hl, $c450
        add hl, de
        ld [hl], $80
        ld hl, $c2f0
        add hl, de
        ld [hl], $18
        ld hl, $c480
        add hl, de
        ld [hl], $3
        ld a, [$fff9]
        and a
        jr nz, .asm_d6d0
        ld hl, $c3a0
        add hl, de
        ld a, [hl]
        cp $30
        jr nz, .asm_d6af
        ld a, [$ffeb]
        cp $88
        jr nz, .asm_d6af
        ld hl, $c3b0
        add hl, de
        ld [hl], $3

.asm_d6af
        cp $3c
        jr nz, .asm_d6c8
        ld a, [$fff6]
        cp $58
        jr z, .asm_d6bd
        cp $5a
        jr nz, .asm_d6c8

.asm_d6bd
        push bc
        push de
        ld c, e
        ld b, d
        ld a, $10
        call Functionfec0
        pop de
        pop bc

.asm_d6c8
        ld hl, $c320
        add hl, de
        ld [hl], $18
        jr .asm_d6d6

.asm_d6d0
        ld hl, $c250
        add hl, de
        ld [hl], $ec

.asm_d6d6
        ld hl, $c310
        add hl, bc
        ld a, [hl]
        ld hl, $c310
        add hl, de
        ld [hl], a
        ret
; 0xd6e1

INCBIN "baserom.gbc", 16384*3+$16e1, $16e8-$16e1

Unknown_d6e8:
    db $0a, $37, $37, $37, $01, $39, $39, $39, $01, $3b, $3b, $3b, $01, $3d, $3d, $3d
Unknown_d6f8:
    db $01, $10, $10, $08, $00, $f0, $f0, $f8, $00, $00, $00, $00, $00, $ff, $ff, $ff
Unknown_d708:
    db $ff, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $08
Unknown_d718:
INCBIN "baserom.gbc", 16384*3+$1718, $178c-$1718

Functiond78c:
        ld a, [$ff9e]
        sla a
        sla a
        add e
        ld e, a
        ld d, $0
        ld hl, Unknown_d6e8
        add hl, de
        ld a, [hl]
        ld [$c15c], a
        ld hl, Unknown_d6f8
        add hl, de
        ld a, [hl]
        ld hl, $ff98
        add [hl]
        ld hl, $c200
        add hl, bc
        ld [hl], a
        ld hl, Unknown_d708
        add hl, de
        ld a, [hl]
        ld hl, $ff99
        add [hl]
        ld hl, $c13b
        add [hl]
        ld hl, $c210
        add hl, bc
        ld [hl], a
        ld a, [$fff9]
        and a
        jr z, .asm_d7ce
        push hl
        ld hl, Unknown_d718
        add hl, de
        ld e, [hl]
        pop hl
        ld a, [hl]
        sub e
        ld [hl], a
        ret

.asm_d7ce
        ld hl, Unknown_d718
        add hl, de
        ld a, [hl]
        ld hl, $ffa2
        add [hl]
        ld hl, $c310
        add hl, bc
        ld [hl], a
        ret
; 0xd7dd

INCBIN "baserom.gbc", 16384*3+$17dd, $246e-$17dd


Functione46e:
        ld hl, $db00
        ld e, $c
.asm_e473
        ld a, [hli]
        cp d
        jr z, .asm_e48a
        dec e
        jr nz, .asm_e473
        ld hl, $db00
.asm_e47d
        ld a, [hl]
        and a
        jr nz, .asm_e483
        ld [hl], d
        ret

.asm_e483
        inc hl
        inc e
        ld a, e
        cp $c
        jr nz, .asm_e47d

.asm_e48a
        ret
; 0xe48b


INCBIN "baserom.gbc", 16384*3+$248b, $24c6-$248b


Functione4c6:
        ld e, $f

Functione4c8:
        push af
        ld d, $0
.asm_e4cb
        ld hl, $c280
        add hl, de
        ld a, [hl]
        and a
        jr z, .asm_e4dc
        dec e
        ld a, e
        cp $ff
        jr nz, .asm_e4cb
        pop af
        scf
        ret

.asm_e4dc
        ld [hl], $5
        pop af
        ld hl, $c3a0
        add hl, de
        ld [hl], a
        ld hl, $c200
        add hl, bc
        ld a, [hl]
        ld [$ffd7], a
        ld hl, $c210
        add hl, bc
        ld a, [hl]
        ld [$ffd8], a
        ld hl, $c380
        add hl, bc
        ld a, [hl]
        ld [$ffd9], a
        ld hl, $c310
        add hl, bc
        ld a, [hl]
        ld [$ffda], a
        call Functione520
        ld hl, $c410
        add hl, de
        ld [hl], $1
        ld hl, $c220
        add hl, bc
        ld a, [hl]
        ld hl, $c220
        add hl, de
        ld [hl], a
        ld hl, $c230
        add hl, bc
        ld a, [hl]
        ld hl, $c230
        add hl, de
        ld [hl], a
        scf
        ccf
        ret
; 0xe520

Functione520:
        push bc
        push de
        ld c, e
        ld b, d
        call Functionc85b
        pop de
        pop bc
        ret
; 0xe52a

INCBIN "baserom.gbc", 16384*3+$252a, $2bcb-$252a

Unknown_ebcb: ; 0x6bcb

INCBIN "baserom.gbc", 16384*3+$2bcb, $2bcf-$2bcb

Unknown_ebcf: ; 0x6bcf

INCBIN "baserom.gbc", 16384*3+$2bcf, $2bd3-$2bcf

Functionebd3:
        ld a, [$c11c]
        cp $2
        jr nc, asm_ec4f
        ld a, [$ffa2]
        and a
        jr nz, asm_ec4f
        ld hl, $ffee
        ld a, [$ff98]
        sub [hl]
        add $6
        cp $c
        jr nc, asm_ec4f
        ld hl, $ffec
        ld a, [$ff99]
        sub [hl]
        add $6
        cp $c
        jr nc, asm_ec4f
        ld a, [$c15b]
        and a
        jr z, asm_ec50
        ld a, [$ffeb]
        cp $2b
        jr nz, .asm_ec36
        ld a, [$db44]
        cp $2
        jr c, asm_ec50
        ld a, [$ff9e]
        ld e, a
        ld d, b
        ld hl, Unknown_ebcf
        add hl, de
        ld e, [hl]
        ld hl, $c380
        add hl, bc
        ld a, [hl]
        sub e
        and $f
        cp $5
        jr nc, asm_ec50
        ld hl, $c2a0
        add hl, bc
        ld [hl], $2
        ld a, $7
        ld [$fff2], a
        ld a, [$ffef]
        ld [$ffd8], a
        ld a, [$ffee]
        ld [$ffd7], a
        ld a, $5
        jp Functioncc3

.asm_ec36
        ld hl, $c380
        add hl, bc
        ld e, [hl]
        ld d, b
        ld hl, Unknown_ebcb
        add hl, de
        ld a, [$ff9e]
        cp [hl]
        jr nz, asm_ec50
        ld a, $16
        ld [$fff2], a
asm_ec49
        ld hl, $c2a0
        add hl, bc
        ld [hl], $ff

asm_ec4f
        ret

asm_ec50
        call asm_ecb5
        ld a, [$ffeb]
        cp $2b
        jr z, .asm_ec5d
        cp $c
        jr nz, asm_ec49

.asm_ec5d
        jp $3f84
; 0xec60

Functionec60:
        ld a, [$ffe7]
        xor c
        rra
        jp nc, Functionecc0
        ld a, [$ffa2]
        and a
        jr nz, asm_ec4f ; 0xec6a $e3

Functionec6c:
        ld a, [$c11c]
        cp $2
        jr nc, asm_ec4f ; 0xec71 $dc
        push bc
        sla c
        sla c
        ld hl, $d580
        add hl, bc
        pop bc
        ld a, [$ffee]
        add [hl]
        push hl
        ld hl, $ff98
        sub [hl]
        sub $8
        cp $80
        jr c, .asm_ec8d
        cpl
        inc a

.asm_ec8d
        pop hl
        push af
        inc hl
        ld a, $4
        add [hl]
        ld e, a
        pop af
        cp e
        jp nc, Functionecc0
        inc hl
        ld a, [$ffec]
        add [hl]
        push hl
        ld hl, $ff99
        sub [hl]
        sub $8
        cp $80
        jr c, .asm_ecaa
        cpl
        inc a

.asm_ecaa
        pop hl
        push af
        inc hl
        ld a, $4
        add [hl]
        ld e, a
        pop af
        cp e
        jr nc, Functionecc0

asm_ecb5
        ld hl, $c340
        add hl, bc
        ld a, [hl]
        and $80
        jr z, Functionecc2
asm_ecbe
        scf
        ret

Functionecc0:
        and a
        ret

Functionecc2:
        ld a, [$ff9d]
        sub $4e
        cp $2
        jr c, asm_ecbe ; 0xecc8 $f4
        ld a, [$ffeb]
        cp $ac
        jr nz, .asm_ecee
        call Functionfee2
        ld a, e
        cp $2
        jr nz, .asm_ed32
        call Function3b09
        ld [hl], $5
        ld a, $2
        ld [$c146], a
        ld a, $f0
        ld [$ff9b], a
        call Function3d76
        ld a, $e
        ld [$fff3], a
        ret

.asm_ecee
        ld a, [$ffeb]
        cp $9f
        jr nz, .asm_ed32
        ld a, [$c146]
        and a
        jr z, .asm_ed32
        ld a, [$ffb7]
        and a
        jr nz, .asm_ed10
        ld a, [$fff9]
        and a
        jr nz, .asm_ed0a
        ld a, [$ffa3]
        xor $80
        jr .asm_ed0c

.asm_ed0a
        ld a, [$ff9b]

.asm_ed0c
        and $80
        jr nz, .asm_ed32

.asm_ed10
        ld a, $2
        ld [$ffb7], a
        ld hl, $c290
        add hl, bc
        ld [hl], $2
        call $0c01
        ld [hl], $30
        ld a, $e
        ld [$fff3], a
        ld a, [$fff9]
        and a
        jr nz, .asm_ed2d
        ld a, $10
        ld [$ffa3], a
        ret

.asm_ed2d
        ld a, $f0
        ld [$ff9b], a
        ret

.asm_ed32
        ld a, [$ffeb]
        cp $1c
        jr nz, .asm_ed43
        call $0c01
        ld [hl], $80
        call $3b09
        ld [hl], $4
        ret

.asm_ed43
        cp $8e
        jr z, .asm_ed52
        cp $82
        jr z, .asm_ed52
        ld a, [$c13e]
        and a
        jp nz, $6dff

.asm_ed52
        ld a, [$ffeb]
        cp $e4
        jr nz, .asm_ed68
        ld a, [$fff0]
        cp $4
        jr nz, .asm_ed68
        call $3b09
        ld [hl], $8
        ld a, $3
        ld [$fff3], a
        ret

.asm_ed68
        ld a, [$dbc7]
        ld hl, $c1c6
        or [hl]
        ld hl, $c166
        or [hl]
        ld hl, $c1a9
        or [hl]
        jp nz, $6dff
        ld a, $3
        ld [$fff3], a
        ld hl, $c4d0
        add hl, bc
        ld d, b
        ld e, [hl]
        ld hl, $47f1
        add hl, de
        ld e, [hl]
        ld a, [$dc0f]
        cp $2
        jr z, .asm_ed9e
        ld a, [wd47c]
        cp $2
        jr nz, .asm_eda0
        ld a, e
        cp $4
        jr nz, .asm_ed9e
        ld e, $0

.asm_ed9e
        srl e

.asm_eda0
        ld a, [$db94]
        add e
        ld [$db94], a
        ld a, $50
        ld [$dbc7], a
        xor a
        ld [wd471], a
        ld a, [wd47c]
        and a
        jr z, .asm_edd4
        ld hl, wd47a
        inc [hl]
        ld a, [hl]
        cp $3
        jr c, .asm_edd4
        xor a
        ld [wd47c], a
        ld a, [$c1be]
        and a
        jr nz, .asm_edd4
        ld a, [$ffb0]
        cp $22
        jr z, .asm_edd2
        ld [$d368], a

.asm_edd2
        ld [$ffbf], a

.asm_edd4
        call $0cb2
        ld a, $10
        ld [$c13e], a
        ld a, [$ffeb]
        ld e, $18
        cp $82
        jp z, $6f9c
        cp $5a
        jr nz, .asm_edef
        ld hl, $c2a0
        add hl, bc
        ld [hl], $1

.asm_edef
        cp $59
        ld a, $14
        jr nz, .asm_edf7
        ld a, $18

.asm_edf7
        call $755b
        ld a, [$fff9]
        and a
        jr nz, asm_ee03
asm_edff
        scf
        ret

Unknown_ee01:
        db $0c, $f4

asm_ee03
        ld a, [$ff9c]
        cp $2
        jr z, asm_edff ; 0xee07 $f6
        call $7ed2
        ld d, b
        ld hl, Unknown_ee01
        add hl, de
        ld a, [hl]
        ld [$ff9a], a
        ld a, $f4
        ld [$ff9b], a
        xor a
        ld [$ff9c], a
        scf
        ret
; 0xee1d

Functionee1d:
        call Functionec60

Functionee20:
        ld a, [$c140]
        cp $0
        jp z, $73de
        ld hl, $c420
        add hl, bc
        ld a, [hl]
        and a
        jr z, .asm_ee35
        cp $18
        jp c, $73de

.asm_ee35
        ld a, [$c1ac]
        and a
        jr z, .asm_ee40
        dec a
        cp c
        jp z, $73de

.asm_ee40
        ld hl, $c410
        add hl, bc
        ld a, [hl]
        and a
        jp nz, $73de
        ld de, $ffee
        push bc
        sla c
        sla c
        ld hl, $d580
        add hl, bc
        pop bc
        ld a, [de]
        add [hl]
        push hl
        ld hl, $c140
        sub [hl]
        cp $80
        jr c, .asm_ee63
        cpl
        inc a

.asm_ee63
        pop hl
        push af
        inc hl
        ld a, [$c141]
        add [hl]
        ld e, a
        pop af
        cp e
        jp nc, $73de
        inc hl
        push hl
        ld de, $ffec
        pop hl
        ld a, [de]
        add [hl]
        push hl
        ld hl, $c142
        sub [hl]
        cp $80
        jr c, .asm_ee83
        cpl
        inc a

.asm_ee83
        pop hl
        push af
        inc hl
        ld a, [$c143]
        add [hl]
        ld e, a
        pop af
        cp e
        jp nc, $73de
        ld hl, $c340
        add hl, bc
        ld a, [hl]
        and $20
        jp nz, $630d
        ld a, [$c5b0]
        and a
        jp nz, $6fdd
        ld a, [$c14a]
        ld [$ffe9], a
        call $0cb2
        ld a, [$ffeb]
        cp $e2
        jr nz, .asm_eec6
        ld a, [$db44]
        cp $2
        ret nz
        ld a, [$ff9e]
        cp $2
        ret nz
        ld a, $4
        ld [$ff9b], a
        ld a, $8
        ld [$c13e], a
        jp $3b09

.asm_eec6
        cp $55
        jr nz, .asm_eeec
        ld a, [$fff0]
        cp $2
        jp nz, $6f88
        ld hl, $c240
        add hl, bc
        ld a, [hl]
        cpl
        inc a
        ld [hl], a
        ld hl, $c250
        add hl, bc
        ld a, [hl]
        cpl
        inc a
        ld [hl], a
        call $0c01
        ld [hl], $40
        call $0bfc
        ld [hl], $8
        ret

.asm_eeec
        cp $51
        jr nz, .asm_ef15
        ld hl, $c430
        add hl, bc
        and $40
        jp z, $6f88
        ld hl, $c2b0
        add hl, bc
        ld a, [hl]
        cpl
        inc a
        ld [hl], a
        call $6f51
        call $0bfc
        ld [hl], $c
        ld a, $1
        ld [$c160], a
        xor a
        ld [$c122], a
        jp $712e

.asm_ef15
        cp $58
        jr nz, .asm_ef1f
        call $6f88
        jp $6c49

.asm_ef1f
        cp $2c
        jr nz, .asm_ef62
        ld hl, $c290
        add hl, bc
        ld a, [hl]
        cp $3
        jr z, .asm_ef51
        ld [hl], $3
        ld hl, $c320
        add hl, bc
        ld [hl], $20
        call $0c01
        ld [hl], $ff
        ld a, [$ff9e]
        ld e, a
        ld d, b
        ld hl, .data_ef5a
        add hl, de
        ld a, [hl]
        ld hl, $c240
        add hl, bc
        ld [hl], a
        ld hl, .data_ef5e
        add hl, de
        ld a, [hl]
        ld hl, $c250
        add hl, bc
        ld [hl], a

.asm_ef51
        call $6f88
        ld hl, $c410
        add hl, bc
        ld [hl], b
        ret

.data_ef5a
        db $10
        db $f0
        db $0
        db $0
.data_ef5e
        db $0
        db $0
        db $f0
        db $10

.asm_ef62
        cp $9c
        jr z, .asm_ef6a
        cp $15
        jr nz, .asm_ef83

.asm_ef6a
        ld a, [$ff9e]
        and $2
        jr nz, .asm_ef76
        ld hl, $c240
        add hl, bc
        jr .asm_ef7a

.asm_ef76
        ld hl, $c250
        add hl, bc

.asm_ef7a
        ld a, [hl]
        cpl
        inc a
        ld [hl], a
        call $6f88
        ld [hl], b
        ret

.asm_ef83
        cp $5a
        jp z, $6f19
        ld a, $9
        ld [$fff2], a
        call $0cb2
        ld a, $c
        ld [$c13e], a
        ld a, [$ffeb]
        cp $82
        jr nz, .asm_efae
        ld e, $10
        push de
        call $7ed2
        ld a, e
        and a
        pop de
        ld a, e
        jr z, .asm_efa8
        cpl
        inc a

.asm_efa8
        ld [$ff9a], a
        xor a
        ld [$ff9b], a
        ret

.asm_efae
        ld a, $12
        call $755b
        ld hl, $ffe9
        ld a, [$ffcb]
        and $f
        ld a, $8
        or [hl]
        jr z, .asm_efc1
        ld a, $20

.asm_efc1
        call $7e3e
        ld a, [$ffd7]
        cpl
        inc a
        ld hl, $c400
        add hl, bc
        ld [hl], a
        ld a, [$ffd8]
        cpl
        inc a
        ld hl, $c3f0
        add hl, bc
        ld [hl], a
        jp $73d3
; 0xefd9

INCBIN "baserom.gbc", 16384*3+$2fd9, $33e3-$2fd9

Functionf3e3:
        ld hl, $c1ac
        ld a, [$c13e]
        or [hl]
        ld hl, $ffb6
        or [hl]
        ld hl, $c121
        or [hl]
        jp nz, $74d7
        ld a, [$c140]
        cp $0
        jp z, $74d7
        ld hl, $c380
        add hl, bc
        ld a, [$ff9e]
        cp [hl]
        jp z, $74d7
        ld de, $ffee
        ld hl, $d5c0
        ld a, [de]
        add [hl]
        push hl
        ld hl, $c140
        sub [hl]
        cp $80
        jr c, .asm_f41a
        cpl
        inc a

.asm_f41a
        pop hl
        push af
        inc hl
        ld a, [$c141]
        add [hl]
        ld e, a
        pop af
        cp e
        jp nc, $74d7
        inc hl
        ld de, $ffec
        ld a, [de]
        add [hl]
        push hl
        ld hl, $c142
        sub [hl]
        cp $80
        jr c, .asm_f438
        cpl
        inc a

.asm_f438
        pop hl
        push af
        inc hl
        ld a, [$c143]
        add [hl]
        ld e, a
        pop af
        cp e
        jp nc, $74d7
        call $0cb2
        ld a, $8
        ld [$c13e], a
        ld a, $12
        call $755b
        ld a, $18
        call $7e3e
        ld a, [$ffd7]
        cpl
        inc a
        ld hl, $c400
        add hl, bc
        ld [hl], a
        ld a, [$ffd8]
        cpl
        inc a
        ld hl, $c3f0
        add hl, bc
        ld [hl], a
        call $73d3
        ld [hl], $8
        xor a
        ld [$c122], a
        call $0c4c
        ld hl, $c121
        ld a, [$c16a]
        or [hl]
        jr z, .asm_f483
        ld a, $c
        ld [$c16d], a

.asm_f483
        ld a, [$ffeb]
        cp $be
        jr nz, .asm_f4b7
        ld a, $9
        ld [$fff2], a
        ld a, [$d205]
        cp $0
        jr z, .asm_f4b5
        cp $1
        jr z, .asm_f4ab
        cp $4
        jr z, .asm_f4ab
        cp $3
        jp z, $7567
        ld a, $20
        ld [$c13e], a
        call $755b
        jr .asm_f4d2

.asm_f4ab
        ld a, $10
        ld [$c13e], a
        ld a, $20
        call $755b

.asm_f4b5
        jr .asm_f4d2

.asm_f4b7
        ld a, [$ff9e]
        ld e, a
        ld d, b
        ld hl, $74da
        add hl, de
        ld a, [$c140]
        add [hl]
        ld [$ffd7], a
        ld hl, $74de
        add hl, de
        ld a, [$c142]
        add [hl]
        ld [$ffd8], a
        call $0d11

.asm_f4d2
        ld a, $c
        ld [$ffb6], a
        ret
; 0xf4d7

INCBIN "baserom.gbc", 16384*3+$34d7, $3598-$34d7

Functionf598:
        ld e, $f
        ld d, $0

Functionf59c:
        ld a, e
        cp c
        jp z, asm_f795
        ld a, [$ffe7]
        xor e
        and $1
        jp nz, asm_f795
        ld hl, $c280
        add hl, de
        ld a, [hl]
        cp $5
        jp c, asm_f795
        ld hl, $c340
        add hl, de
        ld a, [hl]
        and $40
        jp nz, asm_f795
        ld hl, $c200
        add hl, de
        ld a, [$ffee]
        sub [hl]
        add $c
        cp $18
        jp nc, asm_f795
        ld hl, $c210
        add hl, de
        ld a, [hl]
        ld hl, $c310
        add hl, de
        sub [hl]
        ld hl, $ffec
        sub [hl]
        add $c
        cp $18
        jp nc, asm_f795
        ld hl, $c3b0
        add hl, de
        ld a, [hl]
        cp $ff
        jp z, asm_f795
        ld a, [$ffeb]
        cp $55
        jr nz, .asm_f5f4
        call $0c01
        ld [hl], b

.asm_f5f4
        ld hl, $c3a0
        add hl, de
        ld a, [hl]
        cp $55
        jr nz, .asm_f626
        ld hl, $c240
        add hl, bc
        ld a, [hl]
        ld hl, $c240
        add hl, de
        ld [hl], a
        ld hl, $c250
        add hl, bc
        ld a, [hl]
        ld hl, $c250
        add hl, de
        ld [hl], a
        ld hl, $c2e0
        add hl, de
        ld [hl], $40
        ld hl, $c290
        add hl, de
        ld [hl], $2
        ld hl, $c2f0
        add hl, de
        ld [hl], $8
        jp asm_f795

.asm_f626
        ld hl, $c340
        add hl, de
        ld a, [hl]
        and $20
        jp nz, $770b
        ld a, [$ffeb]
        cp $8
        jr z, .asm_f65e
        ld hl, $c3a0
        add hl, de
        ld a, [hl]
        cp $e6
        jr nz, .asm_f64c
        ld a, [$d219]
        cp $5
        jr nz, .asm_f64c
        ld a, [$fff1]
        cp $2
        jr nz, .asm_f655

.asm_f64c
        ld hl, $c350
        add hl, de
        ld a, [hl]
        and $80
        jr z, .asm_f65e

.asm_f655
        ld hl, $c2a0
        add hl, bc
        ld [hl], $1
        jp $772d

.asm_f65e
        ld a, [$ffeb]
        cp $8
        jr nz, .asm_f6a2
        ld hl, $c3a0
        add hl, de
        ld a, [hl]
        cp $ca
        jr nz, .asm_f676
        ld hl, $c290
        add hl, de
        ld a, [hl]
        and a
        jr nz, .asm_f6a2
        inc [hl]

.asm_f676
        cp $3f
        jr nz, .asm_f6a2
        ld a, [$dba5]
        and a
        jr nz, .asm_f6a2
        ld hl, $c290
        add hl, de
        ld a, [hl]
        and a
        jr nz, .asm_f6a2
        inc [hl]
        ld hl, $c450
        add hl, de
        ld [hl], $7f
        ld hl, $c420
        add hl, de
        ld [hl], $10
        ld a, $3
        ld [$dbaf], a
        call $27e9
        ld a, $18
        ld [$dbaf], a

.asm_f6a2
        ld hl, $c350
        add hl, de
        ld a, [hl]
        and $80
        jp nz, asm_f795
        ld hl, $c410
        add hl, de
        ld a, [hl]
        and a
        jp nz, asm_f795
        ld hl, $c3a0
        add hl, de
        ld a, [hl]
        cp $24
        jr nz, .asm_f706
        ld hl, $c380
        add hl, de
        ld a, [hl]
        xor $1
        ld hl, $c380
        add hl, bc
        cp [hl]
        jr nz, .asm_f706
        ld hl, $c2c0
        add hl, de
        ld a, [hl]
        and a
        jr nz, .asm_f706
        ld a, [$ffeb]
        cp $3
        jp nz, $7655
        ld [hl], $1
        push de
        ld a, $32
        call Functione4c6
        jr c, .asm_f703
        ld a, [$ffd7]
        ld hl, $c200
        add hl, de
        ld [hl], a
        ld a, [$ffd8]
        ld hl, $c210
        add hl, de
        ld [hl], a
        ld hl, $c390
        add hl, de
        ld a, c
        inc a
        ld [hl], a
        ld a, [$ffd9]
        and $1
        ld hl, $c3b0
        add hl, de
        ld [hl], a

.asm_f703
        pop de
        jr .asm_f72d

.asm_f706
        call $779d
        jr .asm_f72d

        ld a, [$ffeb]
        cp $1
        jr z, .asm_f715
        cp $3
        jr nz, .asm_f72a

.asm_f715
        call $0c01
        xor a
        ld [hl], a
        ld hl, $c340
        add hl, de
        ld a, [hl]
        and $20
        jr z, .asm_f72d
        ld a, c
        inc a
        ld hl, $c390
        add hl, de
        ld [hl], a

.asm_f72a
        jp asm_f795

.asm_f72d
        ld a, [$ffeb]
        cp $a8
        jr z, .asm_f750
        cp $1
        jr z, .asm_f790
        cp $3
        jr z, .asm_f790
        cp $5
        jr nz, .asm_f747
        push de
        call $53df
        pop de
        jp asm_f795

.asm_f747
        ld hl, $c280
        add hl, bc
        ld a, [hl]
        cp $8
        jr nz, .asm_f778

.asm_f750
        ld hl, $c480
        add hl, bc
        ld a, [hl]
        and a
        jr nz, asm_f795
        ld [hl], $c
        ld hl, $c240
        add hl, bc
        sra [hl]
        sra [hl]
        ld a, [hl]
        cpl
        ld [hl], a
        ld hl, $c250
        add hl, bc
        sra [hl]
        sra [hl]
        ld a, [hl]
        cpl
        ld [hl], a
        ld hl, $c5d0
        add hl, bc
        ld [hl], $ff
        jr .asm_f790

.asm_f778
        ld hl, $c2a0
        add hl, bc
        ld a, [hl]
        and a
        jr nz, .asm_f790
        ld a, [$ffeb]
        cp $0
        jr nz, .asm_f78b
        ld a, [$fff0]
        and a
        jr nz, .asm_f78e

.asm_f78b
        call Function3f84

.asm_f78e
        jr asm_f795

.asm_f790
        call Functionc01
        xor a
        ld [hl], a

asm_f795
        dec e
        ld a, e
        cp $ff
        jp nz, Functionf59c
        ret
; 0xf79d

INCBIN "baserom.gbc", 16384*3+$379d, $3855-$379d

Unknown_f855:
INCBIN "baserom.gbc", 16384*3+$3855, $3865-$3855

Unknown_f865:
INCBIN "baserom.gbc", 16384*3+$3865, $3875-$3865

Unknown_f875:
INCBIN "baserom.gbc", 16384*3+$3875, $3879-$3875

Unknown_f879:
    db $00, $00, $ff, $01, $01, $ff, $01, $ff
Unknown_f881:
    db $01, $ff, $00, $00, $01, $01, $ff, $ff

Functionf889:
        ld hl, $c470
        add hl, bc
        ld a, [hl]
        ld [$ffd7], a
        xor a
        ld [hl], a
        ld [$ffd8], a
        ld [$c503], a
        ld [$c50d], a
        ld hl, $c310
        add hl, bc
        ld a, [hl]
        bit 7, a
        jr nz, .asm_f8a7
        and a
        jp nz, asm_fa0e

.asm_f8a7
        ld hl, $c4f0
        add hl, bc
        ld [hl], b
        ld hl, $c430
        add hl, bc
        ld a, [hl]
        bit 4, a
        jp nz, asm_fa0e
        call Functionfe07
        jr .asm_f8d9

.asm_f8bb
        ld e, $2
        ld a, [$ffeb]
        cp $cc
        jr z, .asm_f8fd
        cp $a0
        jr z, .asm_f8fd
        cp $d5
        jr z, .asm_f8fd
        cp $6d
        jr z, .asm_f8fd
        cp $c1
        jr z, .asm_f8fd
        call Function3f84
        jp .asm_f952

.asm_f8d9
        ld e, $1
        ld a, [$ffaf]
        cp $67
        jr z, .asm_f8fd
        ld a, [$ffda]
        and a
        jp z, asm_fa0e
        cp $b
        jr z, .asm_f8bb
        cp $7
        jr z, .asm_f8bb
        cp $b0
        jr z, .asm_f8fd
        inc e
        cp $5
        jr z, .asm_f8fd
        cp $6
        jr nz, .asm_f902
        inc e

.asm_f8fd
        ld hl, $c470
        add hl, bc
        ld [hl], e

.asm_f902
        ld hl, $c430
        add hl, bc
        ld a, [hl]
        and $8
        jr z, .asm_f969
        ld hl, $c470
        add hl, bc
        ld a, [$ffd7]
        cp [hl]
        jr z, .asm_f969
        ld a, [hl]
        cp $3
        jr z, .asm_f969
        ld a, [$ffd7]
        cp $3
        jr z, .asm_f969
        ld a, [$fff9]
        and a
        jr nz, .asm_f933
        ld hl, $c320
        add hl, bc
        ld a, [hl]
        bit 7, a
        jr z, .asm_f969
        cp $e7
        jr nc, .asm_f969
        jr .asm_f94a

.asm_f933
        ld a, [$ffeb]
        cp $ac
        jr z, .asm_f94a
        ld hl, $c250
        add hl, bc
        ld a, [hl]
        bit 7, a
        jr nz, .asm_f94a
        ld [hl], $0
        ld hl, $c240
        add hl, bc
        sra [hl]

.asm_f94a
        ld hl, $c480
        add hl, bc
        ld a, [hl]
        and a
        jr nz, .asm_f969

.asm_f952
        ld hl, $c200
        add hl, bc
        ld a, [hl]
        ld [$ffd7], a
        ld hl, $c210
        add hl, bc
        ld a, [hl]
        ld [$ffd8], a
        ld a, $e
        ld [$fff2], a
        ld a, $1
        call Functioncc3

.asm_f969
        ld a, [$ffda]
        inc a
        cp $f1
        jr c, .asm_f992
        sub $f1
        ld e, a
        ld d, b
        ld a, [$ffe7]
        and $3
        jr nz, .asm_f990
        ld hl, Unknown_f879
        add hl, de
        ld a, [hl]
        ld hl, $c200
        add hl, bc
        add [hl]
        ld [hl], a
        ld hl, Unknown_f881
        add hl, de
        ld a, [hl]
        ld hl, $c210
        add hl, bc
        add [hl]
        ld [hl], a

.asm_f990
        jr asm_fa0e

.asm_f992
        ld a, [$ffaf]
        cp $61
        jr z, .asm_f9a2
        ld a, [$ffda]
        cp $50
        jr z, .asm_f9a2
        cp $51
        jr nz, asm_fa0e

.asm_f9a2
        ld a, [$ffeb]
        cp $6d
        jr z, asm_fa0e
        cp $d5
        jr z, asm_fa0e
        cp $36
        jr z, asm_fa0e
        cp $c1
        jr nz, .asm_f9c1
        ld a, [$c11c]
        cp $6
        jr nz, asm_fa0e
        ld a, [$ffaf]
        cp $61
        jr nz, asm_fa0e

.asm_f9c1
        ld hl, $c410
        add hl, bc
        ld a, [hl]
        and a
        jr z, asm_fa0e
        dec [hl]
        ld hl, $c420
        add hl, bc
        ld [hl], $0
        ld hl, $c280
        add hl, bc
        ld [hl], $2
        ld a, [$ffce]
        add $8
        ld hl, $c4b0
        add hl, bc
        ld [hl], a
        ld a, [$ffcd]
        add $10
        ld hl, $c4c0
        add hl, bc
        ld [hl], a
        call Functionc01
        ld [hl], $6f
        ld a, [$ffeb]
        cp $14
        jr z, asm_fa0e
        cp $b
        jr z, asm_fa0e
        cp $9
        jr z, asm_fa0e
        ld [hl], $48
        ld hl, $c410
        add hl, bc
        ld a, [hl]
        and a
        jr nz, asm_fa0e
        call Functionc01
        ld [hl], $2f
        ld a, $18
        ld [$fff2], a

asm_fa0e
        ld a, [$ffeb]
        cp $6d
        jp z, asm_fa7a
        xor a
        ld [$c503], a
        ld hl, $c350
        add hl, bc
        ld a, [hl]
        and $3
        sla a
        sla a
        ld [$ffd7], a
        ld hl, $c2a0
        add hl, bc
        xor a
        ld [hl], a
        ld hl, $c240
        add hl, bc
        ld a, [hl]
        cp $0
        jr z, .asm_fa53
        ld de, $0000
        and $80
        jr z, .asm_fa3d
        inc e

.asm_fa3d
        call $7ac3
        jr c, .asm_fa53
        ld a, [$ffaf]
        ld [$c503], a
        ld a, [$ffbe]
        and a
        jr nz, .asm_fa53
        ld hl, $c200
        add hl, bc
        ld a, [$ffee]
        ld [hl], a

.asm_fa53
        ld hl, $c250
        add hl, bc
        ld a, [hl]
        cp $0
        jr z, asm_fa7a
        ld de, $0002
        and $80
        jr nz, .asm_fa64
        inc e

.asm_fa64
        call $7ac3
        jr c, asm_fa7a
        ld a, [$ffaf]
        ld [$c50d], a
        ld a, [$ffbe]
        and a
        jr nz, asm_fa7a
        ld hl, $c210
        add hl, bc
        ld a, [$ffef]
        ld [hl], a

asm_fa7a
        ret
; 0xfa7b

Unknown_fa7b:
INCBIN "baserom.gbc", 16384*3+$3a7b, $3ac3-$3a7b

Functionfac3:
        push bc
        ld hl, $c200
        add hl, bc
        ld a, [hl]
        sub $8
        push af
        ld a, [$ffd7]
        ld c, a
        pop af
        ld hl, Unknown_f855
        add hl, bc
        add hl, de
        add [hl]
        ld [$ffdb], a
        swap a
        and $f
        ld [$ffd8], a
        pop bc
        push bc
        ld a, e
        cp $3
        jr nz, .asm_fb04
        ld a, [$ffeb]
        cp $a8
        jr z, .asm_faef
        cp $5
        jr nz, .asm_fb04

.asm_faef
        ld hl, $c210
        add hl, bc
        ld a, [hl]
        ld hl, $c310
        add hl, bc
        ld c, [hl]
        bit 7, c
        jr z, .asm_faff
        ld c, $0

.asm_faff
        srl c
        sub c
        jr .asm_fb09

.asm_fb04
        ld hl, $c210
        add hl, bc
        ld a, [hl]

.asm_fb09
        sub $10
        push af
        ld a, [$ffd7]
        ld c, a
        pop af
        ld hl, Unknown_f865
        add hl, bc
        add hl, de
        add [hl]
        ld [$ffdc], a
        and $f0
        ld hl, $ffd8
        or [hl]
        ld c, a
        ld hl, $d711
        ld a, h
        add hl, bc
        ld h, a
        pop bc
        ld a, [hl]
        ld [$ffaf], a
        cp $20
        jp z, .asm_fc71
        push de
        ld e, a
        ld a, [$dba5]
        ld d, a
        call Function2a23
        pop de
        ld [$ffda], a
        ld a, [$ffeb]
        cp $cc
        jr z, .asm_fb44
        cp $99
        jr nz, .asm_fb53

.asm_fb44
        ld a, [$ffda]
        cp $5
        jp z, .asm_fca3
        cp $7
        jp z, .asm_fca3
        jp .asm_fc6b

.asm_fb53
        ld a, [$ffda]
        and a
        jp z, .asm_fca3
        cp $b
        jr z, .asm_fb65
        cp $50
        jr z, .asm_fb65
        cp $51
        jr nz, .asm_fb81

.asm_fb65
        ld hl, $c310
        add hl, bc
        ld a, [hl]
        and a
        jp nz, .asm_fca3
        ld hl, $c410
        add hl, bc
        ld a, [hl]
        and a
        jp z, .asm_fc6b
        ld a, [$ffeb]
        cp $59
        jp z, .asm_fc6b
        jp .asm_fca3

.asm_fb81
        cp $7c
        jp c, .asm_fbda
        cp $90
        jp nc, .asm_fbda
        cp $80
        ld a, [$ffeb]
        jr c, .asm_fb9d
        cp $a8
        jp z, .asm_fca3
        cp $2
        jp z, .asm_fca3
        jr .asm_fbb1

.asm_fb9d
        cp $16
        jp z, .asm_fc96
        cp $17
        jp z, .asm_fc96
        ld hl, $c430
        add hl, bc
        ld a, [hl]
        and $80
        jp nz, .asm_fc96

.asm_fbb1
        push de
        ld a, [$ffda]
        sub $7c
        sla a
        sla a
        ld e, a
        ld d, $0
        ld hl, Unknown_fa7b
        add hl, de
        ld a, [$ffdb]
        rra
        rra
        rra
        and $1
        ld e, a
        ld a, [$ffdc]
        rra
        rra
        and $2
        or e
        ld e, a
        ld d, $0
        add hl, de
        ld a, [hl]
        pop de
        and a
        jp z, .asm_fca3

.asm_fbda
        ld a, [$ffda]
        cp $d0
        jr c, .asm_fc21
        cp $d4
        jr nc, .asm_fc21
        sub $d0
        ld hl, $c5d0
        add hl, bc
        cp [hl]
        jr z, .asm_fc10
        ld a, [$ffeb]
        cp $a8
        jr z, .asm_fc6b
        ld hl, $c4f0
        add hl, bc
        ld a, [hl]
        and a
        jr z, .asm_fc6b
        ld a, [$ffe7]
        and $3
        jr z, .asm_fc1e
        ld a, [$dba5]
        and a
        jr nz, .asm_fc0d
        ld a, [$ffe7]
        and $1
        jr z, .asm_fc1e

.asm_fc0d
        dec [hl]
        jr .asm_fc1e

.asm_fc10
        ld hl, $c310
        add hl, bc
        ld a, [hl]
        and a
        jp z, .asm_fc6b
        ld hl, $c4f0
        add hl, bc
        inc [hl]

.asm_fc1e
        jp .asm_fca3

.asm_fc21
        cp $ff
        jr z, .asm_fc96
        cp $a0
        jr nc, .asm_fca3
        cp $10
        jr nc, .asm_fc6b
        cp $1
        jr z, .asm_fc8d
        cp $3
        jr z, .asm_fc8d
        cp $4
        jr nz, .asm_fca3
        ld a, [$ffeb]
        cp $a8
        jp z, .asm_fca3
        cp $2
        jp z, .asm_fca3
        cp $3
        jr nz, .asm_fc50
        ld a, [$d6f9]
        and a
        jp nz, .asm_fca3

.asm_fc50
        ld a, [$ffaf]
        cp $db
        jr c, .asm_fc96
        cp $dd
        jr nc, .asm_fc96
        push de
        sub $db
        ld e, a
        ld d, $0
        ld hl, Unknown_fca5
        add hl, de
        pop de
        ld a, [$d6fb]
        xor [hl]
        jr z, .asm_fca3

.asm_fc6b
        ld a, [$ffda]
        cp $60
        jr nz, .asm_fc8d

.asm_fc71
        ld a, [$ffeb]
        cp $3
        jr nz, .asm_fc8d
        call Functionc01
        cp $26
        jr c, .asm_fc87
        call Function3f84
        xor a
        ld [$c1c6], a
        jr .asm_fc8d

.asm_fc87
        ld hl, $c290
        add hl, bc
        ld [hl], $1

.asm_fc8d
        ld hl, $c430
        add hl, bc
        ld a, [hl]
        and $1
        jr nz, .asm_fca3

.asm_fc96
        ld hl, Unknown_f875
        add hl, de
        ld a, [hl]
        ld hl, $c2a0
        add hl, bc
        or [hl]
        ld [hl], a
        and a
        ret

.asm_fca3
        scf
        ret
; 0xfca5

Unknown_fca5:
    db $00, $02

Functionfca7:
        ld de, $0000
        push bc
        ld hl, $c200
        add hl, bc
        ld a, [hl]
        ld [$ffdb], a
        and $f0
        ld [$ffce], a
        swap a
        ld hl, $c210
        add hl, bc
        ld c, a
        ld a, [hl]
        sub $8
        ld [$ffdc], a
        and $f0
        ld [$ffcd], a
        or c
        ld c, a
        ld [$ffe9], a
        ld b, $0
        ld hl, $d711
        ld a, h
        add hl, bc
        ld h, a
        pop bc
        ld a, [hl]
        ld [$ffaf], a
        cp $ac
        jp z, .asm_fdfc
        cp $ab
        jp nz, .asm_fd67
        ld a, [$fffe]
        and a
        jr z, .asm_fcf9
        ld a, [$c11c]
        cp $5
        ret z
        ld a, [$ddd6]
        and a
        jp nz, .asm_fdfc
        ld a, [$c124]
        and a
        jp nz, .asm_fdfc

.asm_fcf9
        ld a, [$ffeb]
        cp $4
        jr nz, .asm_fd67
        ld a, [$dba5]
        and a
        jr z, .asm_fd67
        push hl
        ld a, $12
        ld [$fff4], a
        ld a, $8
        call Functione4c6
        jr c, .asm_fd66
        pop hl
        ld a, $ac
        ld [hl], a
        ld [$ddd8], a
        push bc
        ld c, e
        ld b, d
        ld d, h
        ld e, l
        ld hl, $c2b0
        add hl, bc
        ld [hl], d
        ld hl, $c2c0
        add hl, bc
        ld [hl], e
        ld a, [$ffce]
        ld hl, $c200
        add hl, bc
        ld [hl], a
        ld a, [$ffcd]
        ld hl, $c210
        add hl, bc
        ld [hl], a
        ld hl, $c290
        add hl, bc
        ld [hl], $1
        call $0bf7
        ld [hl], $80
        pop bc
        ld hl, $c1a2
        inc [hl]
        ld a, [$c3cd]
        and a
        jr z, .asm_fd5f
        sub $4
        ld [$c3cd], a
        ld a, [$fffe]
        and a
        jr z, .asm_fd5f
        ld a, $40
        ld [$ddd6], a
        ld a, $b
        ld [$ddd7], a

.asm_fd5f
        ld de, $6999
        push de
        jp $51f2

.asm_fd66
        pop hl

.asm_fd67
        ld a, [hl]
        ld e, a
        ld a, [$dba5]
        ld d, a
        call Function2a23
        ld [$ffd8], a
        and a
        jp z, .asm_fdfc
        ld [$ffda], a
        cp $ff
        jp z, .asm_fdfe
        cp $d0
        jr c, .asm_fdbc
        cp $d4
        jr nc, .asm_fdbc
        sub $d0
        ld hl, $c5d0
        add hl, bc
        cp [hl]
        jr z, .asm_fdac
        ld hl, $c4f0
        add hl, bc
        ld a, [hl]
        and a
        jr z, .asm_fddc
        ld a, [$ffe7]
        and $3
        jr z, .asm_fdfc
        ld a, [$dba5]
        and a
        jr nz, .asm_fda8
        ld a, [$ffe7]
        and $1
        jr z, .asm_fdfc

.asm_fda8
        dec [hl]
        jp .asm_fdfc

.asm_fdac
        ld hl, $c310
        add hl, bc
        ld a, [hl]
        and a
        jr z, .asm_fddc
        ld hl, $c4f0
        add hl, bc
        inc [hl]
        jp .asm_fdfc

.asm_fdbc
        cp $7c
        jp c, .asm_fdc6
        cp $90
        jp c, .asm_fdfc
.asm_fdc6
        ld a, [$ffda]
        cp $a0
        jr nc, .asm_fdfc
        cp $50
        jr z, .asm_fdfc
        cp $51
        jr z, .asm_fdfc
        cp $10
        jr nc, .asm_fddc
        cp $1
        jr nz, .asm_fdfc

.asm_fddc
        ld hl, $c2a0
        add hl, bc
        ld [hl], $1
        ld a, [$ffeb]
        cp $1
        jr nz, .asm_fdec
        call Functionc01
        ret z

.asm_fdec
        ld hl, $c200
        add hl, bc
        ld a, [$ffee]
        ld [hl], a
        ld hl, $c210
        add hl, bc
        ld a, [$ffef]
        ld [hl], a
        scf
        ret

.asm_fdfc
        and a
        ret
; 0xfdfe

.asm_fdfe
        ld a, [$ffeb]
        cp $1
        jr z, .asm_fddc ; 0xfe02 $d8
        jp Function3f84
; 0xfe07

Functionfe07:
        push bc
        ld hl, $c200
        add hl, bc
        ld a, [hl]
        sub $1
        ld [$ffdb], a
        and $f0
        ld [$ffce], a
        swap a
        ld hl, $c210
        add hl, bc
        ld c, a
        ld a, [hl]
        sub $7
        ld [$ffdc], a
        and $f0
        ld [$ffcd], a
        or c
        ld c, a
        ld b, $0
        ld hl, $d711
        ld a, h
        add hl, bc
        ld h, a
        pop bc
        ld a, [hl]
        ld [$ffaf], a
        ld e, a
        ld a, [$dba5]
        ld d, a
        call Function2a23
        ld [$ffda], a
        ret
; 0xfe3e

Functionfe3e:
        ld [$ffd8], a
        and a
        jp z, Functionfebc
        call Functionfee2
        dec e
        dec e
        ld a, e
        ld [$ffd9], a
        ld a, d
        bit 7, a
        jr z, .asm_fe53
        cpl
        inc a

.asm_fe53
        ld [$ffe3], a
        call $7ed2
        ld a, e
        ld [$ffda], a
        ld a, d
        bit 7, a
        jr z, .asm_fe62
        cpl
        inc a

.asm_fe62
        ld [$ffe4], a
        ld e, $0
        ld hl, $ffe3
        ld a, [$ffe4]
        cp [hl]
        jr nc, .asm_fe77
        inc e
        push af
        ld a, [$ffe3]
        ld [$ffe4], a
        pop af
        ld [$ffe3], a

.asm_fe77
        xor a
        ld [$ffe2], a
        ld [$ffd7], a
        ld a, [$ffd8]
        ld d, a
.asm_fe7f
        ld a, [$ffe2]
        ld hl, $ffe3
        add [hl]
        jr c, .asm_fe8d
        ld hl, $ffe4
        cp [hl]
        jr c, .asm_fe92

.asm_fe8d
        sub [hl]
        ld hl, $ffd7
        inc [hl]

.asm_fe92
        ld [$ffe2], a
        dec d
        jr nz, .asm_fe7f
        ld a, e
        and a
        jr z, .asm_fea5
        ld a, [$ffd7]
        push af
        ld a, [$ffd8]
        ld [$ffd7], a
        pop af
        ld [$ffd8], a

.asm_fea5
        ld a, [$ffd9]
        and a
        ld a, [$ffd7]
        jr nz, .asm_feb0
        cpl
        inc a
        ld [$ffd7], a

.asm_feb0
        ld a, [$ffda]
        and a
        ld a, [$ffd8]
        jr z, .asm_febb
        cpl
        inc a
        ld [$ffd8], a

.asm_febb
        ret
; 0xfebc

Functionfebc:
        xor a
        ld [$ffd7], a
        ret
; 0xfec0

Functionfec0:
        call $7e3e
        ld a, [$ffd7]
        ld hl, $c250
        add hl, bc
        ld [hl], a
        ld a, [$ffd8]
        ld hl, $c240
        add hl, bc
        ld [hl], a
        ret
; 0xfed2

Functionfed2:
        ld e, $0
        ld a, [$ff98]
        ld hl, $c200
        add hl, bc
        sub [hl]
        bit 7, a
        jr z, .asm_fee0
        inc e

.asm_fee0
        ld d, a
        ret
; 0xfee2

Functionfee2:
        ld e, $2
        ld a, [$ff99]
        ld hl, $c210
        add hl, bc
        sub [hl]
        ld hl, $c310
        add hl, bc
        add [hl]
        bit 7, a
        jr nz, .asm_fef5
        inc e

.asm_fef5
        ld d, a
        ret
; 0xfef7

Functionfef7:
        call Functionfed2
        ld a, e
        ld [$ffd7], a
        ld a, d
        bit 7, a
        jr z, .asm_ff04
        cpl
        inc a

.asm_ff04
        push af
        call Functionfee2
        ld a, e
        ld [$ffd8], a
        ld a, d
        bit 7, a
        jr z, .asm_ff12
        cpl
        inc a

.asm_ff12
        pop de
        cp d
        jr nc, .asm_ff1a
        ld a, [$ffd7]
        jr .asm_ff1c

.asm_ff1a
        ld a, [$ffd8]

.asm_ff1c
        ld e, a
        ret
; 0xff1e


INCBIN "baserom.gbc", 16384*3+$3f1e, $4000-$3f1e
