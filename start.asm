
SECTION "Home", ROM0[$150]

_Start: ; 0x150
        cp $11
        jr nz, .asm_16e
        ld a, [rKEY1]
        and $80
        jr nz, .asm_167
        ld a, $30
        ld [rJOYP], a
        ld a, $1
        ld [rKEY1], a
        xor a
        ld [rIE], a
        stop

.asm_167
        xor a
        ld [rSVBK], a
        ld a, $1
        jr .asm_16f

.asm_16e
        xor a

.asm_16f
        ld [$fffe], a
        call Function28c6
        ld sp, $dfff
        ld a, $3c
        ld [MBC5RomBank], a
        call $6a22
        xor a
        ld [rBGP], a
        ld [rOBP0], a
        ld [rOBP1], a
        ld hl, $8000
        ld bc, $1800
        call Function29d6
        ld a, $24
        ld [MBC5RomBank], a
        call $5c00
        call Function28ee
        call Function29c7
        ld a, $1
        ld [MBC5RomBank], a
        call $6df5
        call $ffc0
        call $4110
        call Function2bc6
        ld a, $44
        ld [rSTAT], a
        ld a, $4f
        ld [rLYC], a
        ld a, $1
        ld [$dbaf], a
        ld a, $1
        ld [rIE], a
        call $46ad
        ld a, BANK(Function7c000) ; $1f
        ld [MBC5RomBank], a
        call Function7c000 ; $4000
        ld a, $18
        ld [$ffb5], a
        ei
        ld a, BANK(Function80854)
        ld [MBC5RomBank], a
        call Function80854
        jp Function35c
; 0x1da


Function1da:
        ld a, $1
        ld [$fffd], a
        ld a, [$c500]
        and a
        jr z, .asm_1ef
        ld a, [$db95]
        cp $b
        jr nz, .asm_1ef
        ld a, $0
        jr .asm_1f5

.asm_1ef
        ld hl, $c156
        ld a, [$ff97]
        add [hl]

.asm_1f5
        ld [rSCY], a
        ld a, [$ff96]
        ld hl, $c155
        add [hl]
        ld hl, $c1bf
        add [hl]
        ld [rSCX], a
        ld a, [$d6fe]
        and a
        jr nz, .asm_210
        ld a, [$d6ff]
        cp $0
        jr z, .asm_23a

.asm_210
        ld a, [$db95]
        cp $9
        jr z, .asm_226
        cp $6
        jr c, .asm_226
        cp $b
        jr nz, .asm_22c
        ld a, [$db96]
        cp $7
        jr nc, .asm_22c

.asm_226
        call Function89f
        call Function89f

.asm_22c
        di
        call Function416
        ei
        call Function89f
        call Function89f
        jp Function35c

.asm_23a
        ld a, [$d6fd]
        and $7f
        ld e, a
        ld a, [rLCDC]
        and $80
        or e
        ld [rLCDC], a
        ld hl, $ffe7
        inc [hl]
        ld a, [$db95]
        cp $0
        jr nz, .asm_261
        ld a, [$db96]
        cp $8
        jr c, .asm_261
        ld a, BANK(Function81263)
        ld [MBC5RomBank], a
        call Function81263

.asm_261
        ld a, [$c17f]
        and a
        jp z, Function2d2
        inc a
        jr nz, .asm_276
.asm_26b
        ld a, $17
        ld [MBC5RomBank], a
        call $48d7
        jp Function2d2

.asm_276
        inc a
        jr z, .asm_26b
        ld a, $14
        ld [MBC5RomBank], a
        ld a, [$c180]
        inc a
        ld [$c180], a
        cp $c0
        jr nz, .asm_29d
        ld a, [$c17f]
        cp $2
        jr nz, .asm_293
        call $4e51

.asm_293
        xor a
        ld [$c17f], a
        ld [$c3ca], a
        jp Function2d2

.asm_29d
        push af
        cp $60
        jr c, .asm_2b4
        ld a, [$fffe]
        and a
        jr z, .asm_2b1
        ld a, BANK(Function82caf)
        ld [MBC5RomBank], a
        call Function82caf
        jr .asm_2b4

.asm_2b1
        call $4fe8

.asm_2b4
        ld a, $14
        ld [MBC5RomBank], a
        pop af
        call $5038
        call Function89f
        ld a, [$db97]
        ld [rBGP], a
        ld a, [$db98]
        ld [rOBP0], a
        ld a, [$db99]
        ld [rOBP1], a
        jp Function35c
; 0x2d2

Function2d2:
        ld a, [$db9a]
        ld [rWY], a
        ld a, [$db97]
        ld [rBGP], a
        ld a, [$db98]
        ld [rOBP0], a
        ld a, [$db99]
        ld [rOBP1], a
        call Function89f
        call Function2815
        ld a, [hff90]
        ld hl, hff91
        or [hl]
        ld hl, $c10e
        or [hl]
        jr nz, asm_35c
        ld a, [$0003]
        and a
        jr z, .asm_32a
        ld a, [$d6fc]
        and a
        jr nz, .asm_30a
        ld a, [$ffcb]
        and $f
        jr z, .asm_324

.asm_30a
        ld a, [$ffcc]
        and $40
        jr z, .asm_324
        ld a, [$d6fc]
        xor $1
        ld [$d6fc], a
        jr nz, asm_35c
        ld a, [$c17b]
        xor $10
        ld [$c17b], a
        jr asm_35c

.asm_324
        ld a, [$d6fc]
        and a
        jr nz, asm_35c

.asm_32a
        ld a, [$db95]
        cp $c
        jr nz, .asm_338
        ld a, [$db96]
        cp $2
        jr c, .asm_340

.asm_338
        ld a, $1
        call ChangeROMBank
        call $5ff1

.asm_340
        call Functione30
        ld a, [$fffe]
        and a
        jr z, .asm_350
        ld a, $21
        call ChangeROMBank
        call $406e

.asm_350
        xor a
        ld [$ddd2], a
        ld a, $1
        call ChangeROMBank
        call $600e

Function35c:
asm_35c:
        ld a, $1f
        call ChangeROMBank
        call $7f80
        ld a, $c
        call Functionb07
        call ChangeROMBank
        xor a
        ld [$fffd], a
        halt
;        nop
.asm_371
        ld a, [$ffd1]
        and a
        jr z, .asm_371
        xor a
        ld [$ffd1], a
        jp Function1da
; 0x37c

Function37c:
        jr nz, asm_3ae
        ld b, b
        ld h, b
        nop
        jr nc, asm_3d9
        ld l, b
        nop

Function385:
        di
        push af
        push hl
        push de
        push bc
        ld a, [rSVBK]
        ld c, a
        xor a
        ld [rSVBK], a
        ld a, [$db95]
        cp $1
        jr nz, .asm_3aa
        ld a, [$db96]
        cp $5
        jr nz, .asm_3a3
        ld a, [$d000]
        jr .asm_3a5

.asm_3a3
        ld a, [$ff97]

.asm_3a5
        ld [rSCY], a
        jp Function3fc

.asm_3aa
        cp $0
        jr nz, asm_3f9

asm_3ae:
        ld a, [wc105]
        ld e, a
        ld d, $0
        ld hl, wc100
        add hl, de
        ld a, [hl]
        ld hl, $ff96
        add [hl]
        ld [rSCX], a
        ld a, [$db96]
        cp $6
        jr c, .asm_3d6
        ld hl, $0381
        add hl, de
        ld a, [hl]
        ld [rLYC], a
        ld a, e
        inc a
        and $3
        ld [wc105], a
        jr Function3fc

.asm_3d6
        ld hl, Function37c

asm_3d9:
        add hl, de
        ld a, [hl]
        ld [rLYC], a
        ld a, e
        inc a
        cp $5
        jr nz, .asm_3e4
        xor a

.asm_3e4
        ld [wc105], a
        nop
        cp $4
        jr nz, Function3fc
        ld a, [wc106]
        ld [rSCY], a
        cpl
        inc a
        add $60
        ld [rLYC], a
        jr Function3fc

asm_3f9:
        xor a
        ld [rSCX], a

Function3fc:
        ld a, c
        ld [rSVBK], a
        pop bc
        pop de
        pop hl
        pop af
        ei
        reti
; 0x405

Function405:
        push af
        ld a, $28
        ld [MBC5RomBank], a
        call $4601
        ld a, [$dbaf]
        ld [MBC5RomBank], a
        pop af
        reti
; 0x416

Function416:
        ld a, [$d6fe]
        and a
        jr z, asm_437
        ld [$ddd2], a
        cp $23
        jr z, .asm_428
        push af
        call Function28c6
        pop af

.asm_428
        call Function42d
        jr asm_45a

Function42d:
        ld e, a
        ld a, BANK(Function80657)
        ld [MBC5RomBank], a
        call Function80657
        jp [hl]

asm_437:
        call Function28c6
        ld a, $24
        ld [MBC5RomBank], a
        call $5c2c
        ld a, BANK(Function80577)
        ld [MBC5RomBank], a
        call Function80577
        ld a, $8
        ld [MBC5RomBank], a
        call Function2924
        ld a, $c
        call Functionb07
        ld [MBC5RomBank], a

asm_45a:
        xor a
        ld [$d6ff], a
        ld [$d6fe], a
        ld a, [$d6fd]
        ld [rLCDC], a
        ret
; 0x467

Function467:
        rlca
        add hl, bc

Function469:
        push af
        push bc
        push de
        push hl
        ld a, [rSVBK]
        and $7
        ld c, a
        xor a
        ld [rSVBK], a
        push bc
        di
        ld a, [$db95]
        cp $d
        jr nz, .asm_48a
        ld a, [$db96]
        cp $9
        jr c, .asm_48a
        cp $12
        jp c, Function574

.asm_48a
        ld a, [hfffd]
        and a
        jp nz, Function566
        ld a, [$c19f]
        and $7f
        jr z, .asm_4c9
        cp $1
        jr z, .asm_4c9
        cp $5
        jr nc, .asm_4a9
        call Function23db
        ld hl, $c19f
        inc [hl]
        jp Function566

.asm_4a9
        cp $a
        jr nz, .asm_4b3
        call Function2710
        jp Function566

.asm_4b3
        cp $b
        jr nz, .asm_4c9
        ld a, [$c172]
        and a
        jr z, .asm_4c3
        dec a
        ld [$c172], a
        jr .asm_4c9

.asm_4c3
        call Function2764
        jp Function566

.asm_4c9
        ld a, [$db95]
        cp $e
        jr c, .asm_4e1
        ld a, [$db96]
        cp $6
        jr c, .asm_528
        ld a, $38
        ld [MBC5RomBank], a
        call $785a
        jr .asm_528

.asm_4e1
        ld a, [$d6fe]
        and a
        jr nz, asm_566
        ld a, [hff90]
        ld [$ffe8], a
        ld hl, hff91
        or [hl]
        ld hl, $c10e
        or [hl]
        jr z, .asm_506
        call Function5b9
        ld a, [$ffe8]
        cp $8
        jr nc, .asm_501
.asm_4fe
        call Function1d31

.asm_501
        call $ffc0
        jr asm_566

.asm_506
        ld a, [$ffbb]
        and a
        jr z, .asm_51e
        dec a
        ld [$ffbb], a
        ld e, a
        ld d, $0
        ld hl, $0467
        add hl, de
        ld a, [hl]
        ld [$d6f8], a
        call Function1ed9
        jr .asm_4fe

.asm_51e
        ld a, [$db95]
        cp $d
        jr z, .asm_528
        call Function1b08

.asm_528
        ld a, [hfffe]
        and a
        jr z, .asm_535
        ld a, $24
        ld [MBC5RomBank], a
        call $5c1a

.asm_535
        ld de, $d601
        call Function291e
        xor a
        ld [$d600], a
        ld [$d601], a
        ld [$dc90], a
        ld [$dc91], a
        ld a, $36
        ld [MBC5RomBank], a
        call $7310
        call $ffc0
        ld a, [hfffe]
        and a
        jr z, asm_566
        ld a, BANK(Function84000) ; $21
        ld [MBC5RomBank], a
        call Function84000 ; $4000
        ld a, [$dbaf]
        ld [MBC5RomBank], a

Function566:
asm_566:
        ei
asm_567:
        pop bc
        ld a, c
        ld [rSVBK], a
        pop hl
        pop de
        pop bc
        ld a, $1
        ld [$ffd1], a
        pop af
        reti
; 0x574

Function574:
        ld a, [$dbaf]
        push af
        ld a, [hfffd]
        and a
        jr nz, .asm_5a8
        call $ffc0
        ld a, [hfffe]
        and a
        jr z, .asm_595
        ld a, $21
        call ChangeROMBank
        call $4000
        ld a, $24
        call ChangeROMBank
        call $5c1a

.asm_595
        ld de, $d601
        call Function291e
        xor a
        ld [$d600], a
        ld [$d601], a
        ld [$dc90], a
        ld [$dc91], a

.asm_5a8
        ld a, $28
        call ChangeROMBank
        call $4616
        pop af
        ld [$dbaf], a
        ld [MBC5RomBank], a
        jr asm_567 ; 0x5b7 $ae
; 0x5b9

Function5b9:
        ld a, [hff90]
        and a
        jp z, Function69a
        cp $7
        jp z, Function7ab
        cp $3
        jp z, rst62
        cp $4
        jp z, rst6a
        cp $5
        jp z, rst72
        cp $6
        jp z, rst7a
        cp $8
        jp nc, Function7ce
        ld a, [$dba5]
        and a
        jr z, .asm_652
        ld a, [hff90]
        cp $2
        jp z, Function821
        ld a, $d
        call Functionb07
        ld [MBC5RomBank], a
        ld a, [hff92]
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
        ld hl, $9000
        add hl, bc
        ld e, l
        ld d, h
        ld hl, $5000
        ld a, [hfff7]
        cp $ff
        jr nz, .asm_62b
        ld a, BANK(Function80616)
        ld [MBC5RomBank], a
        call Function80616
        ld [MBC5RomBank], a
        jr .asm_63d

.asm_62b
        ld a, [hff94]
        add $50
        ld h, a
        add hl, bc
        ld a, [hffbb]
        and a
        jr z, .asm_63d
        ld a, [hff92]
        dec a
        cp $2
        jr c, .asm_643

.asm_63d
        ld bc, $0040
        call CopyBytes

.asm_643
        ld a, [hff92]
        inc a
        ld [hff92], a
        cp $4
        jr nz, .asm_651
        xor a
        ld [hff90], a
        ld [hff92], a

.asm_651
        ret

.asm_652
        ld a, $f
        call Functionb07
        ld [MBC5RomBank], a
        ld a, [hff92]
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
        ld hl, $9000
        add hl, bc
        ld e, l
        ld d, h
        ld a, [hff94]
        add $40
        ld h, a
        ld l, $0
        add hl, bc
        ld bc, $0040
        call CopyBytes
        ld a, [hff92]
        inc a
        ld [hff92], a
        cp $8
        jr nz, .asm_699
        xor a
        ld [hff90], a
        ld [hff92], a

.asm_699
        ret
; 0x69a

Function69a:
        ld a, [hfffe]
        and a
        jr z, .asm_6c7
        ld a, [hfff7]
        cp $ff
        jr nz, .asm_6c7
        ld a, BANK(Function8075a)
        ld [MBC5RomBank], a
        call Function8075a
        xor a
        ld [$c10e], a
        ld [$c10f], a
        ld hl, $9000
        ld bc, $0000
        call Function80616
        ld c, $90
        ld b, h
        ld h, $0
        call Functiona03
        jr .asm_733

.asm_6c7
        ld a, [hff91]
        and a
        jr z, .asm_739
        ld a, [$c197]
        ld e, a
        ld d, $0
        ld hl, $c193
        add hl, de
        ld a, [hl]
        push af
        and $3f
        ld d, a
        ld e, $0
        pop af
        swap a
        rra
        rra
        and $3
        ld c, a
        ld b, $0
        ld hl, $2e66
        add hl, bc
        ld a, [hl]
        and a
        jr z, .asm_6f2
        call Functionb07

.asm_6f2
        ld [MBC5RomBank], a
        ld a, [hff93]
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
        ld hl, $4000
        add hl, bc
        add hl, de
        push hl
        ld a, [$c197]
        ld d, a
        ld hl, $8400
        add hl, bc
        add hl, de
        ld e, l
        ld d, h
        pop hl
        ld bc, $0040
        call CopyBytes
        ld a, [hff93]
        inc a
        ld [hff93], a
        cp $4
        jr nz, .asm_738

.asm_733
        xor a
        ld [hff91], a
        ld [hff93], a

.asm_738
        ret

.asm_739
        ld a, [$c10d]
        ld e, a
        ld d, $0
        ld hl, $c193
        add hl, de
        ld a, [hl]
        push af
        and $3f
        ld d, a
        ld e, $0
        pop af
        swap a
        rra
        rra
        and $3
        ld c, a
        ld b, $0
        ld hl, $2e66
        add hl, bc
        ld a, [hl]
        and a
        jr z, .asm_75f
        call Functionb07

.asm_75f
        ld [MBC5RomBank], a
        ld a, [$c10f]
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
        ld hl, $4000
        add hl, bc
        add hl, de
        push hl
        ld a, [$c10d]
        ld d, a
        ld hl, $8400
        add hl, bc
        add hl, de
        ld e, l
        ld d, h
        pop hl
        ld bc, $0040
        call CopyBytes
        ld a, [$c10f]
        inc a
        ld [$c10f], a
        cp $4
        jr nz, .asm_7aa
        xor a
        ld [$c10e], a
        ld [$c10f], a

.asm_7aa
        ret
; 0x7ab

Function7ab:
        ld a, $1
        ld [MBC5RomBank], a
        call $6c78
        jp Function8b
; 0x7b6

Function7b6:
        ld h, b
        ld l, c
        and b
        ld l, c
        ret nz
        ld l, c
        nop
        ld b, d
        ld b, b
        ld b, d
        ld h, b
        ld b, d
        nop
        add d
        ld b, b
        add d
        ld h, b
        add d
        nop
        add d
        ld b, b
        add d
        ld h, b
        add d

Function7ce:
        sub $8
        sla a
        ld e, a
        ld d, $0
        ld hl, $07b6
        add hl, de
        push hl
        ld hl, $07c2
        add hl, de
        ld e, [hl]
        inc hl
        ld d, [hl]
        pop hl
        ld a, [hli]
        ld h, [hl]
        ld l, a
        ld a, $c
        call Functionb07
        ld [MBC5RomBank], a
        ld bc, $0040
        call CopyBytes
        ld a, [hff90]
        cp $a
        jr z, .asm_803
        cp $d
        jr z, .asm_803
        ld a, [hff90]
        inc a
        ld [hff90], a
        ret

.asm_803
        xor a
        ld [hff90], a
        ret

ChangeROMBank: ; 0x807
; Change ROM Bank
        ld [$dbaf], a
        ld [MBC5RomBank], a
        ret
; 0x80e

Function80e:
; Change ROM Bank
        call Functionb07
        ld [$dbaf], a
        ld [MBC5RomBank], a
        ret

RestoreROMBank: ; 0x818
        push af
        ld a, [$dbaf]
        ld [MBC5RomBank], a
        pop af
        ret
; 0x821

Function821:
        ld a, $12
        call Functionb07
        ld [MBC5RomBank], a
        ld a, [hff92]
        cp $8
        jr c, .asm_86e
        jr nz, .asm_83e
        ld a, $2
        ld [MBC5RomBank], a
        call $685f
        ld hl, hff92
        inc [hl]
        ret

.asm_83e
        cp $9
        jr nz, .asm_84f
        ld a, $2
        ld [MBC5RomBank], a
        call $6843
        ld hl, hff92
        inc [hl]
        ret

.asm_84f
        cp $a
        jr nz, .asm_860
        ld a, $2
        ld [MBC5RomBank], a
        call $6827
        ld hl, hff92
        inc [hl]
        ret

.asm_860
        ld a, $2
        ld [MBC5RomBank], a
        call $6801
        xor a
        ld [hff90], a
        ld [hff92], a
        ret

.asm_86e
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
        ld hl, $7e00
        add hl, bc
        ld bc, $0040
        call CopyBytes
        ld a, [hff92]
        inc a
        ld [hff92], a
        ret
; 0x89f

Function89f:
        ld a, $1f
        call ChangeROMBank
        call $4006
        ld a, [hfff3]
        and a
        jr nz, asm_8d1
        ld a, [$c10b]
        and a
        jr z, Function8c1
        cp $2
        jr nz, .asm_8be
        ld a, [hffe7]
        and $1
        jr nz, asm_8d1
        jr Function8c1

.asm_8be
        call Function8c1

Function8c1:
        ld a, $1b
        call ChangeROMBank
        call $4006
        ld a, $1e
        call ChangeROMBank
        call $4006

asm_8d1:
        ret
; 0x8d2

Function8d2:
        ld a, BANK(Function82a38)
        ld [MBC5RomBank], a
        call Function82a38
asm_8da:
        ld a, [$dbaf]
        ld [MBC5RomBank], a
        ret
; 0x8e1

Function8e1:
        ld a, BANK(Function82ac9)
        ld [MBC5RomBank], a
        call Function82ac9
        jr asm_8da ; 0x8e9 $ef
; 0x8eb

Function8eb:
        ld a, BANK(Function82bac)
        ld [MBC5RomBank], a
        call Function82bac
        jr asm_8da ; 0x8f3 $e5
; 0x8f5

Function8f5:
        push af
        ld a, BANK(Function82be4)
        ld [MBC5RomBank], a
        call Function82be4
        jr Function96e

        ld a, BANK(Function82c08)
        ld [MBC5RomBank], a
        call Function82c08
        jr .asm_912

        ld a, BANK(Function82c2c)
        ld [MBC5RomBank], a
        call Function82c2c

.asm_912
        ld a, $1
        ld [MBC5RomBank], a
        ret

Function918:
        push af
        ld b, $0
        ld a, [$ddd8]
        sla a
        rl b
        sla a
        rl b
        ld c, a
        jr .asm_92a

        push af

.asm_92a
        ld a, $1a
        ld [MBC5RomBank], a
        call $6576
        ld a, [$ffdf]
        ld [MBC5RomBank], a
        ld hl, $dc91
        ld a, [$dc90]
        ld e, a
        add $a
        ld [$dc90], a
        ld d, $0
        add hl, de
        ld a, [$ffe0]
        ld d, a
        ld a, [$ffe1]
        ld e, a
        ld a, [$ffcf]
        ld [hli], a
        ld a, [$ffd0]
        ld [hli], a
        ld a, $81
        ld [hli], a
        ld a, [de]
        ld [hli], a
        inc de
        inc de

Function959:
        ld a, [de]
        ld [hli], a
        dec de
        ld a, [$ffcf]
        ld [hli], a
        ld a, [$ffd0]
        inc a
        ld [hli], a
        ld a, $81
        ld [hli], a
        ld a, [de]
        ld [hli], a
        inc de
        inc de
        ld a, [de]
        ld [hli], a
        xor a
        ld [hli], a

Function96e:
        pop af
        ld [MBC5RomBank], a
        ret
; 0x973

Function973:
        push af
        ld a, BANK(Function82d16)
        ld [MBC5RomBank], a
        call Function82d16
        jr Function96e ; 0x97c $f0
; 0x97e

Function97e:
        ld a, $1a
        ld [MBC5RomBank], a
        call $6710
        ld a, [$ffdf]
        ld [MBC5RomBank], a
        ld a, [$ffe0]
        ld h, a
        ld a, [$ffe1]
        ld l, a
        ld a, [hl]
        inc de
        ret
; 0x994

Function994:
        push af
        push bc
        call Function97e
        ld [$ffd7], a
        pop bc
        call Function97e
        ld [$ffd8], a
        ld a, [$dc90]
        ld c, a
        ld b, $0
        add $5
        ld [$dc90], a
        ld hl, $dc91
        add hl, bc
        ld a, [$ffcf]
        ld [hli], a
        ld a, [$ffd0]
        ld [hli], a
        ld a, $1
        ld [hli], a
        ld a, [$ffd7]
        ld [hli], a
        ld a, [$ffd8]
        ld [hli], a
        xor a
        ld [hli], a
        jr Function96e ; 0x9c1 $ab
; 0x9c3

Function9c3:
        push af
        ld a, BANK(Function80518)
        ld [MBC5RomBank], a
        call Function80518
        jr Function96e ; 0x9cc $a0
; 0x9ce

Function9ce:
        push af
        ld a, BANK(Function80874)
        ld [MBC5RomBank], a
        call Function80874
        jr Function96e ; 0x9d7 $95
; 0x9d9

Function9d9:
        push af
        ld a, BANK(Function80954)
        ld [MBC5RomBank], a
        call Function80954
        jp Function96e
; 0x9e5

Function9e5:
        push af
        ld a, BANK(Function8082d)
        ld [MBC5RomBank], a
        call Function8082d
        jp Function96e
; 0x9f1

Function9f1:
asm_9f1:
        push hl
        ld l, $0
        ld e, l
        ld h, b
        ld a, c
        add $80
        ld d, a
        ld bc, $0100
        call CopyBytes
        pop hl
        jr asm_a1d

Functiona03:
        ld [MBC5RomBank], a
        ld a, [hfffe]
        and a
        jr z, asm_9f1
        ld a, b
        ld [rHDMA1], a
        ld a, $0
        ld [rHDMA2], a
        ld a, c
        ld [rHDMA3], a
        ld a, $0
        ld [rHDMA4], a
        ld a, $f
        ld [rHDMA5], a

asm_a1d:
        ld a, h
        ld [MBC5RomBank], a
        ret
; 0xa22

Functiona22:
        push af
        ld a, $35
        ld [MBC5RomBank], a
        ld hl, $4f00
        ld de, $dcc0
        ld bc, $0020
        call CopyBytes
        jp Function96e
; 0xa37

Functiona37:
        push af
        ld a, $36
        ld [MBC5RomBank], a
        call $5066
        jp Function96e
; 0xa43

Functiona43:
        push af
        ld a, $36
        ld [MBC5RomBank], a
        call $4fa2
        jp Function96e
; 0xa4f

Functiona4f:
        push af
        ld a, $20
        ld [MBC5RomBank], a
        call Function3cdd
        jp Function96e
; 0xa5b

Functiona5b:
        push af
        ld a, $3
        ld [MBC5RomBank], a
        call $5a24
        jp Function96e
; 0xa67

Functiona67:
        push af
        ld a, $36
        ld [MBC5RomBank], a
        call $4f68
        jp Function96e
; 0xa73

Functiona73:
        push af
        ld a, BANK(Function82d5a)
        ld [MBC5RomBank], a
        call Function82d5a
        jp Function96e
; 0xa7f

Functiona7f:
        push af
        ld a, $36
        ld [MBC5RomBank], a
        call $4be8
        jp Function96e
; 0xa8b

Functiona8b:
        push af
        ld a, $f
        call ChangeROMBank
        call Function2318
        jp Function96e
; 0xa97

Functiona97:
        push af
        ld a, $36
        call ChangeROMBank
        call $7071
asm_aa0:
        pop af
        call ChangeROMBank
        ret
; 0xaa5

Functionaa5:
        push af
        ld a, $24
        ld [MBC5RomBank], a
        call $5c1a
        ld de, $d601
        call Function291e
        jr asm_aa0 ; 0xab4 $ea
; 0xab6

Functionab6:
        push af
        ld a, $36
        ld [MBC5RomBank], a
        call $7055
        jp Function96e
; 0xac2

Functionac2:
        push af
        ld a, $36
        ld [MBC5RomBank], a
        call $70ed
        jp Function96e
; 0xace

Functionace:
        push af
        ld a, $36
        call ChangeROMBank
        call $4a77
        jp Function96e
; 0xada

Functionada:
        push af
        ld a, $36
        ld [MBC5RomBank], a
        call $4a4c
        jp Function96e
; 0xae6

Functionae6:
        push af
        ld a, $36
        ld [MBC5RomBank], a
        call $717c
        jp Function96e
; 0xaf2

Functionaf2:
        ld a, $3d
        ld [MBC5RomBank], a
        call $4029
        ret
; 0xafb

Functionafb:
        push af
        ld a, $36
        ld [MBC5RomBank], a
        call $72d5
        jp Function96e
; 0xb07

Functionb07:
        push bc
        ld b, a
        ld a, [hfffe]
        and a
        jr z, .asm_b13
        ld a, b
        or $20
        pop bc
        ret

.asm_b13
        ld a, b
        pop bc
        ret
; 0xb16

Functionb16:
        ld a, [hffd7]
        ld [MBC5RomBank], a
        ld a, $2
        ld [rSVBK], a
        call CopyBytes
        xor a
        ld [rSVBK], a
        ld a, $20
        ld [MBC5RomBank], a
        ret
; 0xb2b

Functionb2b:
        ld [hffd9], a
        ld a, [hfffe]
        and a
        ret z
        ld a, [$dba5]
        and a
        ret nz
        push bc
        ld a, [hffd9]
        and $80
        jr nz, .asm_b47
        ld a, BANK(Function82e58)
        ld [MBC5RomBank], a
        call Function82e58
        jr c, .asm_b50

.asm_b47
        ld b, [hl]
        ld a, $2
        ld [rSVBK], a
        ld [hl], b
        xor a
        ld [rSVBK], a

.asm_b50
        ld a, [$ffd9]
        and $7f
        ld [MBC5RomBank], a
        pop bc
        ret
; 0xb59

Functionb59:
        ld [MBC5RomBank], a
        call CopyBytes
        ld a, $28
        ld [MBC5RomBank], a
        ret
; 0xb65

Functionb65:
        push hl
        ld [MBC5RomBank], a
        ld a, [hfffe]
        and a
        jr z, .asm_b7c
        ld de, $0168
        add hl, de
        ld a, $1
        ld [rVBK], a
        call Functionb92
        xor a
        ld [rVBK], a

.asm_b7c
        pop hl
        push hl
        call Functionb92
        pop hl
        ld a, [$db95]
        cp $d
        jr nz, .asm_b8c
        call Functionbb1

.asm_b8c
        ld a, [$ffe6]
        ld [MBC5RomBank], a
        ret
; 0xb92

Functionb92:
        ld de, $9800
.asm_b95
        ld a, [hli]
        ld [de], a
        inc e
        ld a, e
        and $1f
        cp $14
        jr nz, .asm_b95
        ld a, e
        add $c
        ld e, a
        ld a, d
        adc $0
        ld d, a
        cp $9a
        jr nz, .asm_b95
        ld a, e
        cp $40
        jr nz, .asm_b95
        ret
; 0xbb1

Functionbb1:
        ld bc, $0168
        ld de, $d000
        jp CopyBytes
; 0xbba

Functionbba:
        push af
        call Function2bc6
        jp Function96e
; 0xbc1

Functionbc1:
        ld a, [$d16a]
        ld [MBC5RomBank], a
.asm_bc7
        ld a, [hli]
        ld [de], a
        inc de
        dec b
        jr nz, .asm_bc7
        ld a, $28
        ld [MBC5RomBank], a
        ret
; 0xbd3

Functionbd3:
        ld a, [$de01]
        ld [MBC5RomBank], a
        call Functionbe3
        ld a, [$de04]
        ld [MBC5RomBank], a
        ret
; 0xbe3

Functionbe3:
        ld a, [$de02]
        ld h, a
        ld a, [$de03]
        ld l, a
        jp [hl]
; 0xbec

Functionbec:
        ld a, $2
        ld [MBC5RomBank], a
        call Function1a4b
        jp RestoreROMBank
; 0xbf7

Functionbf7:
        ld hl, $c450
        jr .asm_c04

        ld hl, $c2f0
        jr .asm_c04

        ld hl, $c2e0

.asm_c04
        add hl, bc
        ld a, [hl]
        and a
        ret
; 0xc08

Functionc08:
        ld a, $af
        call Function3b7d
        ld a, [hff98]
        ld hl, $c200
        add hl, de
        ld [hl], a
        ld a, [hff99]
        ld hl, $c210
        add hl, de
        ld [hl], a
        ret
; 0xc1c

Functionc1c:
        ld a, $1d
        ld [hfff2], a
        ret
; 0xc21

Functionc21:
        ld hl, $4641
        jr .asm_c29

        ld hl, $4741

.asm_c29
        ld a, $1c
        ld [MBC5RomBank], a
        add hl, bc
        ld a, [hl]
        ld hl, MBC5RomBank
        ld [hl], $1
        ret
; 0xc36

Functionc36:
        ld a, $c
        ld [MBC5RomBank], a
        ld bc, $0040
        call CopyBytes
        ld a, $1
        ld [MBC5RomBank], a
        ret
; 0xc47

Functionc47:
        ld hl, hfff4
        ld [hl], $c
        ld hl, $c502
        ld [hl], $4
        ret
; 0xc52

Functionc52:
        ld hl, $c410
        add hl, bc
        ld a, [hl]
        and a
        jr z, .asm_c5b
        dec [hl]

.asm_c5b
        ret
; 0xc5c

Functionc5c:
        push af
        ld a, [$c18f]
        and a
        jr nz, .asm_c77
        ld [$c1cf], a
        inc a
        ld [$c18f], a
        ld [$c5a6], a
        ld a, [$c19d]
        and a
        jr nz, .asm_c77
        ld a, $2
        ld [hfff2], a

.asm_c77
        pop af
        ret
; 0xc79

Functionc79:
.asm_c79
        ld a, $30
        ld [$ffa8], a
        jr .asm_c96

        ld a, $30
        ld [$ffa8], a
        jr .asm_c9a

        ld a, [wd401]
        cp $1
        jr nz, .asm_c79
        ld a, [$dba5]
        and a
        jr z, .asm_c79
        ld a, $1
        ld [$ffbc], a

.asm_c96
        ld a, $6
        ld [$fff4], a

.asm_c9a
        ld a, $3
        ld [$c11c], a
        xor a
        ld [$c16b], a
        ld [$c16c], a
        ld [$d478], a
        and a
        ret
; 0xcab

Functioncab:
        xor a
        ld [$c121], a
        ld [$c122], a

Functioncb2:
        xor a
        ld [$c14b], a
        ld [$c14a], a
        ret
; 0xcba

Functioncba:
        ld a, [$ff9f]
        ld [$ff98], a
        ld a, [$ffa0]
        ld [$ff99], a
        ret
; 0xcc3

Functioncc3:
        push af
        ld e, $f
        ld d, $0
.asm_cc8
        ld hl, $c510
        add hl, de
        ld a, [hl]
        and a
        jr z, .asm_ce8
        dec e
        ld a, e
        cp $ff
        jr nz, .asm_cc8
        ld hl, $c5c0
        dec [hl]
        ld a, [hl]
        cp $ff
        jr nz, .asm_ce4
        ld a, $f
        ld [$c5c0], a

.asm_ce4
        ld a, [$c5c0]
        ld e, a

.asm_ce8
        pop af
        ld hl, $c510
        add hl, de
        ld [hl], a
        ld a, [$ffd8]
        ld hl, $c540
        add hl, de
        ld [hl], a
        ld a, [$ffd7]
        ld hl, $c530
        add hl, de
        ld [hl], a
        ld hl, $c520
        add hl, de
        ld [hl], $f
        ret
; 0xd03

Functiond03:
        ld a, [$c140]
        sub $8
        ld [$ffd7], a
        ld a, [$c142]
        sub $8
        ld [$ffd8], a

Functiond11:
        ld a, $7
        ld [$fff2], a
        ld a, $5
        jp Functioncc3
; 0xd1a

Functiond1a:
        ld a, $20
        ld [MBC5RomBank], a
        ld a, [$dba5]
        and a
        jr z, .asm_d55
        ld a, [$fff6]
        ld e, a
        ld d, $0
        ld hl, $6ebb
        ld a, [$fff7]
        cp $ff
        jr nz, .asm_d38
        ld hl, $70bb
        jr .asm_d41

.asm_d38
        cp $1a
        jr nc, .asm_d41
        cp $6
        jr c, .asm_d41
        inc h

.asm_d41
        add hl, de
        ld a, [hff94]
        ld e, a
        ld a, [hl]
        cp e
        jr z, .asm_d53
        ld [hff94], a
        cp $ff
        jr z, .asm_d53
        ld a, $1
        ld [hff90], a

.asm_d53
        jr .asm_d8d

.asm_d55
        ld a, [$fff6]
        cp $7
        jr nz, .asm_d5c
        inc a

.asm_d5c
        ld d, a
        srl a
        srl a
        and $f8
        ld e, a
        ld a, d
        srl a
        and $7
        or e
        ld e, a
        ld d, $0
        ld hl, $6e7b
        add hl, de
        ld a, [hff94]
        ld e, a
        ld a, [hl]
        cp e
        jr z, .asm_d8d
        cp $f
        jr z, .asm_d8d
        cp $1a
        jr nz, .asm_d87
        ld a, [$fff6]
        cp $37
        jr nz, .asm_d8d
        ld a, [hl]

.asm_d87
        ld [hff94], a
        ld a, $1
        ld [hff90], a

.asm_d8d
        xor a
        ld [$ffd7], a
        ld a, [$fff6]
        ld e, a
        ld d, $0
        ld hl, $70db
        ld a, [$dba5]
        ld d, a
        ld a, [$fff7]
        cp $1a
        jr nc, .asm_da7
        cp $6
        jr c, .asm_da7
        inc d

.asm_da7
        add hl, de
        ld e, [hl]
        ld a, d
        and a
        jr z, .asm_dbd
        ld a, [$fff7]
        cp $10
        jr nz, .asm_dd7
        ld a, [$fff6]
        cp $b5
        jr nz, .asm_dd7
        ld e, $3d
        jr .asm_dd7

.asm_dbd
        ld a, e
        cp $23
        jr nz, .asm_dca
        ld a, [$d8c9]
        and $20
        jr z, .asm_dca
        inc e

.asm_dca
        ld a, e
        cp $21
        jr nz, .asm_dd7
        ld a, [$d8fd]
        and $20
        jr z, .asm_dd7
        inc e

.asm_dd7
        ld d, $0
        sla e
        rl d
        sla e
        rl d
        ld a, [$fff7]
        cp $ff
        jr nz, .asm_ded
        ld a, $1
        ld [hff91], a
        jr .asm_e2d

.asm_ded
        ld hl, $73fb
        ld a, [$dba5]
        and a
        jr z, .asm_df9
        ld hl, $7643

.asm_df9
        add hl, de
        ld d, $0
        ld bc, $c193
.asm_dff
        ld e, [hl]
        ld a, [bc]
        cp e
        jr z, .asm_e25
        ld a, e
        cp $ff
        jr z, .asm_e25
        ld [bc], a
        ld a, [$ffd7]
        and a
        jr z, .asm_e1a
        ld a, d
        ld [$c10d], a
        ld a, $1
        ld [$c10e], a
        jr .asm_e25

.asm_e1a
        inc a
        ld [$ffd7], a
        ld a, d
        ld [$c197], a
        ld a, $1
        ld [hff91], a

.asm_e25
        inc hl
        inc bc
        inc d
        ld a, d
        cp $4
        jr nz, .asm_dff

.asm_e2d
        jp RestoreROMBank
; 0xe30

Functione30:
        ld a, [$db95]
        cp $7
        jr c, .asm_e81
        cp $b
        jr nz, .asm_e42
        ld a, [$db96]
        cp $7
        jr nz, .asm_e81

.asm_e42
        ld a, [$c16b]
        cp $4
        jr nz, .asm_e81
        ld a, [$c19f]
        ld hl, $c167
        or [hl]
        ld hl, $c124
        or [hl]
        jr nz, .asm_e81
        ld a, [$db95]
        cp $c
        jr nc, .asm_e81
        ld a, [$ffcb]
        cp $f0
        jr nz, .asm_e81
        ld a, [$d474]
        and a
        jr nz, .asm_e81
        ld a, [$d464]
        and a
        jr nz, .asm_e81
        xor a
        ld [$c16b], a
        ld [$c16c], a
        ld [$c19f], a
        ld [$db96], a
        ld a, $6
        ld [$db95], a

.asm_e81
        ld a, [$db95]
        rst $0
; 0xe85



INCBIN "baserom.gbc", $e85, $ebb-$e85



FunctionEBB:
        call $6bbb
        jp Function1016
; 0xec1

Functionec1:
        call $68b1
        jp Function1016
; 0xec7

Functionec7:
        call $62c6
        jp Function1016
; 0xecd

Functionecd:
        call $564d
        jp Function1016
; 0xed3

Functioned3:
        ld a, $1
        call ChangeROMBank
        jp $4000
; 0xedb

Functionedb:
        jp $6ee0
; 0xede

Functionede:
        ld a, $17
        call ChangeROMBank
        call $4ab1
        jp Function1016
; 0xee9

Functionee9:
        ld a, $3
        ld [MBC5RomBank], a
        ld a, $17
asm_ef0:
        push af
        call Function3984
        pop af
        jp ChangeROMBank
; 0xef8

Functionef8:
        ld a, $3
        ld [MBC5RomBank], a
        ld a, $1
        jr asm_ef0 ; 0xeff $ef
; 0xf01

Functionf01:
        ld a, $3
        ld [MBC5RomBank], a
        ld a, $2
        jr asm_ef0 ; 0xf08 $e6
; 0xf0a

; 0xf0a
        jp $47d1
; 0xf0d
        jp $4a0a
; 0xf10
        jp $4cfe
; 0xf13
        jp $4f97
; 0xf16

Functionf16:
        ld a, $14
        ld [MBC5RomBank], a
        call $4c4b
        call $4abc
        ld a, $1
        call ChangeROMBank
        jp $4374
; 0xf29

Functionf29:
        ld a, BANK(Function81910) ; $20
        call ChangeROMBank
        jp Function81910
; 0xf31

Functionf31:
        ld a, $28
        call ChangeROMBank
        call $4000
        jp Function1016
; 0xf3c

Functionf3c:
        ld a, $37
        call ChangeROMBank
        jp $4000
; 0xf44

Functionf44:
        ld a, $2
        call ChangeROMBank
        ld a, [$c19f]
        and a
        jr nz, .asm_f8b
        ld hl, $ffb4
        ld a, [hl]
        and a
        jr z, .asm_f71
        ld a, [$db9a]
        cp $80
        jr nz, .asm_f71
        ld a, [$c14f]
        and a
        jr nz, .asm_f71
        dec [hl]
        jr nz, .asm_f71
        ld a, $1
        ld [MBC5RomBank], a
        call $62b1
        call RestoreROMBank

.asm_f71
        ld a, [$c19f]
        and a
        jr nz, .asm_f8b
        ld a, [$c1bc]
        and a
        jr z, .asm_f8b
        ld hl, $ffa1
        ld [hl], $2
        dec a
        ld [$c1bc], a
        jr nz, .asm_f8b
        jp Functionc79

.asm_f8b
        ld hl, $dbc7
        ld a, [hl]
        and a
        jr z, .asm_f93
        dec [hl]

.asm_f93
        ld a, [$ff98]
        ld [$ff9f], a
        ld a, [$ff99]
        ld [$ffa0], a
        ld hl, $ffa2
        sub [hl]
        ld [$ffb3], a
        call $6100
        xor a
        ld [$c140], a
        ld [$c13c], a
        ld [$c13b], a
        ld hl, $c11d
        res 7, [hl]
        ld hl, $c11e
        res 7, [hl]
        call $595b
        ld a, $2
        call ChangeROMBank
        call $7943
        call $102f
        ld a, [$c15c]
        ld [$c3cf], a
        ld a, BANK(Function80b1f)
        ld [MBC5RomBank], a
        call Function80b1f
        ld a, $19
        call ChangeROMBank
        call $7abc
        call Function3984
        ld a, $2
        call ChangeROMBank
        call $54a7
        ld hl, $d601
        ld a, [$ffe7]
        and $3
        or [hl]
        jr nz, .asm_100e
        ld a, [$c11c]
        cp $2
        jr nc, .asm_100e
        ld c, $1
        ld b, $0
        ld e, $0
        ld a, [$ffe7]
        and $4
        jr z, .asm_1006
        dec c
        dec e

.asm_1006
        ld a, BANK(Function81ca8)
        ld [MBC5RomBank], a
        call Function81ca8

.asm_100e
        ld a, $14
        call ChangeROMBank
        call $54f5

Function1016:
        ld a, $f
        call ChangeROMBank
asm_101b:
        call Function2318
        ld a, [$fffe]
        and a
        ret z
        ld a, $24
        call ChangeROMBank
        jp $7405
; 0x102a


INCBIN "baserom.gbc", $102a, $107b-$102a

		
Function107b:
        ld a, [$ffcb]
        and $b0
        jr nz, .asm_10d7
        ld a, [$ffcb]
        and $40
        jr z, .asm_10d7
        ld a, [wd45f]
        inc a
        ld [wd45f], a
        cp $4
        jr c, .asm_10db
        ld a, [$ffa1]
        cp $2
        jr z, .asm_10d7
        ld a, [$ff9d]
        cp $ff
        jr z, .asm_10d7
        ld a, [$c11c]
        cp $2
        jr nc, .asm_10d7
        ld a, [$c19f]
        ld hl, $c167
        or [hl]
        ld hl, $c124
        or [hl]
        jr nz, .asm_10d7
        ld a, [$d464]
        and a
        jr nz, .asm_10d7
        xor a
        ld [$c16b], a
        ld [$c16c], a
        ld [$db96], a
        ld a, $7
        ld [$db95], a
        ld a, $2
        ld [MBC5RomBank], a
        call $75a0
        call Function1d31
        call Function3984
        pop af
        ret

.asm_10d7
        xor a
        ld [wd45f], a

.asm_10db
        ld a, [$ffb7]
        and a
        jr z, .asm_10e3
        dec a
        ld [$ffb7], a

.asm_10e3
        ld a, [$ffb6]
        and a
        jr z, .asm_10eb
        dec a
        ld [$ffb6], a

.asm_10eb
        ld a, [$c19f]
        and a
        jp nz, Function1793
        ld a, [$c124]
        and a
        jp nz, Function114b
        ld a, [$c11c]
        cp $7
        jr z, .asm_1134
        ld a, [$db5a]
        ld hl, $c50a
        or [hl]
        ld hl, $c14f
        or [hl]
        jr nz, .asm_1131
        ld a, $7
        ld [$c11c], a
        ld a, $bf
        ld [$ffb7], a
        ld a, $10
        ld [$c3cc], a
        xor a
        ld [$dbc7], a
        ld [$ff9c], a
        ld [$ddd6], a
        ld [$ddd7], a
        ld [$d464], a
        call Function27e9
        ld a, $8
        ld [$fff3], a

.asm_1131
        ld a, [$c11c]

.asm_1134
        rst $0
        ld h, c
        ld de, $4f43
        ld l, b
        ld c, c
        ld [hl], $18
        call c, $8619
        ld c, [hl]
        db $f4
        ld d, b
        ld e, c
        ld de, $5287
        ld d, c
        ld de, $50c3

Function114b:
        call Function1793
        jp Function1d31
; 0x1151

Function1151:
        ld a, $19
        call ChangeROMBank
        jp $5d6a
; 0x1159

Function1159:
        ld a, $1
        call ChangeROMBank
        jp $41c5
; 0x1161

Function1161:
        ld a, $36
        ld [MBC5RomBank], a
        call $7275
        and a
        ret z
        ld a, $2
        call ChangeROMBank
        jp $4290
; 0x1173

Function1173:
        ld a, [$c50a]
        ld hl, $c167
        or [hl]
        ld hl, $c1a4
        or [hl]
        ret nz
        ld a, [$c14a]
        and a
        jr z, .asm_11b8
        ld a, [$db01]
        cp $1
        jr z, .asm_11a6
        ld a, [$db00]
        cp $1
        jr z, .asm_11a6
        ld a, [$db01]
        cp $4
        jr z, .asm_11a1
        ld a, [$db00]
        cp $4
        jr nz, .asm_11b6

.asm_11a1
        call Function133f
        jr .asm_11b6

.asm_11a6
        ld a, [$c137]
        dec a
        cp $4
        jr c, .asm_11b6
        ld a, $5
        ld [$c137], a
        ld [$c16a], a

.asm_11b6
        jr .asm_11bf

.asm_11b8
        xor a
        ld [$c15b], a
        ld [$c15a], a

.asm_11bf
        ld a, [$c117]
        and a
        jp nz, $12e9
        ld a, [$c15c]
        and a
        jp nz, $12e9
        ld a, [$c137]
        and a
        jr z, .asm_11de
        cp $3
        jr nz, .asm_11de
        ld a, [$c138]
        cp $3
        jr nc, .asm_11e4

.asm_11de
        ld a, [$ffa1]
        and a
        jp nz, $12e9

.asm_11e4
        ld a, [$db00]
        cp $8
        jr nz, .asm_11fa
        ld a, [$ffcb]
        and $20
        jr z, .asm_11f6
        call Function1704
        jr .asm_11fa

.asm_11f6
        xor a
        ld [$c14b], a

.asm_11fa
        ld a, [$db01]
        cp $8
        jr nz, .asm_1210
        ld a, [$ffcb]
        and $10
        jr z, .asm_120c
        call Function1704
        jr .asm_1210

.asm_120c
        xor a
        ld [$c14b], a

.asm_1210
        ld a, [$db01]
        cp $4
        jr nz, .asm_1231
        ld a, [$db44]
        ld [$c15a], a
        ld a, [$ffcb]
        and $10
        jr z, .asm_1231
        ld a, [$c1ad]
        cp $1
        jr z, .asm_1231
        cp $2
        jr z, .asm_1231
        call Function133f

.asm_1231
        ld a, [$db00]
        cp $4
        jr nz, .asm_1247
        ld a, [$db44]
        ld [$c15a], a
        ld a, [$ffcb]
        and $20
        jr z, .asm_1247
        call Function133f

.asm_1247
        ld a, [$ffcc]
        and $20
        jr z, .asm_125a
        ld a, [$c1ad]
        cp $2
        jr z, .asm_125a
        ld a, [$db00]
        call Function1298

.asm_125a
        ld a, [$ffcc]
        and $10
        jr z, .asm_1271
        ld a, [$c1ad]
        cp $1
        jr z, .asm_1271
        cp $2
        jr z, .asm_1271
        ld a, [$db01]
        call Function1298

.asm_1271
        ld a, [$ffcb]
        and $20
        jr z, .asm_127d
        ld a, [$db00]
        call Function1320

.asm_127d
        ld a, [$ffcb]
        and $10
        jr z, .asm_1289
        ld a, [$db01]
        call Function1320

.asm_1289
        ld a, BANK(Function808ca)
        ld [MBC5RomBank], a
        call Function808ca
        ld a, [$dbaf]
        ld [MBC5RomBank], a
        ret
; 0x1298

Function1298:
        ld c, a
        cp $1
        jp z, Function1527
        cp $4
        jp z, Function12ea
        cp $2
        jp z, Function1359
        cp $3
        jp z, Function1381
        cp $5
        jp z, Function13bc
        cp $d
        jp z, Function1382
        cp $6
        jp z, Function1318
        cp $a
        jp z, Function14ca
        cp $9
        jp z, $41fc
        cp $c
        jp z, Function148c
        cp $b
        jp z, Function12f4
        cp $7
        jr nz, .asm_12e9
        ld hl, $c137
        ld a, [$c19b]
        or [hl]
        jr nz, .asm_12e9
        ld a, [$c14d]
        cp $2
        jr nc, .asm_12e9
        ld a, $8e
        ld [$c19b], a

.asm_12e9
        ret
; 0x12ea

Function12ea:
        ld a, [$c144]
        and a
        ret nz
        ld a, $16
        ld [$fff4], a
        ret
; 0x12f4

Function12f4:
        ld a, [$c1c7]
        ld hl, $c146
        or [hl]
        ret nz
        call $4d39
        jr nc, .asm_1307
        ld a, $7
        ld [$fff2], a
        jr .asm_130b

.asm_1307
        ld a, $e
        ld [$fff4], a

.asm_130b
        call Functioncb2
        ld a, $1
        ld [$c1c7], a
        xor a
        ld [$c1c8], a
        ret
; 0x1318

Function1318:
        ld a, [$c1a4]
        and a
        ret nz
        jp $4254
; 0x1320

Function1320:
        cp $1
        ret nz
        ld hl, $c137
        ld a, [$c1ad]
        and $3
        or [hl]
        ret nz
        ld a, [$c160]
        and a
        ret nz
        xor a
        ld [$c1ac], a
        ld a, $5
        ld [$c137], a
        ld [$c5b0], a
        ret
; 0x133f

Function133f:
        ld a, $1
        ld [$c15b], a
        ld a, [$db44]
        ld [$c15a], a
        ld a, BANK(Function80b4a)
        ld [MBC5RomBank], a
        call Function80b4a
        ld a, [$dbaf]
        ld [MBC5RomBank], a
        ret
; 0x1359

Function1359:
        ld a, [$c14e]
        cp $1
        ret nc
        ld a, [$db4d]
        and a
        jp z, Functionc1c
        sub $1
        daa
        ld [$db4d], a
        ld a, $2
        call Function142e
        ret c
        ld a, BANK(Function80b81)
        ld [MBC5RomBank], a
        call Function80b81
        ld a, [$dbaf]
        ld [MBC5RomBank], a
        ret
; 0x1381

Function1381:
        ret
; 0x1382

Function1382:
        ld a, [$c14d]
        and a
        ret nz
        ld a, $1
        call Function142e
        ret c
        ld a, BANK(Function80c0b)
        ld [MBC5RomBank], a
        call Function80c0b
        ld a, [$dbaf]
        ld [MBC5RomBank], a
        ret
; 0x139c

Unknown_139c:
        db $00, $00, $00, $00, $00, $00, $00, $00, $20, $e0, $00, $00, $00, $00, $e0, $20
        db $30, $d0, $00, $00, $40, $c0, $00, $00, $00, $00, $d0, $30, $00
; 0x13b9



Function13b9:
        nop
        ret nz
        ld b, b

Function13bc:
        ld a, [$c14c]
        and a
        ret nz
        ld a, [$c14d]
        cp $2
        jr nc, .asm_142d
        ld a, $10
        ld [$c14c], a
        ld a, [$db45]
        and a
        jp z, Functionc1c
        sub $1
        daa
        ld [$db45], a
        call Function157b
        ld a, $0
        call Function142e
        ret c
        ld a, e
        ld [$c1c2], a
        ld a, [$c1c0]
        and a
        jr z, .asm_1400
        ld a, [$c1c1]
        ld c, a
        ld b, d
        ld hl, $c280
        add hl, bc
        ld [hl], b
        ld hl, $c290
        add hl, de
        ld [hl], $1
        xor a
        jr .asm_1406

.asm_1400
        ld a, $a
        ld [$fff4], a
        ld a, $6

.asm_1406
        ld [$c1c0], a
        ld a, [$ff9e]
        ld c, a
        ld b, $0
        ld a, [$d47c]
        cp $1
        jr nz, .asm_1419
        ld a, c
        add $4
        ld c, a

.asm_1419
        ld hl, $13ac
        add hl, bc
        ld a, [hl]
        ld hl, $c240
        add hl, de
        ld [hl], a
        ld hl, $13b4
        add hl, bc
        ld a, [hl]
        ld hl, $c250
        add hl, de
        ld [hl], a

.asm_142d
        ret
; 0x142e

Function142e:
        call Function3b7d
        ret c
        ld a, $c
        ld [$c19b], a
        push bc
        ld a, [$ff9e]
        ld c, a
        ld b, $0
        ld hl, Unknown_139c
        add hl, bc
        ld a, [$ff98]
        add [hl]
        ld hl, $c200
        add hl, de
        ld [hl], a
        ld hl, $13a0
        add hl, bc
        ld a, [$ff99]
        add [hl]
        ld hl, $c210
        add hl, de
        ld [hl], a
        ld a, [$ffa2]
        inc a
        ld hl, $c310
        add hl, de
        ld [hl], a
        ld hl, $13a4
        add hl, bc
        ld a, [hl]
        ld hl, $c240
        add hl, de
        ld [hl], a
        ld hl, $13a8
        add hl, bc
        ld a, [hl]
        ld hl, $c250
        add hl, de
        ld [hl], a
        ld a, [$ff9e]
        ld hl, $c3b0
        add hl, de
        ld [hl], a
        ld hl, $c380
        add hl, de
        ld [hl], a
        ld hl, $c5d0
        add hl, de
        ld [hl], a
        ld hl, $c4f0
        add hl, de
        ld [hl], $1
        pop bc
        scf
        ccf
        ret
; 0x148c

Function148c:
        ld a, [$c19b]
        and a
        ret nz
        ld a, [$db4b]
        and a
        jr z, .asm_14a6
        ld a, [$ffa2]
        and a
        ret nz
        ld a, $2
        ld [$c1a9], a
        ld a, $2a
        ld [$c1aa], a
        ret

.asm_14a6
        ld a, [$db4c]
        and a
        jp z, Functionc1c
        ld a, $8
        call Function3b7d
        ret c
        ld a, BANK(Function80c53)
        ld [MBC5RomBank], a
        call Function80c53
        ld a, [$dbaf]
        ld [MBC5RomBank], a
        ret
; 0x14c2

Unknown_14c2:
        db $1c, $e4, $00, $00
Unknown_14c6:
        db $00, $00, $e4, $1c

Function14ca:
        ld a, [$c130]
        cp $7
        ret z
        ld a, [$c146]
        and a
        ret nz
        ld a, $1
        ld [$c146], a
        xor a
        ld [$c152], a
        ld [$c153], a
        ld a, $d
        ld [$fff2], a
        ld a, [$fff9]
        and a
        jr z, Function1507
        call Function1507
        ld a, [$ffcb]
        and $3
        ld a, $ea
        jr z, .asm_14f7
        ld a, $e8

.asm_14f7
        ld [$ff9b], a
        xor a
        ld [$ffa3], a
        call Function219f
        ld a, $2
        call ChangeROMBank
        jp $6c91

Function1507:
        ld a, $20
        ld [$ffa3], a
        ld a, [$c14a]
        and a
        ret z
        ld a, [$ff9e]
        ld e, a
        ld d, b
        ld hl, Unknown_14c2
        add hl, de
        ld a, [hl]
        ld [$ff9a], a
        ld hl, Unknown_14c6
        add hl, de
        ld a, [hl]
        ld [$ff9b], a
asm_1522:
        ret
; 0x1523

Unknown_1523:
	db $02, $14, $15, $18
; 0x1527

Function1527:
        ld a, [$c16d]
        ld hl, $c121
        or [hl]
        ret nz
        ld a, $3
        ld [$c138], a
        ld a, $1
        ld [$c137], a
        ld [$c5b0], a
        xor a
        ld [$c160], a
        ld [$c1ac], a
        call Function2804
        and $3
        ld e, a
        ld d, $0
        ld hl, Unknown_1523
        add hl, de
        ld a, [hl]
        ld [$fff4], a
        call Function157b
        ld a, [$c146]
        and a
        jr nz, .asm_1561
        call Functioncab
        call Function178d

.asm_1561
        ld a, [$c14d]
        and a
        ret nz
        ld a, [$c5a9]
        and a
        ret z
        ld a, [$db4e]
        cp $2
        ret nz
        ld a, $df
        call Function142e
        xor a
        ld [$c19b], a
        ret
; 0x157b

Function157b:
        ld a, [$ffcb]
        and $f
        ld e, a
        ld d, $0
        ld hl, $490d
        add hl, de
        ld a, [hl]
        cp $f
        jr z, .asm_158d
        ld [$ff9e], a

.asm_158d
        ret
; 0x158e

Function158e:
        ld d, $fa
        ld [$1608], sp
        ld d, $8
        ld a, [$fafa]
        ld [$0816], sp
        ld [$16fa], sp
        ld [$1616], sp
        ld d, $8
        ld a, [$fafa]
        call Function15ae
        ld a, $2
        jp ChangeROMBank
; 0x15ae

Function15ae:
        ld a, [$c1c4]
        and a
        ret nz
        ld a, [$c14a]
        and a
        jr nz, .asm_15bf
        ld a, [$c16a]
        cp $5
        ret z

.asm_15bf
        ld a, [$c121]
        and a
        jr z, .asm_15cc
        ld a, [$c136]
        add $4
        jr .asm_15ce

.asm_15cc
        ld a, [$ff9e]

.asm_15ce
        ld e, a
        ld d, $0
        ld hl, $158e
        add hl, de
        ld a, [$ff98]
        add [hl]
        sub $8
        and $f0
        ld [$ffce], a
        swap a
        ld c, a
        ld hl, $159a
        add hl, de
        ld a, [$ff99]
        add [hl]
        sub $10
        and $f0
        ld [$ffcd], a
        or c
        ld e, a
        ld hl, $d711
        add hl, de
        ld a, h
        cp $d7
        ret nz
        push de
        ld a, [hl]
        ld [$ffaf], a
        ld e, a
        ld a, [$dba5]
        ld d, a
        call Function2a1d
        pop de
        cp $d0
        jp c, $160f
        cp $d4
        jp c, $16c1
        cp $90
        jp nc, $16c1
        cp $1
        jp z, $16c1
        ld c, $0
        ld a, [$dba5]
        and a
        ld a, [$ffaf]
        jr z, .asm_1628
        cp $dd
        jr z, .asm_1636
        ret

.asm_1628
        inc c
        cp $d3
        jr z, .asm_1636
        cp $5c
        jr z, .asm_1636
        cp $a
        ret nz
        ld c, $ff

.asm_1636
        ld a, c
        ld [$fff1], a
        call Function2171
        ld a, [$c14a]
        and a
        jr nz, .asm_1652
        ld a, [$c16a]
        cp $5
        jr nz, .asm_1652
        xor a
        ld [$c122], a
        ld a, $c
        ld [$c16d], a

.asm_1652
        ld a, $5
        call Function142e
        jr c, .asm_167b
        xor a
        ld [$c19b], a
        ld hl, $c200
        add hl, de
        ld a, [$ffce]
        add $8
        ld [hl], a
        ld hl, $c210
        add hl, de
        ld a, [$ffcd]
        add $10
        ld [hl], a
        ld hl, $c3b0
        add hl, de
        ld a, [$fff1]
        ld [hl], a
        ld c, e
        ld b, d
        call Function3939

.asm_167b
        call Function2804
        and $7
        ret nz
        ld a, [$ffaf]
        cp $d3
        ret z
        call Function2804
        rra
        ld a, $2e
        jr nc, .asm_1690
        ld a, $2d

.asm_1690
        call Function3b7d
        ret c
        ld hl, $c200
        add hl, de
        ld a, [$ffce]
        add $8
        ld [hl], a
        ld hl, $c210
        add hl, de
        ld a, [$ffcd]
        add $10
        ld [hl], a
        ld hl, $c450
        add hl, de
        ld [hl], $80
        ld hl, $c2f0
        add hl, de
        ld [hl], $18
        ld hl, $c320
        add hl, de
        ld [hl], $10
        ret
; 0x16b9

Function16b9:
        ld [de], a
        xor $fc
        inc b
        inc b
        inc b
        xor $12
        ld c, a
        ld a, [$c16d]
        and a
        ret z

        ld a, [$ff9e]
        ld e, a
        ld d, $0
        ld hl, $16b9
        add hl, de
        ld a, [$ff98]
        add [hl]
        ld [$ffd7], a
        ld hl, $16bd
        add hl, de
        ld a, [$ff99]
        add [hl]
        ld [$ffd8], a
        ld a, $4
        ld [$c502], a
        call Functiond11
        ld a, $10
        ld [$c1c4], a
        ld a, c
        and $f0
        cp $90
        jr z, .asm_16f7
        ld a, $7
        ld [$fff2], a
        ret

.asm_16f7
        ld a, $17
        ld [$fff4], a
        ret
; 0x16fc

Unknown_16fc:
	db $20, $e0, 0, 0, 0, 0

Function1702:
        ld [$ff20], a

Function1704:
        ld a, [$fff9]
        and a
        jr z, .asm_1712
        ld a, [$ff9c]
        and a
        ret nz
        ld a, [$ff9e]
        and $2
        ret nz

.asm_1712
        ld a, [$c14a]
        and a
        ret nz
        ld a, [$ffa2]
        ld hl, $c146
        or [hl]
        ret nz
        ld a, [$c120]
        add $2
        ld [$c120], a
        call Function1755
        ld a, [$c14b]
        inc a
        ld [$c14b], a
        cp $20
        ret nz
        ld [$c14a], a
        xor a
        ld [$c121], a
        ld [$c122], a
        ld a, [$ff9e]
        ld e, a
        ld d, $0
        ld hl, $16fc
        add hl, de
        ld a, [hl]
        ld [$ff9a], a
        ld hl, $1700
        add hl, de
        ld a, [hl]
        ld [$ff9b], a
        xor a
        ld [$c1ac], a
        ret
; 0x1755

Function1755:
        ld a, [$ffe7]
        and $7
        ld hl, $ffa2
        or [hl]
        ld hl, $ffa1
        or [hl]
        ld hl, $c146
        or [hl]
        ret nz
        ld a, [$ff98]
        ld [$ffd7], a
        ld a, [$c181]
        cp $5
        jr z, .asm_1780
        ld a, $7
        ld [$fff4], a
        ld a, [$ff99]
        add $6
        ld [$ffd8], a
        ld a, $b
        jp Functioncc3

.asm_1780
        ld a, [$ff99]
        ld [$ffd8], a
        ld a, $e
        ld [$fff2], a
        ld a, $c
        jp Functioncc3
; 0x178d

Function178d:
        xor a
        ld [$ff9a], a
        ld [$ff9b], a
        ret
; 0x1793

Function1793:
        call $757f
        ld a, [$c11c]
        cp $1
        ret z
        ld a, [$c16a]
        and a
        jr z, .asm_17da
        ld bc, $c010
        ld a, [$c145]
        ld hl, $c13b
        add [hl]
        ld [$ffd7], a
        ld a, [$ff98]
        ld [$ffd8], a
        ld hl, $ffda
        ld [hl], $0
        ld a, [$c122]
        cp $28
        jr c, .asm_17c5
        ld a, [$ffe7]
        rla
        rla
        and $10
        ld [hl], a

.asm_17c5
        ld a, [$c139]
        ld h, a
        ld a, [$c13a]
        ld l, a
        ld a, [$c136]
        ld [$ffd9], a
        ld a, [$ff99]
        cp $88
        ret nc
        jp Function1818

.asm_17da
        ld a, [$c19b]
        push af
        bit 7, a
        jp z, .asm_1813
        ld a, $2
        call ChangeROMBank
        call $5330
        ld a, [$c19b]
        and $7f
        cp $c
        jr nz, .asm_1813
        ld hl, $c19f
        ld a, [$c124]
        or [hl]
        jr nz, .asm_1813
        call Function157b
        ld a, $4
        call Function142e
        jr c, .asm_1813
        ld a, $d
        ld [$fff4], a
        ld a, $2
        call ChangeROMBank
        call $53ab

.asm_1813
        pop af
        ld [$c19b], a
        ret
; 0x1818

Function1818:
        ld a, BANK(Function80ab3)
        ld [MBC5RomBank], a
        call Function80ab3
        ld a, [$dbaf]
        ld [MBC5RomBank], a
        ret
; 0x1827

Function1827:
        ld a, BANK(Function809ba)
        ld [MBC5RomBank], a
        call Function809ba
        ld a, [$dbaf]
        ld [MBC5RomBank], a
        ret
; 0x1836

Function1836:
        call $7594
        ld a, [$c3c9]
        and a
        jr z, .asm_1846
        xor a
        ld [$c3c9], a
        jp Functionc79

.asm_1846
        call Function1a1d
        xor a
        ld [$c157], a
        inc a
        ld [$c1a8], a
        ld a, [$c16b]
        cp $4
        jp nz, Function19d7
        xor a
        ld [$ff96], a
        ld [$ff97], a
        ld [$ffb4], a
        ld [$ddd6], a
        ld [$ddd7], a
        ld e, $10
        ld hl, $c280
.asm_186b
        ld [hli], a
        dec e
        jr nz, .asm_186b
        ld a, [$c509]
        and a
        jr z, .asm_1897
        push af
        ld a, $4
        call ChangeROMBank
        pop af
        call $7a6b
        ld hl, $db6e
        inc [hl]
        ld hl, $db46
        inc [hl]
        ld a, [$dc0c]
        or $40
        ld [$dc0c], a
        ld a, $1
        ld [$d47e], a
        xor a
        ld [$ff9d], a

.asm_1897
        ld a, [$fff9]
        ld [$ffe4], a
        ld a, $b
        ld [$db95], a
        xor a
        ld [$db96], a
        ld [$c3cb], a
        ld [$fff9], a
        ld hl, wd401
        ld a, [$dba5]
        ld [$ffe6], a
        and a
        jr nz, .asm_18de
        ld hl, wd416
        ld c, $0
.asm_18b9
        ld a, [$ff98]
        swap a
        and $f
        ld e, a
        ld a, [$ff99]
        sub $8
        and $f0
        or e
        cp [hl]
        jr z, .asm_18d1
        inc hl
        inc c
        ld a, c
        cp $4
        jr nz, .asm_18b9

.asm_18d1
        ld a, c
        sla a
        sla a
        add c
        ld e, a
        ld d, $0
        ld hl, wd401
        add hl, de

.asm_18de
        push hl
        ld a, [hli]
        ld [$dba5], a
        cp $2
        jr nz, .asm_18f1
        ld [$fff9], a
        dec a
        ld [$dba5], a
        ld a, $1
        ld [$ff9c], a

.asm_18f1
        ld a, [hli]
        ld [$fff7], a
        ld a, [$dba5]
        and a
        ld a, [hli]
        ld [$fff6], a
        jr nz, .asm_1908
        ld a, [$ffe6]
        and a
        jr z, .asm_1906
        xor a
        ld [$d47c], a

.asm_1906
        jr .asm_196e

.asm_1908
        ld c, a
        ld a, $14
        call ChangeROMBank
        push hl
        ld a, [$fff7]
        swap a
        ld e, a
        ld d, $0
        sla e
        rl d
        sla e
        rl d
        ld hl, $4220
        add hl, de
        ld a, [$fff7]
        cp $ff
        jr nz, .asm_192d
        ld hl, $44e0
        jr .asm_193b

.asm_192d
        cp $6
        jr nz, .asm_193b
        ld a, [$db6b]
        and $4
        jr z, .asm_193b
        ld hl, $4520

.asm_193b
        ld e, $0
.asm_193d
        ld a, [hli]
        cp c
        jr z, .asm_1947
        inc e
        ld a, e
        cp $40
        jr nz, .asm_193d

.asm_1947
        ld a, e
        ld [$dbae], a
        ld a, [$ffe6]
        and a
        jr nz, .asm_196d
        xor a
        ld [$d47c], a
        ld a, [$fff7]
        cp $a
        jr nc, .asm_196d
        ld a, $2
        call ChangeROMBank
        call $672a
        ld a, $30
        ld [$ffb4], a
        xor a
        ld [$d6fb], a
        ld [$d6f8], a

.asm_196d
        pop hl

.asm_196e
        ld a, [hli]
        ld [$db9d], a
        ld a, [hl]
        ld [$db9e], a
        pop hl
        ld a, [$fff9]
        and a
        jr nz, Function19d8
        ld a, [$ffe4]
        and a
        jr nz, Function19d7
        ld a, [$dba5]
        and a
        jr z, Function19c1
        ld a, [$fff7]
        cp $ff
        jr nz, .asm_1992
        ld hl, $4e3c
        jr .asm_19a3

.asm_1992
        cp $a
        jr nc, Function19c1
        ld e, a
        sla a
        sla a
        add e
        ld e, a
        ld d, $0
        ld hl, $4df1
        add hl, de

.asm_19a3
        ld a, $14
        ld [MBC5RomBank], a
        call Function19c1
        push de
        ld a, [$fff7]
        cp $ff
        jr nz, .asm_19b6
        ld a, $3a
        jr .asm_19be

.asm_19b6
        ld e, a
        ld d, $0
        ld hl, $4e41
        add hl, de
        ld a, [hl]

.asm_19be
        pop de
        ld [de], a
        ret

Function19c1:
        xor a
        ld [$ffd7], a
        ld de, $db5f
.asm_19c7
        ld a, [hli]
        ld [de], a
        inc de
        ld a, [$ffd7]
        inc a
        ld [$ffd7], a
        cp $5
        jr nz, .asm_19c7
        ld a, [$dbae]
        ld [de], a

Function19d7:
        ret

Function19d8:
        xor a
        ld [$ff9e], a
        ret
; 0x19dc

Function19dc:
        call $7594
        ld a, [$d474]
        and a
        jr z, .asm_19fa
        xor a
        ld [$d474], a
        ld a, $30
        ld [$c180], a
        ld a, $3
        ld [$c17f], a
        ld a, $4
        ld [$c16b], a
        jr .asm_1a03

.asm_19fa
        call Function1a34
        ld a, [$c16b]
        cp $4
        ret nz

.asm_1a03
        ld a, [$d463]
        cp $1
        jr z, .asm_1a0c
        ld a, $0

.asm_1a0c
        ld [$c11c], a
        ld a, [$d47e]
        and a
        ret z
        xor a
        ld [$d47e], a
        ld a, $36
        jp Function237c

Function1a1d: ; 0x1a1d
        ld a, BANK(Function82c57) ; $20
        ld [MBC5RomBank], a
        call Function82c57
        ld a, BANK(Function815d6) ; $20
        ld [MBC5RomBank], a
        call Function815d6
        ld a, [$dbaf]
        ld [MBC5RomBank], a
        ret
; 0x1a34

Function1a34:
        ld a, BANK(Function82c82) ; $20
        ld [MBC5RomBank], a
        call Function82c82
        ld a, BANK(Function81647) ; $20
        ld [MBC5RomBank], a
        call Function81647 ; $5647
        ld a, [$dbaf]
        ld [MBC5RomBank], a
        ret
; 0x1a4b

Function1a4b:
        ld a, [$c120]
        sra a
        sra a
        sra a
        and $1
        ld d, a
        ld a, [$ff9e]
        sla a
        or d
        ld c, a
        ld b, $0
        ld hl, $4950
        ld a, [$c11c]
        cp $1
        jr nz, .asm_1a73
        ld a, [$ff9c]
        and a
        jr z, .asm_1a71
        ld hl, $4958

.asm_1a71
        jr .asm_1ac2

.asm_1a73
        ld a, [$fff9]
        and a
        jr z, .asm_1a83
        ld a, [$ff9c]
        cp $2
        jr nz, .asm_1a83
        ld hl, $4960
        jr .asm_1ac2

.asm_1a83
        ld a, [$c15c]
        cp $1
        jr z, .asm_1abf
        ld a, [$ffb2]
        and a
        jr nz, .asm_1a95
        ld a, [$c144]
        and a
        jr nz, .asm_1aba

.asm_1a95
        ld a, [$c15a]
        and a
        jr nz, .asm_1aa0
        ld hl, $4918
        jr .asm_1ac2

.asm_1aa0
        ld hl, $4920
        cp $2
        jr nz, .asm_1aaa
        ld hl, $4930

.asm_1aaa
        ld a, [$c15b]
        and a
        jr z, .asm_1ab8
        ld a, l
        add $8
        ld l, a
        ld a, h
        adc $0
        ld h, a

.asm_1ab8
        jr .asm_1ac2

.asm_1aba
        ld hl, $4940
        jr .asm_1ac2

.asm_1abf
        ld hl, $4948

.asm_1ac2
        add hl, bc
        ld a, [hl]
        ld [$ff9d], a
        ret
; 0x1ac7

Function1ac7:
        ld a, [$d601]
        and a
        ret nz
        ld a, $10
        call Functionb07
        ld [MBC5RomBank], a
        ld hl, $6500
        ld de, $9500
        ld a, [$ffe7]
        and $f
        jr z, .asm_1ae6
        cp $8
        ret nz
        ld l, $40
        ld e, l

.asm_1ae6
        ld a, [$ffe7]
        and $30
        ld c, a
        ld b, $0
        sla c
        rl b
        sla c
        rl b
        sla c
        rl b
        add hl, bc
        ld bc, $0040
        jp CopyBytes
; 0x1b00

Function1b00:
        jr nz, asm_1b62
        and b
        ld [$ffe0], a
        ld [$ffa0], a
        ld h, b

Function1b08:
        ld a, [$db95]
        cp $9
        jr z, Function1ac7
        cp $0
        jr nz, .asm_1b41
        ld a, [$d601]
        and a
        jp nz, $1b40
        ld a, [$ffe7]
        and $f
        cp $4
        jr c, .asm_1b40
        ld a, $10
        call Functionb07
        ld [MBC5RomBank], a
        ld a, [$d006]
        ld l, a
        ld a, [$d007]
        ld h, a
        ld a, [$d008]
        ld e, a
        ld a, [$d009]
        ld d, a
        ld bc, $0020
        jp CopyBytes

.asm_1b40
        ret

.asm_1b41
        ld a, [$db95]
        cp $1
        jr nz, .asm_1b4e
        ld a, [$ffa5]
        and a
        jr nz, asm_1b7d
        ret

.asm_1b4e
        cp $b
        jp c, $1dea
        ld a, [$db9a]
        cp $80
        jp nz, $1dea
        ld a, [$c14f]
        and a
        jp nz, Function1d31

asm_1b62:
        ld hl, $c124
        ld a, [$d601]
        or [hl]
        jp nz, Function1d31
        ld a, [$d6f8]
        and a
        jr z, .asm_1b78
        call Function1ed9
        jp Function1d31

.asm_1b78
        ld a, [$ffa5]
        and a
        jr z, asm_1bc8

asm_1b7d:
        cp $1
        jp z, Function3f8a
        cp $2
        jp z, Function3fa0
        cp $3
        jp z, Function1eb7
        cp $4
        jp z, Function1ebe
        cp $8
        jp z, Function1e6b
        cp $9
        jp z, Function1ea3
        cp $a
        jp z, Function1e2d
        cp $b
        jp z, Function1e8f
        cp $c
        jp z, Function1e35
        cp $d
        jp z, Function1e03
        cp $e
        jr z, .asm_1bc0
        cp $f
        jp z, Function1df2
        cp $10
        jp z, Function1deb
        jp Function1d31

.asm_1bc0
        ld a, $17
        ld [MBC5RomBank], a
        jp $4062

asm_1bc8:
        ld a, [$ffa6]
        inc a
        ld [$ffa6], a
        ld a, [$ffa4]
        rst $0
        ld hl, $f41d
        dec de
        ld de, $151c
        inc e
        inc [hl]
        inc e
        add l
        inc e
        adc c
        inc e
        and h
        inc e
        pop bc
        inc e
        ret c
        inc e
        rst $20
        inc e
        dec e
        inc e
        add hl, de
        inc e
        ld a, [$ff00+c]
        inc e
        cp $1c
        or $1c
        ld a, [$021c]
        dec e
        ld a, [$ffa6]
        and $7
        jp nz, Function1d21
        ld a, $1
        ld [MBC5RomBank], a
        call $626d
        ld a, $c
        call Functionb07
        ld [MBC5RomBank], a
        jp Function1d31
; 0x1c0e

Function1c0e:
        ld l, a
        jr Function1c4c

        ld h, $6b
        jr Function1c1f

        ld h, $6c
        jr Function1c1f

        ld h, $73
        jr Function1c1f

        ld h, $6a

Function1c1f:
        ld a, [$ffa6]
        and $f
        jp nz, Function1d21
        call Function1ceb
        jp Function1c0e

Unknown_1c2c:
	db $00, $40, $80, $c0, $c0, $c0, $80, $40

Function1c34:
        ld a, [$ffa6]
        and $7
        jp nz, Function1d21
        ld a, [$ffa6]
        rra
        rra
        rra
        and $7
        ld e, a
        ld d, $0
        ld hl, Unknown_1c2c
        add hl, de
        ld l, [hl]
        ld h, $6d

Function1c4c:
        ld de, $96c0

Function1c4f:
        ld bc, $0040
        call CopyBytes
        ld a, [$fff7]
        cp $ff
        jr nz, .asm_1c82
        ld a, BANK(Function807f7)
        ld [MBC5RomBank], a
        ld b, $1
        call Function807f7
        jr z, .asm_1c6d
        ld [MBC5RomBank], a
        call CopyBytes

.asm_1c6d
        ld a, BANK(Function807f7)
        ld [MBC5RomBank], a
        ld b, $0
        call Function807f7
        jr z, .asm_1c82
        ld [MBC5RomBank], a
        ld de, $96c0
        call CopyBytes

.asm_1c82
        jp Function1d31
; 0x1c85

Function1c85:
        ld h, $6e
        jr Function1c1f ; 0x1c87 $96
; 0x1c89

Function1c89:
        ld a, [$ffa6]
        and $7
        jp nz, Function1d21
        ld a, [$ffa6]
        rra
        rra
        rra
        and $7
        ld e, a
        ld d, $0
        ld hl, Unknown_1c2c
        add hl, de
        ld l, [hl]
        ld h, $6f
        jp Function1c4c
; 0x1ca4

Function1ca4:
        ld hl, $dcc0
        ld a, [$fff7]
        cp $ff
        jr nz, .asm_1cb3
        ld de, $8400
        jp Function1c4f

.asm_1cb3
        ld a, [$ffa6]
        inc a
        and $3
        jp nz, Function1c34
        ld de, $90c0
        jp Function1c4f
; 0x1cc1

Function1cc1:
        ld a, $c
        call Functionb07
        ld [MBC5RomBank], a
        ld h, $70
asm_1ccb:
        ld a, [$ffa6]
        and $7
        jp nz, Function1d21
        call Function1ceb
        jp Function1c0e
; 0x1cd8

Function1cd8:
        ld h, $71
asm_1cda:
        ld a, [$ffa6]
        and $3
        jp nz, Function1d21
        call Function1ceb
        jp Function1c0e
; 0x1ce7

Function1ce7:
        ld h, $72
        jr asm_1cda ; 0x1ce9 $ef
; 0x1ceb

Function1ceb:
        ld a, [$ffa7]
        add $40
        ld [$ffa7], a
        ret
; 0x1cf2

Function1cf2:
        ld h, $75
        jr asm_1cda ; 0x1cf4 $e4
; 0x1cf6

Function1cf6:
        ld h, $74
        jr asm_1ccb ; 0x1cf8 $d1
; 0x1cfa

Function1cfa:
        ld h, $77
        jr asm_1ccb ; 0x1cfc $cd
; 0x1cfe

Function1cfe:
        ld h, $76
        jr asm_1ccb ; 0x1d00 $c9
; 0x1d02

Function1d02:
        ld a, $38
        ld [MBC5RomBank], a
        call $7830
        jp Function1d31
; 0x1d0d

Function1d0d:
        ld a, $c
        call Functionb07
        ld [MBC5RomBank], a
.asm_1d15
        ld a, [bc]
        inc bc
        ld [hli], a
        dec d
        jr nz, .asm_1d15
        ld a, $20
        ld [MBC5RomBank], a
        ret
; 0x1d21

Function1d21:
        ld a, BANK(Function81501)
        ld [MBC5RomBank], a
        call Function81501
        ld a, $c
        call Functionb07
        ld [MBC5RomBank], a

Function1d31:
        ld a, [$ff9d]
        inc a
        ret z
        ld a, [$fffe]
        and a
        jr z, .asm_1d45
        ld a, [$dbc7]
        and $4
        jr z, .asm_1d4c
        ld a, $4
        jr .asm_1d4c

.asm_1d45
        ld a, [$dbc7]
        rla
        rla
        and $10

.asm_1d4c
        ld [$c135], a
        ld hl, $c008
        ld a, [$c13b]
        ld c, a
        ld a, [$c145]
        add c
        cp $88
        ret nc
        push af
        ld [hli], a
        ld a, [$c13c]
        ld c, a
        ld a, [$ff98]
        add c
        ld [hli], a
        xor a
        ld [hli], a
        ld a, [$c135]
        ld d, a
        ld a, [$c11d]
        or d
        ld [hl], a
        ld a, [$fffe]
        and a
        jr z, .asm_1da3
        ld a, [$dbc7]
        and $4
        jr nz, .asm_1da3
        ld a, [$ff9d]
        cp $50
        jr c, .asm_1d8e
        cp $55
        jr nc, .asm_1d8e
        ld a, [hl]
        or $7
        ld [hl], a
        jr .asm_1da3

.asm_1d8e
        ld a, [$dc0f]
        and a
        jr z, .asm_1d97
        inc a
        or [hl]
        ld [hl], a

.asm_1d97
        ld a, [$ff9d]
        cp $4e
        jr z, .asm_1da1
        cp $4f
        jr nz, .asm_1da3

.asm_1da1
        ld [hl], $3

.asm_1da3
        inc hl
        pop af
        ld [hli], a
        ld a, [$ff98]
        add c
        add $8
        ld [hli], a
        ld a, $2
        ld [hli], a
        ld a, [$c135]
        ld d, a
        ld a, [$c11e]
        or d
        ld [hl], a
        ld a, [$fffe]
        and a
        jr z, .asm_1de9
        ld a, [$dbc7]
        and $4
        jr nz, .asm_1de9
        ld a, [$ff9d]
        cp $50
        jr c, .asm_1dd4
        cp $55
        jr nc, .asm_1dd4
        ld a, [hl]
        or $7
        ld [hl], a
        jr .asm_1de9

.asm_1dd4
        ld a, [$dc0f]
        and a
        jr z, .asm_1ddd
        inc a
        or [hl]
        ld [hl], a

.asm_1ddd
        ld a, [$ff9d]
        cp $4e
        jr z, .asm_1de7
        cp $4f
        jr nz, .asm_1de9

.asm_1de7
        ld [hl], $23

.asm_1de9
        inc hl
        ret
; 0x1deb

Function1deb:
        ld hl, $4f00
        ld a, $e
        jr asm_1df7

Function1df2:
        ld a, $12
        ld hl, $6080

asm_1df7
        ld [MBC5RomBank], a
        ld de, $8400
        ld bc, $0040
        jp Function1f3d
; 0x1e03

Function1e03:
        ld a, [$db0e]
        cp $2
        jp c, Function1f40
        sub $2
        ld d, a
        ld e, $0
        sra d
        rr e
        sra d
        rr e
        ld hl, $4400
        add hl, de
        ld de, $89a0
        ld bc, $0040
        ld a, $c
        call Functionb07
        ld [MBC5RomBank], a
        jp Function1f3d
; 0x1e2d

Function1e2d:
        ld hl, $68c0
        ld de, $88e0
        jr asm_1ea9

Function1e35:
        ld a, $11
        call Functionb07
        ld [MBC5RomBank], a
        ld a, [$d000]
        swap a
        and $f0
        ld e, a
        ld d, $0
        sla e
        rl d
        sla e
        rl d
        ld hl, $8d00
        add hl, de
        push hl
        ld hl, $5000
asm_1e57
        add hl, de
        pop de
        ld bc, $0040
        call CopyBytes
        xor a
        ld [$ffa5], a
        ld a, $c
        call Functionb07
        ld [MBC5RomBank], a
        ret

Function1e6b:
        ld a, $13
        call Functionb07
        ld [MBC5RomBank], a
        ld a, [$d000]
        swap a
        and $f0
        ld e, a
        ld d, $0
        sla e
        rl d
        sla e
        rl d
        ld hl, $8d00
        add hl, de
        push hl
        ld hl, $4d00
        jr asm_1e57

Function1e8f:
        ld hl, $48e0
        ld de, $88e0
        ld a, $c
        call Functionb07
        ld [MBC5RomBank], a
        ld bc, $0020
        jp Function1f3d

Function1ea3:
        ld hl, $68e0
        ld de, $8ca0

asm_1ea9
        ld a, $c
        call Functionb07
        ld [MBC5RomBank], a
        ld bc, $0020
        jp Function1f3d
; 0x1eb7

Function1eb7:
        ld hl, $7f00
        ld a, $12
        jr asm_1ec3

Function1ebe:
        ld hl, $4c40
        ld a, $d

asm_1ec3
        call Functionb07
        ld [MBC5RomBank], a
        ld de, $9140
        jp Function1f3a
; 0x1ecf

Unknown_1ecf:
	db $40, $68, $40, $68

Unknown_1ed3:
	db $00, $68, $80, $68, $00, $68

Function1ed9:
        push af
        ld a, $c
        call Functionb07
        ld [MBC5RomBank], a
        pop af
        ld hl, $ffa1
        ld [hl], $1
        ld hl, $d6fb
        ld e, [hl]
        ld d, $0
        inc a
        cp $3
        jr nz, .asm_1efd
        push af
        ld a, [$d6fb]
        xor $2
        ld [$d6fb], a
        pop af

.asm_1efd
        ld [$d6f8], a
        cp $4
        jr nz, .asm_1f09
        ld hl, Unknown_1ecf
        jr .asm_1f10

.asm_1f09
        cp $8
        jr nz, .asm_1f16
        ld hl, Unknown_1ed3

.asm_1f10
        add hl, de
        ld de, $9040
        jr .asm_1f2e

.asm_1f16
        cp $6
        jr nz, .asm_1f1f
        ld hl, Unknown_1ecf
        jr .asm_1f2a

.asm_1f1f
        cp $a
        jr nz, .asm_1f37
        xor a
        ld [$d6f8], a
        ld hl, $1ed5

.asm_1f2a
        add hl, de
        ld de, $9080

.asm_1f2e
        ld bc, $0040
        ld a, [hli]
        ld h, [hl]
        ld l, a
        jp CopyBytes

.asm_1f37
        jp Function1d31
; 0x1f3a

Function1f3a:
        ld bc, $0040

Function1f3d:
        call CopyBytes

Function1f40:
        xor a
        ld [$ffa5], a
        ld a, $c
        ld [MBC5RomBank], a
        jp Function1d31
; 0x1f4b

Function1f4b:


INCBIN "baserom.gbc", $1f4b, $2171-$1f4b


Function2171:
        ld a, $14
        ld [MBC5RomBank], a
        call $5523
        jp RestoreROMBank
; 0x217c

Function217c:
        ld a, $5
        call Function142e
        ret c
        ld a, $2
        ld [$fff3], a
        ld hl, $c280
        add hl, de
        ld [hl], $7
        ld hl, $c3b0
        add hl, de
        ld a, [$ffe5]
        ld [hl], a
        ld c, e
        ld b, d
        ld e, $1
        ld a, $3
        call ChangeROMBank
        jp $578c
; 0x219f

Function219f:
        ld a, [$c14f]
        and a
        ret nz
        ld c, $1
        call Function21ad
        ld c, $0
        ld [$ffd7], a

Function21ad:
        ld b, $0
        ld hl, $ff9a
        add hl, bc
        ld a, [hl]
        push af
        swap a
        and $f0
        ld hl, $c11a
        add hl, bc
        add [hl]
        ld [hl], a
        rl d
        ld hl, $ff98
        add hl, bc
        pop af
        ld e, $0
        bit 7, a
        jr z, .asm_21ce
        ld e, $f0

.asm_21ce
        swap a
        and $f
        or e
        rr d
        adc [hl]
        ld [hl], a
        ret
; 0x21d8


INCBIN "baserom.gbc", $21d8, $2318-$21d8


Function2318:
        ld a, [$c19f]
        and a
        ret z
        ld e, a
        ld a, [$db95]
        cp $1
        ld a, $7e
        jr nz, .asm_2329
        ld a, $7f

.asm_2329
        ld [$ffe8], a
        ld a, [$c164]
        and a
        ld a, [$c170]
        jr nz, .asm_2338
        cp $20
        jr c, .asm_233c

.asm_2338
        and $f
        or $10

.asm_233c
        ld [$c171], a
        ld a, e
        and $7f
        dec a
        rst $0
        ld h, d
        inc hl
        and a
        inc hl
        and a
        inc hl
        and a
        inc hl
        ld [hl], h
        inc h
        xor [hl]
        inc h
        call nz, $2024
        dec h
        adc h
        ld h, $b
        daa
        ld e, a
        daa
        add c
        inc h
        adc d
        daa
        and [hl]
        inc h
        xor b
        inc hl
        ld a, $14
        ld [MBC5RomBank], a
        jp $5446
; 0x236a

Function236a:
        call Function237c
        ld a, $1
        ld [$c112], a
        ret
; 0x2373

Function2373:
        call Function237c
        ld a, $2
        ld [$c112], a
        ret
; 0x237c

Function237c:
        push af
        xor a
        ld [$c177], a
        pop af
        ld [$c173], a
        xor a
        ld [$c16f], a
        ld [$c170], a
        ld [$c164], a
        ld [$c108], a
        ld [$c112], a
        ld a, $f
        ld [$c5ab], a
        ld a, [$ff99]
        cp $48
        rra
        and $80
        or $1
        ld [$c19f], a
        ret
; 0x23a7

Function23a7:
        ret
; 0x23a8

Function23a8:
        xor a
        ld [$c19f], a
        ld a, $18
        ld [$c134], a
        ld a, [$fffe]
        and a
        ret z
        ld a, [$db95]
        cp $b
        ret nz
        ld a, [$c3cc]
        cp $8
        ret c
        ld a, $21
        ld [MBC5RomBank], a
        jp $53cf
; 0x23c9

Unknown_23c9:

INCBIN "baserom.gbc", $23c9, $23db-$23c9


Function23db:
        ld a, [$c19f]
        bit 7, a
        jr z, .asm_23e6
        and $7f
        add $3

.asm_23e6
        ld e, a
        ld d, $0
        ld hl, $23c7
        add hl, de
        ld a, [hl]
        add $0
        ld c, a
        ld a, $d5
        adc $0
        ld b, a
        ld hl, $23d3
        add hl, de
        ld a, [$c12f]
        add [hl]
        ld l, a
        ld [$ffd7], a
        ld hl, $23cd
        add hl, de
        ld a, [$c12e]
        add [hl]
        ld h, a
        ld a, [$ffd7]
        ld l, a
        xor a
        ld e, a
        ld d, a
        ld a, [$fffe]
        and a
        jr nz, .asm_243b
.asm_2415
        ld a, [hli]
        ld [bc], a
        inc bc
        ld a, l
        and $1f
        jr nz, .asm_2422
        ld a, l
        dec a
        and $e0
        ld l, a

.asm_2422
        inc e
        ld a, e
        cp $12
        jr nz, .asm_2415
        ld e, $0
        ld a, [$ffd7]
        add $20
        ld [$ffd7], a
        jr nc, .asm_2433
        inc h

.asm_2433
        ld l, a
        inc d
        ld a, d
        cp $2
        jr nz, .asm_2415
        ret

.asm_243b
        ld a, [hl]
        ld [bc], a
        ld a, $1
        ld [rVBK], a
        ld a, $2
        ld [rSVBK], a
        ld a, [hl]
        ld [bc], a
        xor a
        ld [rVBK], a
        ld [rSVBK], a
        inc bc
        ld a, l
        add $1
        and $1f
        jr nz, .asm_245a
        ld a, l
        and $e0
        ld l, a
        jr .asm_245b

.asm_245a
        inc l

.asm_245b
        inc e
        ld a, e
        cp $12
        jr nz, .asm_243b
        ld e, $0
        ld a, [$ffd7]
        add $20
        ld [$ffd7], a
        jr nc, .asm_246c
        inc h

.asm_246c
        ld l, a
        inc d
        ld a, d
        cp $2
        jr nz, .asm_243b
        ret
; 0x2474

Function2474:
        ld a, $1c
        ld [MBC5RomBank], a
        jp $4a2c
; 0x247c

Function247c:
        ld hl, $c19f
        inc [hl]
        ret
; 0x2481

Function2481:
        ld a, [$c1ab]
        and a
        jr nz, asm_24a5
        ld a, [$ffcc]
        and $30
        jr z, asm_24a5

Function248d:
        xor a
        ld [$c16f], a
        ld a, [$db95]
        cp $d
        jr nz, .asm_249b
        xor a
        jr .asm_24a2

.asm_249b
        ld a, [$c19f]
        and $f0
        or $e

.asm_24a2
        ld [$c19f], a

asm_24a5:
        ret
; 0x24a6


INCBIN "baserom.gbc", $24a6, $2596-$24a6


Function2596:
        ld a, $15
        ld [$fff2], a
        ret
; 0x259b

Function259b:
        cp $ff
        jr nz, .asm_25b4
        pop hl
        xor a
        ld [$d601], a
        ld a, [$c19f]
        and $f0
        or $c
        ld [$c19f], a
        ret

        ld d, l
        ld c, c
        ld c, d
        ld b, [hl]
        ld b, a

.asm_25b4
        cp $20
        jr z, .asm_25d7
        push af
        ld a, [$c5ab]
        ld d, a
        ld e, $1
        cp $f
        jr z, .asm_25cb
        ld e, $7
        cp $19
        jr z, .asm_25cb
        ld e, $3

.asm_25cb
        ld a, [$c170]
        add $4
        and e
        jr nz, .asm_25d6
        ld a, d
        ld [$fff3], a

.asm_25d6
        pop af

.asm_25d7
        ld d, $0
        cp $23
        jr nz, .asm_25ff
        ld a, [$c108]
        ld e, a
        inc a
        cp $5
        jr nz, .asm_25e7
        xor a

.asm_25e7
        ld [$c108], a
        ld hl, $db4f
        ld a, [$db6e]
        and a
        jr z, .asm_25f6
        ld hl, $25af

.asm_25f6
        add hl, de
        ld a, [hl]
        dec a
        cp $ff
        jr nz, .asm_25ff
        ld a, $20

.asm_25ff
        ld [$ffd8], a
        ld e, a
        ld a, $1c
        ld [MBC5RomBank], a
        ld hl, $4641
        add hl, de
        ld e, [hl]
        ld d, $0
        sla e
        rl d
        sla e
        rl d
        sla e
        rl d
        sla e
        rl d
        call RestoreROMBank
        ld hl, $5000
        add hl, de
        ld c, l
        ld b, h
        pop hl
        ld e, $10
.asm_262a
        ld a, [bc]
        ld [hli], a
        inc bc
        dec e
        jr nz, .asm_262a
        ld [hl], $0
        push hl
        ld a, $1c
        ld [MBC5RomBank], a
        ld a, [$ffd8]
        ld e, a
        ld d, $0
        xor a
        pop hl
        and a
        jr z, .asm_265a
        ld e, a
        ld a, [$c175]
        ld [hli], a
        ld a, [$c176]
        sub $20
        ld [hli], a
        ld a, $0
        ld [hli], a
        ld a, $c9
        rr e
        jr c, .asm_2657
        dec a

.asm_2657
        ld [hli], a
        ld [hl], $0

.asm_265a
        ld a, [$c170]
        add $1
        ld [$c170], a
        ld a, [$c164]
        adc $0
        ld [$c164], a
        xor a
        ld [$c1cc], a
        ld a, [$c171]
        cp $1f
        jr z, Function2685


Function2675:
        ld a, [$c19f]
        and $f0
        or $6
        ld [$c19f], a
        ld a, $0
        ld [$c172], a
        ret
; 0x2685

Function2685:
        jp Function247c
; 0x2688

Function2688:
        ld [hli], a
        ld b, d
        sbc b
        sbc c
        ld a, [$c170]
        and $1f
        jr nz, .asm_26d8
        ld a, [$c3c3]
        cp $ff
        jp z, $25a4
        cp $fe
        jp z, $258c
        ld a, [$c1cc]
        and a
        jr nz, .asm_26ad
        inc a
        ld [$c1cc], a
        call Function2596

.asm_26ad
        call Function27b2
        ld a, [$ffcc]
        bit 4, a
        jr nz, .asm_26d8
        bit 5, a
        jr z, .asm_270b
        ld a, $1c
        ld [MBC5RomBank], a
        ld a, [$db95]
        cp $7
        jp z, Function2782
        ld a, [$c173]
        ld e, a
        ld a, [$c112]
        ld d, a
        ld hl, $4741
        add hl, de
        ld a, [hl]
        and a
        jp z, Function2782

.asm_26d8
        ld e, $0
        ld a, [$c19f]
        and $80
        jr z, .asm_26e2
        inc e

.asm_26e2
        ld d, $0
        ld hl, $268a
        add hl, de
        ld a, [$c12e]
        add [hl]
        ld [$d601], a
        ld hl, $2688
        add hl, de
        ld a, [$c12f]
        add [hl]
        ld [$d602], a
        ld a, $4f
        ld [$d603], a
        ld a, [$ffe8]
        ld [$d604], a
        xor a
        ld [$d605], a
        call Function247c

.asm_270b
        ret
; 0x270c

Unknown_270c:
	db $62, $82, $98, $99

Function2710:
        ld e, $0
        ld a, [$c19f]
        and $80
        jr z, .asm_271a
        inc e

.asm_271a
        ld d, $0
        ld hl, $270e
        add hl, de
        ld a, [$c12e]
        add [hl]
        ld b, a
        ld hl, $270c

Function2728:
        add hl, de
        ld a, [$c12f]
        add [hl]
        ld c, a
        ld e, $10
.asm_2730
        ld a, c
        sub $20
        ld l, a
        ld h, b
        ld a, [bc]
        ld [hl], a
        push bc
        ld a, c
        add $20
        ld c, a
        ld a, l
        add $20
        ld l, a
        ld a, [bc]
        ld [hl], a
        ld a, l
        add $20
        ld l, a
        ld a, [$ffe8]
        ld [hl], a
        pop bc
        inc bc
        ld a, c
        and $1f
        jr nz, .asm_2754
        ld a, c
        sub $20
        ld c, a

.asm_2754
        dec e
        jr nz, .asm_2730
        ld a, $8
        ld [$c172], a
        jp Function247c
; 0x275f

Function275f:
        ret
; 0x2760

Unknown_2760:
	db $42, $62

Unknown_2762:
	db $98, $99

Function2764:
        ld e, $0
        ld a, [$c19f]
        and $80
        jr z, .asm_276e
        inc e

.asm_276e
        ld d, $0
        ld hl, Unknown_2762
        add hl, de
        ld a, [$c12e]
        add [hl]
        ld b, a
        ld hl, Unknown_2760
        call Function2728
        jp Function2675
; 0x2782

Function2782:
        ld a, $2
        ld [$c177], a
        jp Function248d
; 0x278a

Function278a:
        ld a, [$ffcc]
        bit 4, a
        jp nz, Function27ae
        and $3
        jr z, .asm_27a1
        ld hl, $c177
        ld a, [hl]
        inc a
        and $1
        ld [hl], a
        ld a, $a
        ld [$fff2], a

.asm_27a1
        ld a, [$ffe7]
        and $10
        ret z
        ld a, $17
        ld [MBC5RomBank], a
        jp $7d52
; 0x27ae

Function27ae:
        call Function248d
        ret
; 0x27b2

Function27b2:
        ld a, $17
        ld [MBC5RomBank], a
        jp $7d02
; 0x27ba

Function27ba:
        ld [$d368], a
        ld [$ffbf], a
        ld a, $38
        ld [$ffab], a
        xor a
        ld [$ffa8], a
        ret
; 0x27c7

Function27c7:
        push hl
        ld hl, $4000
        ld [hl], $0
        ld hl, $0000
        ld [hl], $a
        pop hl
        ret
; 0x27d4

Function27d4:
        ld a, $2
        ld [MBC5RomBank], a
        push bc
        call $4146
        pop bc
        jp RestoreROMBank
; 0x27e1

Function27e1:
        ld a, $38
        ld [$ffa8], a
        xor a
        ld [$ffab], a
        ret
; 0x27e9

Function27e9:
        ld a, [$ffbc]
        and a
        jr nz, .asm_27f6
        ld a, $1f
        ld [MBC5RomBank], a
        call $4003

.asm_27f6
        jp RestoreROMBank
; 0x27f9

Function27f9:
        ld a, $1
        ld [MBC5RomBank], a
        call $5f2a
        jp RestoreROMBank
; 0x2804

Function2804:
        push hl
        ld a, [$ffe7]
        ld hl, $c13d
        add [hl]
        ld hl, rLY
        add [hl]
        rrca
        ld [$c13d], a
        pop hl
        ret
; 0x2815


Function2815:
        ld a, [$c124]
        and a
        jr nz, .asm_287d
        ld a, [$db95]
        cp $b
        jr nz, .asm_2849
        ld a, [$db96]
        cp $7
        jr nz, .asm_2843
        ld a, [$c11c]
        cp $7
        jr nz, .asm_2836
        ld a, [$ff9c]
        cp $4
        jr z, .asm_2849

.asm_2836
        ld a, [$c16b]
        cp $4
        jr nz, .asm_2843
        ld a, [$ddd5]
        and a
        jr z, .asm_2849

.asm_2843
        xor a
        ld [$ffcb], a
        ld [$ffcc], a
        ret

.asm_2849
        ld a, $20
        ld [rJOYP], a
        ld a, [rJOYP]
        ld a, [rJOYP]
        cpl
        and $f
        ld b, a
        ld a, $10
        ld [rJOYP], a
        ld a, [rJOYP]
        ld a, [rJOYP]
        ld a, [rJOYP]
        ld a, [rJOYP]
        ld a, [rJOYP]
        ld a, [rJOYP]
        ld a, [rJOYP]
        ld a, [rJOYP]
        swap a
        cpl
        and $f0
        or b
        ld c, a
        ld a, [$ffcb]
        xor c
        and c
        ld [$ffcc], a
        ld a, c
        ld [$ffcb], a
        ld a, $30
        ld [rJOYP], a

.asm_287d
        ret
; 0x287e

Function287e:
        push bc
        ld a, [$ffcd]
        ld hl, $ff97
        add [hl]
        and $f8
        srl a
        srl a
        srl a
        ld de, $0000
        ld e, a
        ld hl, $9800
        ld b, $20
.asm_2896
        add hl, de
        dec b
        jr nz, .asm_2896
        push hl
        ld a, [$ffce]
        ld hl, $ff96
        add [hl]
        pop hl
        and $f8
        srl a
        srl a
        srl a
        ld de, $0000
        ld e, a
        add hl, de
        ld a, h
        ld [$ffcf], a
        ld a, l
        ld [$ffd0], a
        pop bc
        ret
; 0x28b7

Function28b7:
        ld e, a
        ld d, $0
        sla e
        rl d
        pop hl
        add hl, de
        ld e, [hl]
        inc hl
        ld d, [hl]
        ld l, e
        ld h, d
        jp [hl]
; 0x28c6


Function28c6:
        ld a, [rIE]
        ld [$ffd2], a
        res 0, a
        ld [rIE], a
.asm_28ce
        ld a, [rLY]
        cp $91
        jr nz, .asm_28ce
        ld a, [rLCDC]
        and $7f
        ld [rLCDC], a
        ld a, [$ffd2]
        ld [rIE], a
        ret
; 0x28df

Function28df:
        ld a, $1
        call ChangeROMBank
        jp $6da6
; 0x28e7

Function28e7:
        ld a, $7e
        ld bc, $0400
        jr asm_28f3

Function28ee:
        ld a, $7f
        ld bc, $0800

asm_28f3:
        ld d, a
        ld hl, $9800
.asm_28f7
        ld a, d
        ld [hli], a
        dec bc
        ld a, b
        or c
        jr nz, .asm_28f7
        ret
; 0x28ff

Function28ff:
        ld [MBC5RomBank], a
        call CopyBytes
        ld a, $1
        ld [MBC5RomBank], a
        ret


CopyBytes: ; 0x290b:
; Copy 'bc' bytes from 'hl' to 'de'
.loop
        ld a, [hli]
        ld [de], a
        inc de
        dec bc
        ld a, b
        or c
        jr nz, .loop
        ret
; 0x2914

Function2914:
asm_2914:
        inc de
        ld h, a
        ld a, [de]
        ld l, a
        inc de
        ld a, [de]
        inc de
        call Function2938

Function291e:
        ld a, [$c124]
        and a
        jr nz, asm_2933

Function2924:
        ld a, [de]
        and a
        jr nz, asm_2914
        ret

asm_2929:
        inc de
        ld h, a
        ld a, [de]
        ld l, a
        inc de
        ld a, [de]
        inc de
        call Function2988

asm_2933:
        ld a, [de]
        and a
        jr nz, asm_2929
        ret
; 0x2938

Function2938:
        push af
        and $3f
        ld b, a
        inc b
        pop af
        rlca
        rlca
        and $3
        jr z, .asm_294c
        dec a
        jr z, .asm_295d
        dec a
        jr z, .asm_296e
        jr .asm_297b

.asm_294c
        ld a, [de]
        ld [hli], a
        ld a, l
        and $1f
        jr nz, .asm_2958
        dec hl
        ld a, l
        and $e0
        ld l, a

.asm_2958
        inc de
        dec b
        jr nz, .asm_294c
        ret

.asm_295d
        ld a, [de]
        ld [hli], a
        ld a, l
        and $1f
        jr nz, .asm_2969
        dec hl
        ld a, l
        and $e0
        ld l, a

.asm_2969
        dec b
        jr nz, .asm_295d
        inc de
        ret

.asm_296e
        ld a, [de]
        ld [hl], a
        inc de
        ld a, b
        ld bc, $0020
        add hl, bc
        ld b, a
        dec b
        jr nz, .asm_296e
        ret

.asm_297b
        ld a, [de]
        ld [hl], a
        ld a, b
        ld bc, $0020
        add hl, bc
        ld b, a
        dec b
        jr nz, .asm_297b
        inc de
        ret
; 0x2988

Function2988:
        push af
        and $3f
        ld b, a
        inc b
        pop af
        and $80
        jr nz, .asm_29a7
.asm_2992
        ld a, [de]
        cp $ee
        jr z, .asm_29a2
        ld [hli], a
        ld a, l
        and $1f
        jr nz, .asm_29a2
        dec hl
        ld a, l
        and $e0
        ld l, a

.asm_29a2
        inc de
        dec b
        jr nz, .asm_2992
        ret

.asm_29a7
        ld a, [de]
        cp $ee
        jr z, .asm_29ad
        ld [hl], a

.asm_29ad
        inc de
        ld a, b
        ld bc, $0020
        add hl, bc
        ld b, a
        dec b
        jr nz, .asm_29a7
        ret
; 0x29b8

Function29b8:
        ld bc, $1600
        jr asm_29d3

        ld bc, $1300
        jr asm_29d3

        ld bc, $002f
        jr asm_29ca

Function29c7:
        ld bc, $006d

asm_29ca:
        ld hl, hff90
        call Function29d6
        ld bc, $1f00

asm_29d3:
        ld hl, $c000


Function29d6:
        ld a, [$fffe]
        push af
.asm_29d9
        xor a
        ld [hli], a
        dec bc
        ld a, b
        or c
        jr nz, .asm_29d9
        pop af
        ld [$fffe], a
        ret
; 0x29e4

Function29e4:


INCBIN "baserom.gbc", $29e4, $2a09-$29e4


Function2a09:
        ld a, $8
        ld [MBC5RomBank], a
        ld hl, $4ad4
        ld a, [$fff7]
        cp $ff
        jr nz, .asm_2a1a
        ld hl, $4bd4

.asm_2a1a
        add hl, de
        ld a, [hl]
        ret
; 0x2a1d

Function2a1d:
        call Function2a09
        jp RestoreROMBank
; 0x2a23


INCBIN "baserom.gbc", $2a23, $2bc6-$2a23


Function2bc6:
        ld a, $c
        call Function80e
        ld hl, $4000
        ld de, $8000
        ld bc, $0400
        call CopyBytes
        ld a, $c
        call Function80e
        ld hl, $4800
        ld de, $8800
        ld bc, $1000
        call CopyBytes
        ld hl, $47a0
        ld de, $8e00
        ld bc, $0020
        call CopyBytes
        ld a, $1
        call ChangeROMBank
        ret
; 0x2bfa


INCBIN "baserom.gbc", $2bfa, $3939-$2bfa


Function3939:
        ld a, $3
        ld [MBC5RomBank], a
        call $53df
        jp RestoreROMBank
; 0x3944

Function3944:
        ld a, $14
        ld [MBC5RomBank], a
        call $54a9
        jp RestoreROMBank
; 0x394f

Function394f:
       ld a, $1
        call ChangeROMBank
        call $6076
        ld a, $2
        jp ChangeROMBank
; 0x395c

Function395c:
        ld a, $3
        ld [MBC5RomBank], a
        call $485b
        jp RestoreROMBank
; 0x3967

Function3967:
        ld a, $3
        ld [MBC5RomBank], a
        call $7ef7
        jp RestoreROMBank
; 0x3972

Function3972:
        ld a, $14
        ld [MBC5RomBank], a
        call $5344
        ld a, $3
        ld [MBC5RomBank], a
        ret
; 0x3980

Unknown_3980:
	db $00, $08, $10, $18

Function3984:
        ld hl, $c5a7
        ld a, [hl]
        and a
        jr z, .asm_3992
        dec [hl]
        jr nz, .asm_3992
        ld a, $10
        ld [$fff3], a

.asm_3992
        ld a, [$c19f]
        and a
        jr nz, .asm_39a5
        ld a, [$c111]
        ld [$c1a8], a
        and a
        jr z, .asm_39a5
        dec a
        ld [$c111], a

.asm_39a5
        ld a, [$c11c]
        cp $7
        ret z
        xor a
        ld [$c3c1], a
        ld a, [$fff7]
        cp $a
        ld a, [$ffe7]
        jr c, .asm_39b8
        xor a

.asm_39b8
        and $3
        ld e, a
        ld d, $0
        ld hl, Unknown_3980
        add hl, de
        ld a, [hl]
        ld [$c3c0], a
        ld a, BANK(Function80303)
        ld [MBC5RomBank], a
        call Function80303
        xor a
        ld [MBC5RomBank], a
        ld a, [$c19f]
        and a
        jr nz, .asm_39da
        ld [$c1ad], a

.asm_39da
        ld a, BANK(Function8235e)
        ld [$dbaf], a
        ld [MBC5RomBank], a
        call Function8235e
        ld b, $0
        ld c, $f
.asm_39e9
        ld a, c
        ld [$c123], a
        ld hl, $c280
        add hl, bc
        ld a, [hl]
        and a
        jr z, .asm_39fa
        ld [$ffea], a
        call Function3a0f

.asm_39fa
        dec c
        ld a, c
        cp $ff
        jr nz, .asm_39e9
        ret
; 0x3a01

Function3a01:
        ld a, BANK(Function54000) ; $15
        ld [MBC5RomBank], a
        call Function54000 ; $4000
        ld a, $3
        ld [MBC5RomBank], a
        ret
; 0x3a0f

Function3a0f:
        ld hl, $c3a0
        add hl, bc
        ld a, [hl]
        ld [$ffeb], a
        ld hl, $c290
        add hl, bc
        ld a, [hl]
        ld [$fff0], a
        ld hl, $c3b0
        add hl, bc
        ld a, [hl]
        ld [$fff1], a
        ld a, $19
        ld [$dbaf], a
        ld [MBC5RomBank], a
        ld a, [$ffeb]
        cp $6a
        jr nz, .asm_3a37
        ld a, [$ffb2]
        and a
        jr nz, .asm_3a3d

.asm_3a37
        ld a, [$ffea]
        cp $7
        jr nz, .asm_3a45

.asm_3a3d
        call $7986
        call Function3d81
        jr .asm_3a4b

.asm_3a45
        call Function3d81
        call $7986

.asm_3a4b
        ld a, $14
        ld [$dbaf], a
        ld [MBC5RomBank], a
        call $4d73
        ld a, $3
        ld [$dbaf], a
        ld [MBC5RomBank], a
        ld a, [$ffea]
        cp $5
        jp z, Function3a84
        rst $0
        nop
        ld a, [hld]
        ld de, $b155
        ld c, h
        ld c, b
        ld c, h
        or l
        ld c, b
        add h
        ld a, [hld]
        ld bc, $294e
        ld d, a
        adc a
        ld c, l
        call Function3a84
        ld a, $3
        ld [$dbaf], a
        ld [MBC5RomBank], a
        ret
; 0x3a84

Function3a84:
        ld a, BANK(Unknown_80000)
        ld [MBC5RomBank], a
        ld a, [$ffeb]
        ld e, a
        ld d, b
        ld hl, Unknown_80000
        add hl, de
        add hl, de
        add hl, de
        ld e, [hl]
        inc hl
        ld d, [hl]
        inc hl
        ld a, [hl]
        ld l, e
        ld h, d
        ld [$dbaf], a
        ld [MBC5RomBank], a
        jp [hl]
; 0x3aa1

Function3aa1:


INCBIN "baserom.gbc", $3aa1, $3b0f-$3aa1

Function3b0f:
        ld a, $2
        ld [MBC5RomBank], a
        call $763a
        jp RestoreROMBank
; 0x3b1a

Function3b1a:
        ld a, $3
        ld [MBC5RomBank], a
        call $7889
        jp RestoreROMBank
; 0x3b25

Function3b25:
        ld a, $3
        ld [MBC5RomBank], a
        call $7ca7
        jp RestoreROMBank
; 0x3b30

Function3b30:
        ld a, $3
        ld [MBC5RomBank], a
        call $6e1d
        jp RestoreROMBank
; 0x3b3b

Function3b3b:
        ld a, $3
        ld [MBC5RomBank], a
        call $6c60
        jp RestoreROMBank
; 0x3b46

Function3b46:
        ld a, $3
        ld [MBC5RomBank], a
        call $6bd3
        jp RestoreROMBank
; 0x3b51

Function3b51:
        ld a, $3
        ld [MBC5RomBank], a
        call $6c6c
        jp RestoreROMBank
; 0x3b5c

Function3b5c:
        ld a, $3
        ld [MBC5RomBank], a
        call $73e3
        jp RestoreROMBank
; 0x3b67

Function3b67:
        ld a, $3
        ld [MBC5RomBank], a
        call $6e20
        jp RestoreROMBank
; 0x3b72

Function3b72:
        ld a, $3
        ld [MBC5RomBank], a
        call $7598
        jp RestoreROMBank
; 0x3b7d

Function3b7d:
        push af
        ld a, $3
        ld [MBC5RomBank], a
        pop af
        call $64c6
        rr l
        call RestoreROMBank
        rl l
        ret
; 0x3b8f

Function3b8f:
        push af
        ld a, $3
        ld [MBC5RomBank], a
        pop af
        call $64c8
        rr l
        call RestoreROMBank
        rl l
        ret
; 0x3ba1

Function3ba1:
        ld hl, MBC5RomBank
        ld [hl], $3
        call $7ec0
        jp RestoreROMBank
; 0x3bac

Function3bac:
        ld hl, MBC5RomBank
        ld [hl], $3
        call $7e3e
        jp RestoreROMBank
; 0x3bb7

Function3bb7:
        ld a, [$fff1]
        inc a
        ret z
        call Function3d4e
        push de
        ld a, [$c3c0]
        ld e, a
        ld d, b
        ld hl, $c030
        add hl, de
        ld e, l
        ld d, h
        ld a, [$ffec]
        ld [de], a
        inc de
        ld a, [$c155]
        ld c, a
        ld a, [$ffed]
        and $20
        rra
        rra
        ld hl, $ffee
        add [hl]
        sub c
        ld [de], a
        inc de
        ld a, [$fff1]
        ld c, a
        ld b, $0
        sla c
        rl b
        sla c
        rl b
        pop hl
        add hl, bc
        ld a, [$fff5]
        ld c, a
        ld a, [hli]
        add c
        ld [de], a
        and $f
        cp $f
        jr nz, .asm_3bff
        dec de
        ld a, $f0
        ld [de], a
        inc de

.asm_3bff
        inc de
        ld a, [hli]
        push hl
        ld hl, $ffed
        xor [hl]
        ld [de], a
        ld a, [$fffe]
        and a
        jr z, .asm_3c18
        ld a, [$ffed]
        and $10
        jr z, .asm_3c18
        ld a, [de]
        and $f8
        or $4
        ld [de], a

.asm_3c18
        inc de
        ld a, [$ffec]
        ld [de], a
        inc de
        ld a, [$c155]
        ld c, a
        ld a, [$ffed]
        and $20
        xor $20
        rra
        rra
        ld hl, $ffee
        sub c
        add [hl]
        ld [de], a
        inc de
        pop hl
        ld a, [$fff5]
        ld c, a
        ld a, [hli]
        add c
        ld [de], a
        and $f
        cp $f
        jr nz, .asm_3c42
        dec de
        ld a, $f0
        ld [de], a
        inc de

.asm_3c42
        inc de
        ld a, [hl]
        ld hl, $ffed
        xor [hl]
        ld [de], a
        ld a, [$fffe]
        and a
        jr z, asm_3c5a
        ld a, [$ffed]
        and $10
        jr z, asm_3c5a
        ld a, [de]
        and $f8
        or $4
        ld [de], a

asm_3c5a:
        ld a, [$c123]
        ld c, a
        ld b, $0
        ld a, $15
        ld [MBC5RomBank], a
        call $795f
asm_3c68:
        call $7997
        jp RestoreROMBank
; 0x3c6e

Function3c6e:
        ld a, [$fff1]
        inc a
        ret z
        call Function3d4e
        push de
        ld a, [$c3c0]
        ld l, a
        ld h, $0
        ld bc, $c030
        add hl, bc
        ld e, l
        ld d, h
        ld a, [$c123]
        ld c, a
        ld b, $0
        ld a, [$fff9]
        and a
        ld a, [$ffec]
        jr z, .asm_3c93
        sub $4
        ld [$ffec], a

.asm_3c93
        ld [de], a
        inc de
        ld a, [$c155]
        ld h, a
        ld a, [$ffee]
        add $4
        sub h
        ld [de], a
        inc de
        ld a, [$fff1]
        ld c, a
        ld b, $0
        sla c
        rl b
        pop hl
        add hl, bc
        ld a, [hli]
        ld [de], a
        inc de
        ld a, [$fffe]
        and a
        jr z, .asm_3cc7
        ld a, [$db95]
        cp $1
        jr z, .asm_3cc7
        ld a, [$ffed]
        and a
        jr z, .asm_3cc7
        ld a, [hl]
        and $f8
        or $4
        ld [de], a
        jr .asm_3ccd

.asm_3cc7
        ld a, [hli]
        ld hl, $ffed
        xor [hl]
        ld [de], a

.asm_3ccd
        inc de
        jr asm_3c5a ; 0x3cce $8a
; 0x3cd0

Function3cd0:
        ld a, $15
        ld [MBC5RomBank], a
        jr asm_3c68 ; 0x3cd5 $91
; 0x3cd7

Function3cd7:
        push hl
        ld hl, $c000
        jr Function3ced

Function3cdd:
        ld a, [$fff1]
        inc a
        jr z, asm_3d49
        push hl
        ld a, [$c3c0]
        ld e, a
        ld d, $0
        ld hl, $c030
        add hl, de

Function3ced:
        ld e, l
        ld d, h
        pop hl
        ld a, c
        ld [$ffd7], a
        ld a, [$c123]
        ld c, a
        call Function3d4e
        ld a, [$ffd7]
        ld c, a
.asm_3cfd
        ld a, [$ffec]
        add [hl]
        ld [de], a
        inc hl
        inc de
        push bc
        ld a, [$c155]
        ld c, a
        ld a, [$ffee]
        add [hl]
        sub c
        ld [de], a
        inc hl
        inc de
        ld a, [$fff5]
        ld c, a
        ld a, [hli]
        push af
        add c
        ld [de], a
        pop af
        cp $ff
        jr nz, .asm_3d1f
        dec de
        xor a
        ld [de], a
        inc de

.asm_3d1f
        pop bc
        inc de
        ld a, [$ffed]
        xor [hl]
        ld [de], a
        inc hl
        ld a, [$fffe]
        and a
        jr z, .asm_3d36
        ld a, [$ffed]
        and a
        jr z, .asm_3d36
        ld a, [de]
        and $f8
        or $4
        ld [de], a

.asm_3d36
        inc de
        dec c
        jr nz, .asm_3cfd
        ld a, [$c123]
        ld c, a
        ld a, $15
        ld [MBC5RomBank], a
        call $795f
        jp RestoreROMBank

asm_3d49:
        ld a, [$c123]
        ld c, a
        ret
; 0x3d4e

Function3d4e:
        push hl
        ld a, [$c124]
        and a
        jr z, .asm_3d74
        ld a, [$ffee]
        dec a
        cp $c0
        jr nc, .asm_3d73
        ld a, [$ffec]
        dec a
        cp $88
        jr nc, .asm_3d73
        ld hl, $c220
        add hl, bc
        ld a, [hl]
        and a
        jr nz, .asm_3d73
        ld hl, $c230
        add hl, bc
        ld a, [hl]
        and a
        jr z, .asm_3d74

.asm_3d73
        pop af

.asm_3d74
        pop hl
        ret
; 0x3d76

Function3d76:
        ld hl, $c240
        add hl, bc
        ld [hl], b
        ld hl, $c250
        add hl, bc
        ld [hl], b
        ret
; 0x3d81


Function3d81:
        ld hl, $c200
        add hl, bc
        ld a, [hl]
        ld [$ffee], a
        ld hl, $c210
        add hl, bc
        ld a, [hl]
        ld [$ffef], a
        ld hl, $c310
        add hl, bc
        sub [hl]
        ld [$ffec], a
        ret
; 0x3d97

Function3d97:
        ld hl, MBC5RomBank
        ld [hl], $15
        call $7966
        jp RestoreROMBank
; 0x3da2

Function3da2:
        ld hl, MBC5RomBank
        ld [hl], $4
        call $5a1a
        jp RestoreROMBank
; 0x3dad

Function3dad:
        ld hl, MBC5RomBank
        ld [hl], $4
        call $5690
        jp RestoreROMBank
; 0x3db8

Function3db8:
        ld hl, MBC5RomBank
        ld [hl], $4
        call $504b
        jp RestoreROMBank
; 0x3dc3

Function3dc3:
        ld hl, MBC5RomBank
        ld [hl], $4
        call $49bd
        jp RestoreROMBank
; 0x3dce

Function3dce:
        ld hl, MBC5RomBank
        ld [hl], $36
        call $72c6
        jp RestoreROMBank
; 0x3dd9

Function3dd9:
        ld hl, MBC5RomBank
        ld [hl], $5
        call $6cdf
        jp RestoreROMBank
; 0x3de4

Function3de4:
        ld hl, MBC5RomBank
        ld [hl], $5
        call $6831
        jp RestoreROMBank
; 0x3def

Function3def:
        ld hl, MBC5RomBank
        ld [hl], $5
        call $631b
        jp RestoreROMBank
; 0x3dfa

Function3dfa:
        ld hl, MBC5RomBank
        ld [hl], $5
        call $5a1e
        jp RestoreROMBank
; 0x3e05

Function3e05:
        ld hl, MBC5RomBank
        ld [hl], $5
        call $556b
        jp RestoreROMBank
; 0x3e10

Function3e10:
        ld a, [$dbaf]
        push af
        ld a, $2
        call ChangeROMBank
        call $6c91
        pop af
        jp ChangeROMBank
; 0x3e20

Function3e20:
        ld hl, MBC5RomBank
        ld [hl], $4
        call $5c63
        jp RestoreROMBank
; 0x3e2b

Function3e2b:
        ld hl, MBC5RomBank
        ld [hl], $3
        call $5400
        jp RestoreROMBank
; 0x3e36

Function3e36:
        ld hl, MBC5RomBank
        ld [hl], $2
        call $62ef
        call $6435
        jp RestoreROMBank
; 0x3e44

Function3e44:
        ld a, $2
        call ChangeROMBank
        call $41d0
        ld a, $3
        jp ChangeROMBank
; 0x3e51

Function3e51:
        ld hl, MBC5RomBank
        ld [hl], $20
        ld c, $1
        ld b, $0
        ld e, $ff
        call $5ca8
        jp RestoreROMBank
; 0x3e62

Function3e62:
        ld hl, MBC5RomBank
        ld [hl], $3
        call $646e
        jp RestoreROMBank
; 0x3e6d

Function3e6d:
        ld a, $6
        call ChangeROMBank
        call $7838
        ld a, $3
        jp ChangeROMBank
; 0x3e7a

Function3e7a:
        ld e, $10
        ld hl, $c280
.asm_3e7f
        xor a
        ld [hli], a
        dec e
        jr nz, .asm_3e7f
        ret
; 0x3e85

Function3e85:
        ld hl, $c4a0
        add hl, bc
        ld a, [hl]
        and a
        ret z
        ld a, [$ffe7]
        xor c
        and $3
        ret nz
        ld a, [$ffee]
        ld [$ffd7], a
        ld a, [$ffec]
        ld [$ffd8], a
        ld a, $8
        call Functioncc3
        ld hl, $c520
        add hl, de
        ld [hl], $f
        ret
; 0x3ea6

Function3ea6:
        ld hl, $c3f0
        add hl, bc
        ld a, [hl]
        bit 7, a
        jr z, .asm_3eb1
        cpl
        inc a

.asm_3eb1
        ld [$ffd7], a
        ld hl, $c400
        add hl, bc
        ld a, [hl]
        bit 7, a
        jr z, .asm_3ebe
        cpl
        inc a

.asm_3ebe
        ld e, $3
        ld hl, $ffd7
        cp [hl]
        jr c, .asm_3ec8
        ld e, $c

.asm_3ec8
        ld a, e
        ld hl, $c2a0
        add hl, bc
        and [hl]
        jr z, .asm_3ed5
        ld hl, $c410
        add hl, bc
        ld [hl], b

.asm_3ed5
        ret
; 0x3ed6

Unknown_3ed6:
        or b
        or h
        or c
        or d
        or e
        or [hl]
        cp d
        cp h
        cp b
        ld hl, $c14f
        ld a, [$c124]
        or [hl]
        ret nz
        ld a, [$c165]
        and a
        jr z, .asm_3ef2
        dec a
        ld [$c165], a
        ret

.asm_3ef2
        ld a, [$c1bd]
        and a
        ret nz
        inc a
        ld [$c1bd], a
        ld hl, $c430
        add hl, bc
        ld a, [hl]
        and $4
        ld a, $19
        jr z, .asm_3f08
        ld a, $50

.asm_3f08
        ld [$d368], a
        ld [$ffbd], a
        ld a, [$c16b]
        cp $4
        ret nz
        ld a, [$ffeb]
        cp $87
        jr nz, .asm_3f1d
        ld a, $da
        jr .asm_3f3c

.asm_3f1d
        cp $bc
        jr nz, .asm_3f25
        ld a, $26
        jr .asm_3f3c

.asm_3f25
        ld hl, $c430
        add hl, bc
        ld a, [hl]
        and $4
        ret nz
        ld a, [$fff7]
        cp $ff
        ret z
        cp $5
        ret z
        ld e, a
        ld d, b
        ld hl, Unknown_3ed6
        add hl, de
        ld a, [hl]

.asm_3f3c
        jp Function237c
; 0x3f3f

Unknown_3f3f:
        db $01, $02, $04, $08, $10, $20, $40, $80
; 0x3f47

Function3f47:
        ld a, $3
        ld [$c113], a
        ld [MBC5RomBank], a
        call $55c6
        call RestoreROMBank
        ld hl, $c460
        add hl, bc
        ld a, [hl]
        cp $ff
        jr z, .asm_3f84
        push af
        ld a, [$dbb5]
        ld e, a
        ld d, b
        inc a
        ld [$dbb5], a
        ld a, [hl]
        ld hl, $dbb6
        add hl, de
        ld [hl], a
        pop af
        cp $8
        jr nc, .asm_3f84
        ld e, a
        ld d, b
        ld hl, Unknown_3f3f
        add hl, de
        ld a, [$fff6]
        ld e, a
        ld d, b
        ld a, [hl]
        ld hl, $cf00
        add hl, de
        or [hl]
        ld [hl], a

.asm_3f84
        ld hl, $c280
        add hl, bc
        ld [hl], b
        ret
; 0x3f8a

Function3f8a:
        ld a, $5
        ld [MBC5RomBank], a
        ld hl, $59de
        ld de, $8460
        ld bc, $0010
        call CopyBytes
        ld hl, $59ee
        jr asm_3fb4

Function3fa0:
        ld a, $5
        ld [MBC5RomBank], a
        ld hl, $59fe
        ld de, $8460
        ld bc, $0010
        call CopyBytes
        ld hl, $5a0e

asm_3fb4
        ld de, $8480
        ld bc, $0010
        call CopyBytes
        xor a
        ld [$ffa5], a
        ld a, $c
        ld [MBC5RomBank], a
        jp Function1d31
; 0x3fc8

Function3fc8:
        ld b, $34
        ld a, [$fffe]
        and a
        jr z, .asm_3fd0
        inc b

.asm_3fd0
        ld a, b
        ld [MBC5RomBank], a
        ld hl, $4000
        ld de, $8400
        ld bc, $0400
        call CopyBytes
        ld a, $20
        ld [MBC5RomBank], a
        ret
; 0x3fe6

Function3fe6:
        ld [MBC5RomBank], a
        ret
; 0x3fea


INCBIN "baserom.gbc", $3fea, $4000-$3fea
