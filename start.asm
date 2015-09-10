
SECTION "Home", ROM0[$150]

_Start: ; 0x150
;INCBIN "baserom.gbc", $150, $1da-$150
        cp $11
        jr nz, .asm_16e
        ld a, [$ff4d]
        and $80
        jr nz, .asm_167
        ld a, $30
        ld [$ff00], a
        ld a, $1
        ld [$ff4d], a
        xor a
        ld [$ffff], a
        stop
;        nop

.asm_167
        xor a
        ld [$ff70], a
        ld a, $1
        jr .asm_16f

.asm_16e
        xor a

.asm_16f
        ld [$fffe], a
        call Function28c6
        ld sp, $dfff
        ld a, $3c
        ld [$2100], a
        call $6a22
        xor a
        ld [$ff47], a
        ld [$ff48], a
        ld [$ff49], a
        ld hl, $8000
        ld bc, $1800
        call Function29d6
        ld a, $24
        ld [$2100], a
        call $5c00
        call $28ee
        call $29c7
        ld a, $1
        ld [$2100], a
        call $6df5
        call $ffc0
        call $4110
        call $2bc6
        ld a, $44
        ld [$ff41], a
        ld a, $4f
        ld [$ff45], a
        ld a, $1
        ld [$dbaf], a
        ld a, $1
        ld [$ffff], a
        call $46ad
        ld a, $1f
        ld [$2100], a
        call $4000
        ld a, $18
        ld [$ffb5], a
        ei
        ld a, $20
        ld [$2100], a
        call $4854
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
        ld [$ff42], a
        ld a, [$ff96]
        ld hl, $c155
        add [hl]
        ld hl, $c1bf
        add [hl]
        ld [$ff43], a
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
        call $0416
        ei
        call Function89f
        call Function89f
        jp Function35c

.asm_23a
        ld a, [$d6fd]
        and $7f
        ld e, a
        ld a, [$ff40]
        and $80
        or e
        ld [$ff40], a
        ld hl, $ffe7
        inc [hl]
        ld a, [$db95]
        cp $0
        jr nz, .asm_261
        ld a, [$db96]
        cp $8
        jr c, .asm_261
        ld a, $20
        ld [$2100], a
        call $5263

.asm_261
        ld a, [$c17f]
        and a
        jp z, $02d2
        inc a
        jr nz, .asm_276
.asm_26b
        ld a, $17
        ld [$2100], a
        call $48d7
        jp $02d2

.asm_276
        inc a
        jr z, .asm_26b
        ld a, $14
        ld [$2100], a
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
        jp $02d2

.asm_29d
        push af
        cp $60
        jr c, .asm_2b4
        ld a, [$fffe]
        and a
        jr z, .asm_2b1
        ld a, $20
        ld [$2100], a
        call $6caf
        jr .asm_2b4

.asm_2b1
        call $4fe8

.asm_2b4
        ld a, $14
        ld [$2100], a
        pop af
        call $5038
        call Function89f
        ld a, [$db97]
        ld [$ff47], a
        ld a, [$db98]
        ld [$ff48], a
        ld a, [$db99]
        ld [$ff49], a
        jp Function35c
; 0x2d2

Function2d2:
        ld a, [$db9a]
        ld [$ff4a], a
        ld a, [$db97]
        ld [$ff47], a
        ld a, [$db98]
        ld [$ff48], a
        ld a, [$db99]
        ld [$ff49], a
        call Function89f
        call $2815
        ld a, [$ff90]
        ld hl, $ff91
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
        call Function807
        call $5ff1

.asm_340
        call $0e30
        ld a, [$fffe]
        and a
        jr z, .asm_350
        ld a, $21
        call Function807
        call $406e

.asm_350
        xor a
        ld [$ddd2], a
        ld a, $1
        call Function807
        call $600e

Function35c:
asm_35c:
        ld a, $1f
        call Function807
        call $7f80
        ld a, $c
        call Functionb07
        call Function807
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
        jr nz, .asm_3ae
        ld b, b
        ld h, b
        nop
        jr nc, .asm_3d9
        ld l, b
        nop
        di
        push af
        push hl
        push de
        push bc
        ld a, [$ff70]
        ld c, a
        xor a
        ld [$ff70], a
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
        ld [$ff42], a
        jp $03fc

.asm_3aa
        cp $0
        jr nz, .asm_3f9

.asm_3ae
        ld a, [$c105]
        ld e, a
        ld d, $0
        ld hl, $c100
        add hl, de
        ld a, [hl]
        ld hl, $ff96
        add [hl]
        ld [$ff43], a
        ld a, [$db96]
        cp $6
        jr c, .asm_3d6
        ld hl, $0381
        add hl, de
        ld a, [hl]
        ld [$ff45], a
        ld a, e
        inc a
        and $3
        ld [$c105], a
        jr .asm_3fc

.asm_3d6
        ld hl, $037c

.asm_3d9
        add hl, de
        ld a, [hl]
        ld [$ff45], a
        ld a, e
        inc a
        cp $5
        jr nz, .asm_3e4
        xor a

.asm_3e4
        ld [$c105], a
        nop
        cp $4
        jr nz, .asm_3fc
        ld a, [$c106]
        ld [$ff42], a
        cpl
        inc a
        add $60
        ld [$ff45], a
        jr .asm_3fc

.asm_3f9
        xor a
        ld [$ff43], a

.asm_3fc
        ld a, c
        ld [$ff70], a
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
        ld [$2100], a
        call $4601
        ld a, [$dbaf]
        ld [$2100], a
        pop af
        reti
; 0x416

Function416:
        ld a, [$d6fe]
        and a
        jr z, .asm_437
        ld [$ddd2], a
        cp $23
        jr z, .asm_428
        push af
        call Function28c6
        pop af

.asm_428
        call $042d
        jr .asm_45a

        ld e, a
        ld a, $20
        ld [$2100], a
        call $4657
        jp [hl]

.asm_437
        call Function28c6
        ld a, $24
        ld [$2100], a
        call $5c2c
        ld a, $20
        ld [$2100], a
        call $4577
        ld a, $8
        ld [$2100], a
        call $2924
        ld a, $c
        call Functionb07
        ld [$2100], a

.asm_45a
        xor a
        ld [$d6ff], a
        ld [$d6fe], a
        ld a, [$d6fd]
        ld [$ff40], a
        ret
; 0x467

Function467:
        rlca
        add hl, bc
        push af
        push bc
        push de
        push hl
        ld a, [$ff70]
        and $7
        ld c, a
        xor a
        ld [$ff70], a
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
        ld a, [$fffd]
        and a
        jp nz, $0566
        ld a, [$c19f]
        and $7f
        jr z, .asm_4c9
        cp $1
        jr z, .asm_4c9
        cp $5
        jr nc, .asm_4a9
        call $23db
        ld hl, $c19f
        inc [hl]
        jp $0566

.asm_4a9
        cp $a
        jr nz, .asm_4b3
        call $2710
        jp $0566

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
        call $2764
        jp $0566

.asm_4c9
        ld a, [$db95]
        cp $e
        jr c, .asm_4e1
        ld a, [$db96]
        cp $6
        jr c, .asm_528
        ld a, $38
        ld [$2100], a
        call $785a
        jr .asm_528

.asm_4e1
        ld a, [$d6fe]
        and a
        jr nz, .asm_566
        ld a, [$ff90]
        ld [$ffe8], a
        ld hl, $ff91
        or [hl]
        ld hl, $c10e
        or [hl]
        jr z, .asm_506
        call $05b9
        ld a, [$ffe8]
        cp $8
        jr nc, .asm_501
.asm_4fe
        call Function1d31

.asm_501
        call $ffc0
        jr .asm_566

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
        call $1ed9
        jr .asm_4fe

.asm_51e
        ld a, [$db95]
        cp $d
        jr z, .asm_528
        call $1b08

.asm_528
        ld a, [$fffe]
        and a
        jr z, .asm_535
        ld a, $24
        ld [$2100], a
        call $5c1a

.asm_535
        ld de, $d601
        call $291e
        xor a
        ld [$d600], a
        ld [$d601], a
        ld [$dc90], a
        ld [$dc91], a
        ld a, $36
        ld [$2100], a
        call $7310
        call $ffc0
        ld a, [$fffe]
        and a
        jr z, .asm_566
        ld a, $21
        ld [$2100], a
        call $4000
        ld a, [$dbaf]
        ld [$2100], a

.asm_566
        ei
asm_567:
        pop bc
        ld a, c
        ld [$ff70], a
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
        ld a, [$fffd]
        and a
        jr nz, .asm_5a8
        call $ffc0
        ld a, [$fffe]
        and a
        jr z, .asm_595
        ld a, $21
        call Function807
        call $4000
        ld a, $24
        call Function807
        call $5c1a

.asm_595
        ld de, $d601
        call $291e
        xor a
        ld [$d600], a
        ld [$d601], a
        ld [$dc90], a
        ld [$dc91], a

.asm_5a8
        ld a, $28
        call Function807
        call $4616
        pop af
        ld [$dbaf], a
        ld [$2100], a
        jr asm_567 ; 0x5b7 $ae
; 0x5b9

Function5b9:
        ld a, [$ff90]
        and a
        jp z, $069a
        cp $7
        jp z, $07ab
        cp $3
        jp z, $0062
        cp $4
        jp z, $006a
        cp $5
        jp z, $0072
        cp $6
        jp z, $007a
        cp $8
        jp nc, $07ce
        ld a, [$dba5]
        and a
        jr z, .asm_652
        ld a, [$ff90]
        cp $2
        jp z, $0821
        ld a, $d
        call Functionb07
        ld [$2100], a
        ld a, [$ff92]
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
        ld a, [$fff7]
        cp $ff
        jr nz, .asm_62b
        ld a, $20
        ld [$2100], a
        call $4616
        ld [$2100], a
        jr .asm_63d

.asm_62b
        ld a, [$ff94]
        add $50
        ld h, a
        add hl, bc
        ld a, [$ffbb]
        and a
        jr z, .asm_63d
        ld a, [$ff92]
        dec a
        cp $2
        jr c, .asm_643

.asm_63d
        ld bc, $0040
        call Function290b

.asm_643
        ld a, [$ff92]
        inc a
        ld [$ff92], a
        cp $4
        jr nz, .asm_651
        xor a
        ld [$ff90], a
        ld [$ff92], a

.asm_651
        ret

.asm_652
        ld a, $f
        call Functionb07
        ld [$2100], a
        ld a, [$ff92]
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
        ld a, [$ff94]
        add $40
        ld h, a
        ld l, $0
        add hl, bc
        ld bc, $0040
        call Function290b
        ld a, [$ff92]
        inc a
        ld [$ff92], a
        cp $8
        jr nz, .asm_699
        xor a
        ld [$ff90], a
        ld [$ff92], a

.asm_699
        ret
; 0x69a

Function69a:
        ld a, [$fffe]
        and a
        jr z, .asm_6c7
        ld a, [$fff7]
        cp $ff
        jr nz, .asm_6c7
        ld a, $20
        ld [$2100], a
        call $475a
        xor a
        ld [$c10e], a
        ld [$c10f], a
        ld hl, $9000
        ld bc, $0000
        call $4616
        ld c, $90
        ld b, h
        ld h, $0
        call $0a03
        jr .asm_733

.asm_6c7
        ld a, [$ff91]
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
        ld [$2100], a
        ld a, [$ff93]
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
        call Function290b
        ld a, [$ff93]
        inc a
        ld [$ff93], a
        cp $4
        jr nz, .asm_738

.asm_733
        xor a
        ld [$ff91], a
        ld [$ff93], a

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
        ld [$2100], a
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
        call Function290b
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
        ld [$2100], a
        call $6c78
        jp $008b
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
        ld [$2100], a
        ld bc, $0040
        call Function290b
        ld a, [$ff90]
        cp $a
        jr z, .asm_803
        cp $d
        jr z, .asm_803
        ld a, [$ff90]
        inc a
        ld [$ff90], a
        ret

.asm_803
        xor a
        ld [$ff90], a
        ret
; 0x807

Function807:
; Change ROM Bank
        ld [$dbaf], a
        ld [$2100], a
        ret
; 0x80e

Function80e:
; Change ROM Bank
        call Functionb07
        ld [$dbaf], a
        ld [$2100], a
        ret
; 0x818

Function818:
        push af
        ld a, [$dbaf]
        ld [$2100], a
        pop af
        ret
; 0x821

Function821:
        ld a, $12
        call Functionb07
        ld [$2100], a
        ld a, [$ff92]
        cp $8
        jr c, .asm_86e
        jr nz, .asm_83e
        ld a, $2
        ld [$2100], a
        call $685f
        ld hl, $ff92
        inc [hl]
        ret

.asm_83e
        cp $9
        jr nz, .asm_84f
        ld a, $2
        ld [$2100], a
        call $6843
        ld hl, $ff92
        inc [hl]
        ret

.asm_84f
        cp $a
        jr nz, .asm_860
        ld a, $2
        ld [$2100], a
        call $6827
        ld hl, $ff92
        inc [hl]
        ret

.asm_860
        ld a, $2
        ld [$2100], a
        call $6801
        xor a
        ld [$ff90], a
        ld [$ff92], a
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
        call Function290b
        ld a, [$ff92]
        inc a
        ld [$ff92], a
        ret
; 0x89f

Function89f:
        ld a, $1f
        call Function807
        call $4006
        ld a, [$fff3]
        and a
        jr nz, asm_8d1
        ld a, [$c10b]
        and a
        jr z, Function8c1
        cp $2
        jr nz, .asm_8be
        ld a, [$ffe7]
        and $1
        jr nz, asm_8d1
        jr Function8c1

.asm_8be
        call Function8c1

Function8c1:
        ld a, $1b
        call Function807
        call $4006
        ld a, $1e
        call Function807
        call $4006

asm_8d1:
        ret
; 0x8d2

Function8d2:
        ld a, $20
        ld [$2100], a
        call $6a38
asm_8da:
        ld a, [$dbaf]
        ld [$2100], a
        ret
; 0x8e1

Function8e1:
        ld a, $20
        ld [$2100], a
        call $6ac9
        jr asm_8da ; 0x8e9 $ef
; 0x8eb

Function8eb:
        ld a, $20
        ld [$2100], a
        call $6bac
        jr asm_8da ; 0x8f3 $e5
; 0x8f5

Function8f5:
        push af
        ld a, $20
        ld [$2100], a
        call $6be4
        jr Function96e

        ld a, $20
        ld [$2100], a
        call $6c08
        jr .asm_912

        ld a, $20
        ld [$2100], a
        call $6c2c

.asm_912
        ld a, $1
        ld [$2100], a
        ret

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
        ld [$2100], a
        call $6576
        ld a, [$ffdf]
        ld [$2100], a
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
        ld [$2100], a
        ret
; 0x973

Function973:
        push af
        ld a, $20
        ld [$2100], a
        call $6d16
        jr Function96e ; 0x97c $f0
; 0x97e

Function97e:
        ld a, $1a
        ld [$2100], a
        call $6710
        ld a, [$ffdf]
        ld [$2100], a
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
        ld a, $20
        ld [$2100], a
        call $4518
        jr Function96e ; 0x9cc $a0
; 0x9ce

Function9ce:
        push af
        ld a, $20
        ld [$2100], a
        call $4874
        jr Function96e ; 0x9d7 $95
; 0x9d9

Function9d9:
        push af
        ld a, $20
        ld [$2100], a
        call $4954
        jp Function96e
; 0x9e5

Function9e5:
        push af
        ld a, $20
        ld [$2100], a
        call $482d
        jp Function96e
; 0x9f1

Function9f1:
.asm_9f1
        push hl
        ld l, $0
        ld e, l
        ld h, b
        ld a, c
        add $80
        ld d, a
        ld bc, $0100
        call Function290b
        pop hl
        jr .asm_a1d

        ld [$2100], a
        ld a, [$fffe]
        and a
        jr z, .asm_9f1
        ld a, b
        ld [$ff51], a
        ld a, $0
        ld [$ff52], a
        ld a, c
        ld [$ff53], a
        ld a, $0
        ld [$ff54], a
        ld a, $f
        ld [$ff55], a

.asm_a1d
        ld a, h
        ld [$2100], a
        ret
; 0xa22

Functiona22:
        push af
        ld a, $35
        ld [$2100], a
        ld hl, $4f00
        ld de, $dcc0
        ld bc, $0020
        call Function290b
        jp Function96e
; 0xa37

Functiona37:
        push af
        ld a, $36
        ld [$2100], a
        call $5066
        jp Function96e
; 0xa43

Functiona43:
        push af
        ld a, $36
        ld [$2100], a
        call $4fa2
        jp Function96e
; 0xa4f

Functiona4f:
        push af
        ld a, $20
        ld [$2100], a
        call $3cdd
        jp Function96e
; 0xa5b

Functiona5b:
        push af
        ld a, $3
        ld [$2100], a
        call $5a24
        jp Function96e
; 0xa67

Functiona67:
        push af
        ld a, $36
        ld [$2100], a
        call $4f68
        jp Function96e
; 0xa73

Functiona73:
        push af
        ld a, $20
        ld [$2100], a
        call $6d5a
        jp Function96e
; 0xa7f

Functiona7f:
        push af
        ld a, $36
        ld [$2100], a
        call $4be8
        jp Function96e
; 0xa8b

Functiona8b:
        push af
        ld a, $f
        call Function807
        call $2318
        jp Function96e
; 0xa97

Functiona97:
        push af
        ld a, $36
        call Function807
        call $7071
asm_aa0:
        pop af
        call Function807
        ret
; 0xaa5

Functionaa5:
        push af
        ld a, $24
        ld [$2100], a
        call $5c1a
        ld de, $d601
        call $291e
        jr asm_aa0 ; 0xab4 $ea
; 0xab6

Functionab6:
        push af
        ld a, $36
        ld [$2100], a
        call $7055
        jp Function96e
; 0xac2

Functionac2:
        push af
        ld a, $36
        ld [$2100], a
        call $70ed
        jp Function96e
; 0xace

Functionace:
        push af
        ld a, $36
        call Function807
        call $4a77
        jp Function96e
; 0xada

Functionada:
        push af
        ld a, $36
        ld [$2100], a
        call $4a4c
        jp Function96e
; 0xae6

Functionae6:
        push af
        ld a, $36
        ld [$2100], a
        call $717c
        jp Function96e
; 0xaf2

Functionaf2:
        ld a, $3d
        ld [$2100], a
        call $4029
        ret
; 0xafb

Functionafb:
        push af
        ld a, $36
        ld [$2100], a
        call $72d5
        jp Function96e
; 0xb07

Functionb07:
        push bc
        ld b, a
        ld a, [$fffe]
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
        ld a, [$ffd7]
        ld [$2100], a
        ld a, $2
        ld [$ff70], a
        call Function290b
        xor a
        ld [$ff70], a
        ld a, $20
        ld [$2100], a
        ret
; 0xb2b

Functionb2b:
        ld [$ffd9], a
        ld a, [$fffe]
        and a
        ret z
        ld a, [$dba5]
        and a
        ret nz
        push bc
        ld a, [$ffd9]
        and $80
        jr nz, .asm_b47
        ld a, $20
        ld [$2100], a
        call $6e58
        jr c, .asm_b50

.asm_b47
        ld b, [hl]
        ld a, $2
        ld [$ff70], a
        ld [hl], b
        xor a
        ld [$ff70], a

.asm_b50
        ld a, [$ffd9]
        and $7f
        ld [$2100], a
        pop bc
        ret
; 0xb59

Functionb59:
        ld [$2100], a
        call Function290b
        ld a, $28
        ld [$2100], a
        ret
; 0xb65

Functionb65:
        push hl
        ld [$2100], a
        ld a, [$fffe]
        and a
        jr z, .asm_b7c
        ld de, $0168
        add hl, de
        ld a, $1
        ld [$ff4f], a
        call Functionb92
        xor a
        ld [$ff4f], a

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
        ld [$2100], a
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
        jp Function290b
; 0xbba

Functionbba:
        push af
        call $2bc6
        jp Function96e
; 0xbc1

Functionbc1:
        ld a, [$d16a]
        ld [$2100], a
.asm_bc7
        ld a, [hli]
        ld [de], a
        inc de
        dec b
        jr nz, .asm_bc7
        ld a, $28
        ld [$2100], a
        ret
; 0xbd3

Functionbd3:
        ld a, [$de01]
        ld [$2100], a
        call Functionbe3
        ld a, [$de04]
        ld [$2100], a
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
        ld [$2100], a
        call Function1a4b
        jp Function818
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
        call $3b7d
        ld a, [$ff98]
        ld hl, $c200
        add hl, de
        ld [hl], a
        ld a, [$ff99]
        ld hl, $c210
        add hl, de
        ld [hl], a
        ret
; 0xc1c

Functionc1c:
        ld a, $1d
        ld [$fff2], a
        ret
; 0xc21

Functionc21:
        ld hl, $4641
        jr .asm_c29

        ld hl, $4741

.asm_c29
        ld a, $1c
        ld [$2100], a
        add hl, bc
        ld a, [hl]
        ld hl, $2100
        ld [hl], $1
        ret
; 0xc36

Functionc36:
        ld a, $c
        ld [$2100], a
        ld bc, $0040
        call Function290b
        ld a, $1
        ld [$2100], a
        ret
; 0xc47

Functionc47:
        ld hl, $fff4
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
        ld [$fff2], a

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

        ld a, [$d401]
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
        ld a, $7
        ld [$fff2], a
        ld a, $5
        jp $0cc3
; 0xd1a

Functiond1a:
        ld a, $20
        ld [$2100], a
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
        ld a, [$ff94]
        ld e, a
        ld a, [hl]
        cp e
        jr z, .asm_d53
        ld [$ff94], a
        cp $ff
        jr z, .asm_d53
        ld a, $1
        ld [$ff90], a

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
        ld a, [$ff94]
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
        ld [$ff94], a
        ld a, $1
        ld [$ff90], a

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
        ld [$ff91], a
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
        ld [$ff91], a

.asm_e25
        inc hl
        inc bc
        inc d
        ld a, d
        cp $4
        jr nz, .asm_dff

.asm_e2d
        jp Function818
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
        call Function807
        jp $4000
; 0xedb

Functionedb:
        jp $6ee0
; 0xede

Functionede:
        ld a, $17
        call Function807
        call $4ab1
        jp Function1016
; 0xee9

Functionee9:
        ld a, $3
        ld [$2100], a
        ld a, $17
asm_ef0:
        push af
        call Function3984
        pop af
        jp Function807
; 0xef8

Functionef8:
        ld a, $3
        ld [$2100], a
        ld a, $1
        jr asm_ef0 ; 0xeff $ef
; 0xf01

Functionf01:
        ld a, $3
        ld [$2100], a
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
        ld [$2100], a
        call $4c4b
        call $4abc
        ld a, $1
        call Function807
        jp $4374
; 0xf29

Functionf29:
        ld a, $20
        call Function807
        jp $5910
; 0xf31

Functionf31:
        ld a, $28
        call Function807
        call $4000
        jp Function1016
; 0xf3c

Functionf3c:
        ld a, $37
        call Function807
        jp $4000
; 0xf44

Functionf44:
        ld a, $2
        call Function807
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
        ld [$2100], a
        call $62b1
        call Function818

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
        jp $0c79

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
        call Function807
        call $7943
        call $102f
        ld a, [$c15c]
        ld [$c3cf], a
        ld a, $20
        ld [$2100], a
        call $4b1f
        ld a, $19
        call Function807
        call $7abc
        call Function3984
        ld a, $2
        call Function807
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
        ld a, $20
        ld [$2100], a
        call $5ca8

.asm_100e
        ld a, $14
        call Function807
        call $54f5

Function1016:
        ld a, $f
        call Function807
asm_101b:
        call $2318
        ld a, [$fffe]
        and a
        ret z
        ld a, $24
        call Function807
        jp $7405
; 0x102a

Function102a:


INCBIN "baserom.gbc", $102a, $1151-$102a


; 0x1151

Function1151:
        ld a, $19
        call Function807
        jp $5d6a
; 0x1159

Function1159:
        ld a, $1
        call Function807
        jp $41c5
; 0x1161

Function1161:
        ld a, $36
        ld [$2100], a
        call $7275
        and a
        ret z
        ld a, $2
        call Function807
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
        call $133f
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
        call $1704
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
        call $1704
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
        call $133f

.asm_1231
        ld a, [$db00]
        cp $4
        jr nz, .asm_1247
        ld a, [$db44]
        ld [$c15a], a
        ld a, [$ffcb]
        and $20
        jr z, .asm_1247
        call $133f

.asm_1247
        ld a, [$ffcc]
        and $20
        jr z, .asm_125a
        ld a, [$c1ad]
        cp $2
        jr z, .asm_125a
        ld a, [$db00]
        call $1298

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
        call $1298

.asm_1271
        ld a, [$ffcb]
        and $20
        jr z, .asm_127d
        ld a, [$db00]
        call $1320

.asm_127d
        ld a, [$ffcb]
        and $10
        jr z, .asm_1289
        ld a, [$db01]
        call $1320

.asm_1289
        ld a, $20
        ld [$2100], a
        call $48ca
        ld a, [$dbaf]
        ld [$2100], a
        ret
; 0x1298

Function1298:
        ld c, a
        cp $1
        jp z, $1527
        cp $4
        jp z, $12ea
        cp $2
        jp z, $1359
        cp $3
        jp z, $1381
        cp $5
        jp z, $13bc
        cp $d
        jp z, $1382
        cp $6
        jp z, $1318
        cp $a
        jp z, $14ca
        cp $9
        jp z, $41fc
        cp $c
        jp z, $148c
        cp $b
        jp z, $12f4
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
        call $0cb2
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
        ld a, $20
        ld [$2100], a
        call $4b4a
        ld a, [$dbaf]
        ld [$2100], a
        ret
; 0x1359

Function1359:
        ld a, [$c14e]
        cp $1
        ret nc
        ld a, [$db4d]
        and a
        jp z, $0c1c
        sub $1
        daa
        ld [$db4d], a
        ld a, $2
        call $142e
        ret c
        ld a, $20
        ld [$2100], a
        call $4b81
        ld a, [$dbaf]
        ld [$2100], a
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
        call $142e
        ret c
        ld a, $20
        ld [$2100], a
        call $4c0b
        ld a, [$dbaf]
        ld [$2100], a
        ret
; 0x139c

Function139c:



INCBIN "baserom.gbc", $139c, $13b9-$139c


Function13b9:
.asm_13b9
        nop
        ret nz
        ld b, b
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
        jp z, $0c1c
        sub $1
        daa
        ld [$db45], a
        call $157b
        ld a, $0
        call $142e
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
        call $3b7d
        ret c
        ld a, $c
        ld [$c19b], a
        push bc
        ld a, [$ff9e]
        ld c, a
        ld b, $0
        ld hl, $139c
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
        jp z, $0c1c
        ld a, $8
        call $3b7d
        ret c
        ld a, $20
        ld [$2100], a
        call $4c53
        ld a, [$dbaf]
        ld [$2100], a
        ret
; 0x14c2

Function14c2:
        inc e
        db $e4
        nop
        nop
        nop
        nop
        db $e4
        inc e
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
        jr z, .asm_1507
        call $1507
        ld a, [$ffcb]
        and $3
        ld a, $ea
        jr z, .asm_14f7
        ld a, $e8

.asm_14f7
        ld [$ff9b], a
        xor a
        ld [$ffa3], a
        call $219f
        ld a, $2
        call Function807
        jp $6c91

.asm_1507
        ld a, $20
        ld [$ffa3], a
        ld a, [$c14a]
        and a
        ret z
        ld a, [$ff9e]
        ld e, a
        ld d, b
        ld hl, $14c2
        add hl, de
        ld a, [hl]
        ld [$ff9a], a
        ld hl, $14c6
        add hl, de
        ld a, [hl]
        ld [$ff9b], a
asm_1522:
        ret
; 0x1523

Function1523:
        ld [bc], a
        inc d
        dec d
        jr asm_1522 ; 0x1526 $fa
; 0x1528

Function1528:
        ld l, l
        pop bc
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
        call $2804
        and $3
        ld e, a
        ld d, $0
        ld hl, $1523
        add hl, de
        ld a, [hl]
        ld [$fff4], a
        call $157b
        ld a, [$c146]
        and a
        jr nz, .asm_1561
        call Functioncab
        call $178d

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
        call $142e
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
        call $15ae
        ld a, $2
        jp Function807
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
        call $2a1d
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
        call $2171
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
        call $142e
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
        call $3939

.asm_167b
        call $2804
        and $7
        ret nz
        ld a, [$ffaf]
        cp $d3
        ret z
        call $2804
        rra
        ld a, $2e
        jr nc, .asm_1690
        ld a, $2d

.asm_1690
        call $3b7d
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
        call $0d11
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
        call $1755
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
        jp $0cc3

.asm_1780
        ld a, [$ff99]
        ld [$ffd8], a
        ld a, $e
        ld [$fff2], a
        ld a, $c
        jp $0cc3
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
        jp $1818

.asm_17da
        ld a, [$c19b]
        push af
        bit 7, a
        jp z, $1813
        ld a, $2
        call Function807
        call $5330
        ld a, [$c19b]
        and $7f
        cp $c
        jr nz, .asm_1813
        ld hl, $c19f
        ld a, [$c124]
        or [hl]
        jr nz, .asm_1813
        call $157b
        ld a, $4
        call $142e
        jr c, .asm_1813
        ld a, $d
        ld [$fff4], a
        ld a, $2
        call Function807
        call $53ab

.asm_1813
        pop af
        ld [$c19b], a
        ret
; 0x1818

Function1818:
        ld a, $20
        ld [$2100], a
        call $4ab3
        ld a, [$dbaf]
        ld [$2100], a
        ret
; 0x1827

Function1827:
        ld a, $20
        ld [$2100], a
        call $49ba
        ld a, [$dbaf]
        ld [$2100], a
        ret
; 0x1836

Function1836:
        call $7594
        ld a, [$c3c9]
        and a
        jr z, .asm_1846
        xor a
        ld [$c3c9], a
        jp $0c79

.asm_1846
        call $1a1d
        xor a
        ld [$c157], a
        inc a
        ld [$c1a8], a
        ld a, [$c16b]
        cp $4
        jp nz, $19d7
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
        call Function807
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
        ld hl, $d401
        ld a, [$dba5]
        ld [$ffe6], a
        and a
        jr nz, .asm_18de
        ld hl, $d416
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
        ld hl, $d401
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
        call Function807
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
        call Function807
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
        jr nz, .asm_19d8
        ld a, [$ffe4]
        and a
        jr nz, .asm_19d7
        ld a, [$dba5]
        and a
        jr z, .asm_19c1
        ld a, [$fff7]
        cp $ff
        jr nz, .asm_1992
        ld hl, $4e3c
        jr .asm_19a3

.asm_1992
        cp $a
        jr nc, .asm_19c1
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
        ld [$2100], a
        call $19c1
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

.asm_19c1
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

.asm_19d7
        ret

.asm_19d8
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
        call $1a34
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
        jp $237c
; 0x1a1d

Function1a1d:
        ld a, $20
        ld [$2100], a
        call $6c57
        ld a, $20
        ld [$2100], a
        call $55d6
        ld a, [$dbaf]
        ld [$2100], a
        ret
; 0x1a34

Function1a34:
        ld a, $20
        ld [$2100], a
        call $6c82
        ld a, $20
        ld [$2100], a
        call $5647
        ld a, [$dbaf]
        ld [$2100], a
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
        ld [$2100], a
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
        jp Function290b
; 0x1b00

Function1b00:
        jr nz, .asm_1b62
        and b
        ld [$ffe0], a
        ld [$ffa0], a
        ld h, b
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
        ld [$2100], a
        ld a, [$d006]
        ld l, a
        ld a, [$d007]
        ld h, a
        ld a, [$d008]
        ld e, a
        ld a, [$d009]
        ld d, a
        ld bc, $0020
        jp Function290b

.asm_1b40
        ret

.asm_1b41
        ld a, [$db95]
        cp $1
        jr nz, .asm_1b4e
        ld a, [$ffa5]
        and a
        jr nz, .asm_1b7d
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

.asm_1b62
        ld hl, $c124
        ld a, [$d601]
        or [hl]
        jp nz, Function1d31
        ld a, [$d6f8]
        and a
        jr z, .asm_1b78
        call $1ed9
        jp Function1d31

.asm_1b78
        ld a, [$ffa5]
        and a
        jr z, .asm_1bc8

.asm_1b7d
        cp $1
        jp z, $3f8a
        cp $2
        jp z, $3fa0
        cp $3
        jp z, $1eb7
        cp $4
        jp z, $1ebe
        cp $8
        jp z, $1e6b
        cp $9
        jp z, $1ea3
        cp $a
        jp z, $1e2d
        cp $b
        jp z, $1e8f
        cp $c
        jp z, $1e35
        cp $d
        jp z, $1e03
        cp $e
        jr z, .asm_1bc0
        cp $f
        jp z, $1df2
        cp $10
        jp z, $1deb
        jp Function1d31

.asm_1bc0
        ld a, $17
        ld [$2100], a
        jp $4062

.asm_1bc8
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
        jp nz, $1d21
        ld a, $1
        ld [$2100], a
        call $626d
        ld a, $c
        call Functionb07
        ld [$2100], a
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
        jp nz, $1d21
        call $1ceb
        jp $1c0e

        nop
        ld b, b
        add b
        ret nz
        ret nz
        ret nz
        add b
        ld b, b
        ld a, [$ffa6]
        and $7
        jp nz, $1d21
        ld a, [$ffa6]
        rra
        rra
        rra
        and $7
        ld e, a
        ld d, $0
        ld hl, $1c2c
        add hl, de
        ld l, [hl]
        ld h, $6d

Function1c4c:
        ld de, $96c0
        ld bc, $0040
        call Function290b
        ld a, [$fff7]
        cp $ff
        jr nz, .asm_1c82
        ld a, $20
        ld [$2100], a
        ld b, $1
        call $47f7
        jr z, .asm_1c6d
        ld [$2100], a
        call Function290b

.asm_1c6d
        ld a, $20
        ld [$2100], a
        ld b, $0
        call $47f7
        jr z, .asm_1c82
        ld [$2100], a
        ld de, $96c0
        call Function290b

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
        jp nz, $1d21
        ld a, [$ffa6]
        rra
        rra
        rra
        and $7
        ld e, a
        ld d, $0
        ld hl, $1c2c
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
        jp $1c4f

.asm_1cb3
        ld a, [$ffa6]
        inc a
        and $3
        jp nz, $1c34
        ld de, $90c0
        jp $1c4f
; 0x1cc1

Function1cc1:
        ld a, $c
        call Functionb07
        ld [$2100], a
        ld h, $70
asm_1ccb:
        ld a, [$ffa6]
        and $7
        jp nz, $1d21
        call $1ceb
        jp $1c0e
; 0x1cd8

Function1cd8:
        ld h, $71
asm_1cda:
        ld a, [$ffa6]
        and $3
        jp nz, $1d21
        call $1ceb
        jp $1c0e
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
        ld [$2100], a
        call $7830
        jp Function1d31
; 0x1d0d

Function1d0d:
        ld a, $c
        call Functionb07
        ld [$2100], a
.asm_1d15
        ld a, [bc]
        inc bc
        ld [hli], a
        dec d
        jr nz, .asm_1d15
        ld a, $20
        ld [$2100], a
        ret
; 0x1d21

Function1d21:
        ld a, $20
        ld [$2100], a
        call $5501
        ld a, $c
        call Functionb07
        ld [$2100], a

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
        jr .asm_1df7

        ld a, $12
        ld hl, $6080

.asm_1df7
        ld [$2100], a
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
        ld [$2100], a
        jp Function1f3d
; 0x1e2d

Function1e2d:
        ld hl, $68c0
        ld de, $88e0
        jr .asm_1ea9

        ld a, $11
        call Functionb07
        ld [$2100], a
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
.asm_1e57
        add hl, de
        pop de
        ld bc, $0040
        call Function290b
        xor a
        ld [$ffa5], a
        ld a, $c
        call Functionb07
        ld [$2100], a
        ret

        ld a, $13
        call Functionb07
        ld [$2100], a
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
        jr .asm_1e57

        ld hl, $48e0
        ld de, $88e0
        ld a, $c
        call Functionb07
        ld [$2100], a
        ld bc, $0020
        jp Function1f3d

        ld hl, $68e0
        ld de, $8ca0

.asm_1ea9
        ld a, $c
        call Functionb07
        ld [$2100], a
        ld bc, $0020
        jp Function1f3d
; 0x1eb7

Function1eb7:
        ld hl, $7f00
        ld a, $12
        jr .asm_1ec3

        ld hl, $4c40
        ld a, $d

.asm_1ec3
        call Functionb07
        ld [$2100], a
        ld de, $9140
        jp Function1f3a
; 0x1ecf

Function1ecf:
        ld b, b
        ld l, b
        ld b, b
        ld l, b
        nop
        ld l, b
        add b
        ld l, b
        nop
        ld l, b
        push af
        ld a, $c
        call Functionb07
        ld [$2100], a
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
        ld hl, $1ecf
        jr .asm_1f10

.asm_1f09
        cp $8
        jr nz, .asm_1f16
        ld hl, $1ed3

.asm_1f10
        add hl, de
        ld de, $9040
        jr .asm_1f2e

.asm_1f16
        cp $6
        jr nz, .asm_1f1f
        ld hl, $1ecf
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
        jp Function290b

.asm_1f37
        jp Function1d31
; 0x1f3a

Function1f3a:
        ld bc, $0040

Function1f3d:
        call Function290b

Function1f40:
        xor a
        ld [$ffa5], a
        ld a, $c
        ld [$2100], a
        jp Function1d31
; 0x1f4b

Function1f4b:


INCBIN "baserom.gbc", $1f4b, $28c6-$1f4b


Function28c6:
        ld a, [$ffff]
        ld [$ffd2], a
        res 0, a
        ld [$ffff], a
.asm_28ce
        ld a, [$ff44]
        cp $91
        jr nz, .asm_28ce
        ld a, [$ff40]
        and $7f
        ld [$ff40], a
        ld a, [$ffd2]
        ld [$ffff], a
        ret
; 0x28df

Function28df:
        ld a, $1
        call Function807
        jp $6da6
; 0x28e7

Function28e7:
        ld a, $7e
        ld bc, $0400
        jr .asm_28f3

        ld a, $7f
        ld bc, $0800

.asm_28f3
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
        ld [$2100], a
        call Function290b
        ld a, $1
        ld [$2100], a
        ret
; 0x290b


Function290b:
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
.asm_2914
        inc de
        ld h, a
        ld a, [de]
        ld l, a
        inc de
        ld a, [de]
        inc de
        call Function2938
        ld a, [$c124]
        and a
        jr nz, .asm_2933
        ld a, [de]
        and a
        jr nz, .asm_2914
        ret

.asm_2929
        inc de
        ld h, a
        ld a, [de]
        ld l, a
        inc de
        ld a, [de]
        inc de
        call $2988

.asm_2933
        ld a, [de]
        and a
        jr nz, .asm_2929
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
        jr .asm_29d3

        ld bc, $1300
        jr .asm_29d3

        ld bc, $002f
        jr .asm_29ca

        ld bc, $006d

.asm_29ca
        ld hl, $ff90
        call Function29d6
        ld bc, $1f00

.asm_29d3
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


INCBIN "baserom.gbc", $29e4, $2bc6-$29e4


Function2bc6:
        ld a, $c
        call Function80e
        ld hl, $4000
        ld de, $8000
        ld bc, $0400
        call Function290b
        ld a, $c
        call Function80e
        ld hl, $4800
        ld de, $8800
        ld bc, $1000
        call Function290b
        ld hl, $47a0
        ld de, $8e00
        ld bc, $0020
        call Function290b
        ld a, $1
        call Function807
        ret
; 0x2bfa


INCBIN "baserom.gbc", $2bfa, $3984-$2bfa


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
        ld hl, $3980
        add hl, de
        ld a, [hl]
        ld [$c3c0], a
        ld a, $20
        ld [$2100], a
        call $4303
        xor a
        ld [$2100], a
        ld a, [$c19f]
        and a
        jr nz, .asm_39da
        ld [$c1ad], a

.asm_39da
        ld a, $20
        ld [$dbaf], a
        ld [$2100], a
        call $635e
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
        ld a, $15
        ld [$2100], a
        call $4000
        ld a, $3
        ld [$2100], a
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
        ld [$2100], a
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
        ld [$2100], a
        call $4d73
        ld a, $3
        ld [$dbaf], a
        ld [$2100], a
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
        ld [$2100], a
        ret
; 0x3a84

Function3a84:
        ld a, $20
        ld [$2100], a
        ld a, [$ffeb]
        ld e, a
        ld d, b
        ld hl, $4000
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
        ld [$2100], a
        jp [hl]
; 0x3aa1

Function3aa1:


INCBIN "baserom.gbc", $3aa1, $3d81-$3aa1


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



INCBIN "baserom.gbc", $3d97, $4000-$3d97

