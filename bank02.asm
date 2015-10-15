

SECTION "bank2", ROMX, BANK[$2]

; 0x8000

Unknown_8000:

INCBIN "baserom.gbc", 16384*2+$0, $100-$0

Unknown_8100:

INCBIN "baserom.gbc", 16384*2+$100, $120-$100

Unknown_8120:

INCBIN "baserom.gbc", 16384*2+$120, $146-$120

Function8146:
        ld a, [$ffbc]
        and a
        jr z, .asm_814f
        xor a
        ld [$ffbc], a
        ret

.asm_814f
        ld d, $1d
        ld a, [$db4e]
        and a
        jp z, .asm_81a2
        ld a, [$fff6]
        ld e, a
        ld d, $0
        ld hl, Unknown_8000
        add hl, de
        ld d, [hl]
        ld a, d
        xor a
        ld [$ffb1], a
        ld a, [$dba5]
        and a
        jr z, .asm_81a2
        ld d, $18
        ld a, [$d46c]
        and a
        jr nz, .asm_81a6
        ld a, [$fff7]
        cp $ff
        jr nz, .asm_817e
        ld a, $9
        jr .asm_818c

.asm_817e
        cp $10
        jr nz, .asm_818c
        ld d, a
        ld a, [$fff6]
        cp $b5
        ld a, d
        jr nz, .asm_818c
        ld a, $f

.asm_818c
        ld e, a
        ld d, $0
        ld hl, Unknown_8100
        add hl, de
        ld d, [hl]
        ld a, [$fff9]
        and a
        jr z, .asm_81a6
        ld a, e
        cp $a
        jr nc, .asm_81a6
        ld a, $21
        jr .asm_81a7

.asm_81a2
        xor a
        ld [$d46c], a

.asm_81a6
        ld a, d

.asm_81a7
        ld e, a
        ld d, $0
        ld [$ffb0], a
        call Function27ba
        ld a, e
        cp $25
        jr nc, .asm_81bc
        ld hl, Unknown_8120
        add hl, de
        ld a, [hl]
        and a
        jr nz, .asm_81cf

.asm_81bc
        ld a, [$d47c]
        and a
        jr z, .asm_81cf
        ld a, $49
        ld [$d368], a
        ld [$ffbd], a
        ld [$ffbf], a
        xor a
        ld [$c1cf], a

.asm_81cf
        ret
; 0x81d0

Function81d0:
        push bc
        ld a, $7
        call Function3b7d
        jr c, .asm_81fa
        ld hl, $c280
        add hl, de
        dec [hl]
        ld a, [$ffce]
        and $f0
        add $8
        ld hl, $c200
        add hl, de
        ld [hl], a
        ld a, [$ffcd]
        and $f0
        add $10
        ld hl, $c210
        add hl, de
        ld [hl], a
        ld hl, $c3b0
        add hl, de
        ld a, [$ffdf]
        ld [hl], a

.asm_81fa
        pop bc
        ret
; 0x81fc

INCBIN "baserom.gbc", 16384*2+$1fc, $9d2-$1fc

Unknown_89d2:

INCBIN "baserom.gbc", 16384*2+$9d2, $13d0-$9d2

Function93d0:
        push bc
        push de
        ld a, [$ffe8]
        cp $40
        jr z, .asm_941b
        ld a, [$dbd0]
        and a
        jr z, .asm_943d
        dec a
        ld [$dbd0], a
        call Function27f9
        call Function9440
        call Function9bbf
        ld a, [hl]
        or $40
        ld [hl], a
        ld [$fff8], a
        ld a, [$ffdb]
        and $f0
        ld [$ffce], a
        swap a
        ld e, a
        ld a, [$ffdc]
        and $f0
        ld [$ffcd], a
        or e
        ld e, a
        ld d, $0
        call Function2171
        ld a, [$ffce]
        add $8
        ld [$ffd7], a
        ld a, [$ffcd]
        add $10
        ld [$ffd8], a
        ld a, $2
        call $0cc3
        jp .asm_943d

.asm_941b
        ld a, $6
        call Function3b7d
        jr c, .asm_943d
        ld hl, $c280
        add hl, de
        dec [hl]
        ld a, [$ffdb]
        and $f0
        add $8
        ld hl, $c200
        add hl, de
        ld [hl], a
        ld a, [$ffdc]
        and $f0
        add $10
        ld hl, $c210
        add hl, de
        ld [hl], a

.asm_943d
        pop de
        pop bc
        ret
; 0x9440

Function9440:
        ld a, $4
        ld [$fff4], a
        ret
; 0x9445

INCBIN "baserom.gbc", 16384*2+$1445, $181d-$1445

Unknown_981d:
INCBIN "baserom.gbc", 16384*2+$181d, $182d-$181d

Unknown_982d:
INCBIN "baserom.gbc", 16384*2+$182d, $183d-$182d

Function983d:
        call Function98f0
        ld hl, Unknown_982d
        jr .asm_9853

        call Function98f0
        ld a, [$c1a7]
        cp $2
        jp z, Function9897
        ld hl, Unknown_981d

.asm_9853
        ld a, [$ffd7]
        and $8
        ld e, a
        ld d, $0

Function985a:
        add hl, de
        push hl
        ld a, [$c3c0]
        ld e, a
        ld d, $0
        ld hl, $c030
        add hl, de
        ld e, l
        ld d, h
        pop hl
        call Function9874
        call Function9874
        ld a, $2
        jp Function9915
; 0x9874

Function9874:
        ld a, [$ffd8]
        add [hl]
        ld [de], a
        inc hl
        inc de
        ld a, [$ffd9]
        add [hl]
        ld [de], a
        inc hl
        inc de
        ld a, [hli]
        ld [de], a
        inc de
        ld a, [hli]
        ld [de], a
        inc de
        ret
; 0x9887

Unknown_9887:
    db $00, $00, $7a, $00, $00, $08, $7a, $20, $00, $00, $78, $00, $00, $08, $78, $20

Function9897:
        ld a, [$ffd7]
        and $8
        ld d, $0
        ld e, a
        ld hl, Unknown_9887
        jp Function985a
; 0x98a4

INCBIN "baserom.gbc", 16384*2+$18a4, $18f0-$18a4

Function98f0:
        ld hl, $c540
        add hl, bc
        ld a, [hl]
        ld [$ffd8], a
        cp $88
        jr nc, .asm_9906
        ld hl, $c530
        add hl, bc
        ld a, [hl]
        ld [$ffd9], a
        cp $a8
        jr c, .asm_990c

.asm_9906
        ld hl, $c510
        add hl, bc
        xor a
        ld [hl], a

.asm_990c
        ret
; 0x990d

Unknown_990d:
    db $00, $08, $10, $18, $20, $28, $30, $38

Function9915:
        sla a
        sla a
        ld e, a
        ld a, [$c3c0]
        add e
        cp $60
        jr c, .asm_9924
        sub $60

.asm_9924
        ld [$c3c0], a
        ld a, [$c3c1]
        add e
        ld [$c3c1], a
        cp $60
        jr c, .asm_9945
        ld a, [$ffe7]
        ld hl, $c123
        add [hl]
        and $7
        ld e, a
        ld d, $0
        ld hl, Unknown_990d
        add hl, de
        ld a, [hl]
        ld [$c3c0], a

.asm_9945
        ret
; 0x9946

INCBIN "baserom.gbc", 16384*2+$1946, $1bbf-$1946


Function9bbf:
        ld hl, $d800
        ld a, [$fff6]
        ld e, a
        ld a, [$dba5]
        ld d, a
        and a
        jr z, .asm_9be2
        ld a, [$fff7]
        cp $ff
        jr nz, .asm_9bd9
        ld d, $0
        ld hl, $dde0
        jr .asm_9be2

.asm_9bd9
        cp $1a
        jr nc, .asm_9be2
        cp $6
        jr c, .asm_9be2
        inc d

.asm_9be2
        add hl, de
        ret
; 0x9be4

INCBIN "baserom.gbc", 16384*2+$1be4, $22ef-$1be4

Functiona2ef:
        ld a, [$d600]
        ld e, a
        ld d, $0
        add $6
        ld [$d600], a
        ld hl, $d601
        add hl, de
        ld a, $9c
        ld [hli], a
        ld a, $2a
        ld [hli], a
        ld a, $2
        ld [hli], a
        push hl
        ld a, [$db5d]
        and $f
        ld e, a
        add $b0
        pop hl
        ld [hli], a
        push hl
        ld a, [$db5e]
        swap a
        and $f
        add $b0
        pop hl
        ld [hli], a
        push hl
        ld a, [$db5e]
        and $f
        add $b0
        pop hl
        ld [hli], a
        ld a, $0
        ld [hli], a
        ret
; 0xa32c

INCBIN "baserom.gbc", 16384*2+$232c, $2420-$232c

Unknown_a420:

INCBIN "baserom.gbc", 16384*2+$2420, $2435-$2420

Functiona435:
        ld a, [$d600]
        ld e, a
        ld d, $0
        add $14
        ld [$d600], a
        ld hl, $d601
        add hl, de
        push de
        ld bc, Unknown_a420
        ld e, $15
.asm_a44a
        ld a, [bc]
        inc bc
        ld [hli], a
        dec e
        jr nz, .asm_a44a
        nop
        nop
        nop
        nop
        pop de
        ld hl, $d604
        add hl, de
        ld c, $0
        ld a, [$db5a]
        and a
        jr z, .asm_a483
        ld [$ffd7], a
.asm_a463
        ld a, [$ffd7]
        sub $8
        ld [$ffd7], a
        jr c, .asm_a47a
        ld a, $a9
        ld [hli], a
        inc c
        ld a, c
        cp $7
        jr nz, .asm_a478
        ld a, l
        add $3
        ld l, a

.asm_a478
        jr .asm_a463

.asm_a47a
        add $8
        jr z, .asm_a483
        ld a, $ce
        ld [hli], a
        jr .asm_a48c

.asm_a483
        ld a, [$db5b]
        cp c
        jr z, .asm_a498
        ld a, $cd
        ld [hli], a

.asm_a48c
        inc c
        ld a, c
        cp $7
        jr nz, .asm_a496
        ld a, l
        add $3
        ld l, a

.asm_a496
        jr .asm_a483

.asm_a498
        ret
; 0xa499

INCBIN "baserom.gbc", 16384*2+$2499, $249a-$2499

Unknown_a49a:

INCBIN "baserom.gbc", 16384*2+$249a, $269a-$249a

Unknown_a69a:
INCBIN "baserom.gbc", 16384*2+$269a, $26da-$269a

Unknown_a6da:
INCBIN "baserom.gbc", 16384*2+$26da, $271a-$26da

Unknown_a71a:
    db $00, $02, $03, $07, $05, $0a, $0b, $0f, $04, $08, $09, $0e, $06, $0c, $0d, $01

Functiona72a:
        ld hl, Unknown_a49a
        ld a, [$fff7]
        cp $ff
        jr nz, .asm_a738
        ld hl, Unknown_a6da
        jr .asm_a746

.asm_a738
        swap a
        ld e, a
        ld d, $0
        sla e
        rl d
        sla e
        rl d
        add hl, de

.asm_a746
        ld a, [$fff7]
        cp $6
        jr nz, .asm_a756
        ld a, [$db6b]
        and $4
        jr z, .asm_a756
        ld hl, Unknown_a69a

.asm_a756
        ld de, $d480
        ld bc, $0040
        call CopyBytes
        ld d, $0
        ld e, $0

.asm_a763
        ld hl, $d480
        add hl, de
        ld a, [hl]
        cp $7d
        jr z, .asm_a7d1
        cp $ed
        jr z, .asm_a774
        cp $ee
        jr nz, .asm_a77c

.asm_a774
        ld a, [$dbcd]
        and a
        jr nz, .asm_a787
        ld [hl], $ef

.asm_a77c
        ld a, [$dbcc]
        and a
        jr nz, .asm_a787
        ld [hl], $7d
        jp .asm_a7d1

.asm_a787
        push de
        call Function2bb8
        ld c, e
        ld b, d
        pop de
        ld a, [hl]
        bit 7, a
        jr z, .asm_a7d1
        ld a, [hl]
        and $f
        ld c, a
        ld b, $0
        ld hl, Unknown_a71a
        add hl, bc
        ld a, [hl]
        inc a
        add $cf
        ld c, a
        ld hl, $d480
        add hl, de
        ld a, [hl]
        cp $ee
        jr z, .asm_a7af
        cp $ed
        jr nz, .asm_a7c4

.asm_a7af
        push de
        push af
        call Function2bb8
        pop af
        ld e, $20
        cp $ed
        jr nz, .asm_a7bd
        ld e, $10

.asm_a7bd
        ld a, [hl]
        and e
        pop de
        cp $0
        jr z, .asm_a7d1

.asm_a7c4
        ld hl, $d480
        add hl, de
        ld [hl], c
        ld a, [$dbcc]
        and a
        jr nz, .asm_a7d1
        ld [hl], $7d

.asm_a7d1
        inc e
        ld a, e
        cp $40
        jp nz, .asm_a763
        ld a, [$fffe]
        and a
        jr z, .asm_a800
        di
        ld e, $0
        ld hl, $d480
.asm_a7e3
        ld d, $1
        xor a
        ld [rSVBK], a
        ld a, [hl]
        cp $ed
        jr nz, .asm_a7ef
        ld d, $6

.asm_a7ef
        ld a, $2
        ld [rSVBK], a
        ld a, d
        ld [hl], a
        inc hl
        inc e
        ld a, e
        cp $40
        jr nz, .asm_a7e3
        xor a
        ld [rSVBK], a
        ei

.asm_a800
        ret
; 0xa801

INCBIN "baserom.gbc", 16384*2+$2801, $2b73-$2801

Unknown_ab73:
INCBIN "baserom.gbc", 16384*2+$2b73, $2b78-$2b73

Unknown_ab78:
INCBIN "baserom.gbc", 16384*2+$2b78, $2b7d-$2b78

Unknown_ab7d:
INCBIN "baserom.gbc", 16384*2+$2b7d, $2b82-$2b7d

Functionab82:
        ld c, $4
        ld b, $0
        call Functionac4b
        ld a, [$ffd8]
        ld [$ffd7], a
        xor a
        ld [$c133], a
        ld c, $0
        ld a, [$ff9a]
        and a
        jr z, .asm_abbe
        and $80
        jr z, .asm_ab9d
        inc c

.asm_ab9d
        call Functionac4b
        ld a, [$ffaf]
        cp $8a
        jr nz, .asm_abb5
        ld a, [$c5a6]
        and a
        jr nz, .asm_abb5
        inc a
        ld [$c5a6], a
        ld a, $51
        call Function237c

.asm_abb5
        ld a, [$ffaf]
        cp $ff
        jr nz, .asm_abbe
        call asm_ac85

.asm_abbe
        ld c, $2
        ld a, [$ff9b]
        and a
        and $80
        jr nz, .asm_abc8
        inc c

.asm_abc8
        call Functionac4b
        ld a, [$ff9b]
        and $80
        jr nz, .asm_abed
        ld a, [$ffcb]
        and $8
        jr nz, .asm_abed
        ld a, [$ffe9]
        and $f
        cp $3
        jr nc, .asm_abed
        ld a, [$ffaf]
        cp $62
        jr z, .asm_abf4
        cp $64
        jr z, .asm_abf4
        cp $66
        jr z, .asm_abf4

.asm_abed
        ld a, [$c133]
        and $8
        jr z, .asm_ac07

.asm_abf4
        ld a, [$c133]
        or $8
        ld [$c133], a
        xor a
        ld [$ff9b], a
        ld a, [$ff99]
        and $f0
        add $0
        ld [$ff99], a

.asm_ac07
        ld a, [$c133]
        and $4
        jr z, .asm_ac12
        ld a, [$ffa0]
        ld [$ff99], a

.asm_ac12
        ld a, [$c133]
        and $3
        ret z
        ld a, [$ff9f]
        ld [$ff98], a
        ld a, [$c14a]
        and a
        ret z
        call Functioncab
        ld a, [$ff9a]
        cpl
        inc a
        sra a
        sra a
        ld [$ff9a], a
        ld a, $e8
        ld [$ff9b], a
        call Function219f
        call Functionac91
        ld a, $20
        ld [$c157], a
        ld a, [$ff9e]
        and $2
        sla a
        ld [$c158], a
        ld a, $b
        ld [$fff2], a
        ret
; 0xac4b

Functionac4b:
        ld hl, Unknown_ab78
        add hl, bc
        ld a, [$ff98]
        sub $8
        add [hl]
        swap a
        and $f
        ld e, a
        ld hl, Unknown_ab7d
        add hl, bc
        ld a, [$ff99]
        add [hl]
        sub $10
        ld [$ffe9], a
        and $f0
        or e
        ld e, a
        ld d, $0
        ld hl, $d711
        ld a, h
        add hl, de
        ld h, a
        ld a, [hl]
        ld [$ffaf], a
        ld e, a
        ld a, [$dba5]
        ld d, a
        call Function2a1d
        ld [$ffd8], a
        cp $60
        jr z, asm_ac85
        cp $1
        jr nz, asm_ac90

asm_ac85
        ld hl, Unknown_ab73
        add hl, bc
        ld a, [$c133]
        or [hl]
        ld [$c133], a

asm_ac90
        ret
; 0xac91

Functionac91:
        ld a, [$c19f]
        ld hl, $c14f
        or [hl]
        ret nz
        ld a, [$fff7]
        cp $1f
        jr nz, .asm_acb5
        ld a, [$fff9]
        and a
        jr z, .asm_acb5
        ld a, [$fff6]
        cp $eb
        jr z, .asm_acae
        cp $ec
        jr nz, .asm_acb5

.asm_acae
        ld a, [$ff99]
        cp $2c
        jp c, Functionc79

.asm_acb5
        ld e, $2
        ld a, [$ff99]
        cp $c
        jr c, .asm_acd2
        inc e
        cp $84
        jr nc, .asm_acd2
        ld e, $1
        ld a, [$ff98]
        cp $4
        jr c, .asm_ad2f
        dec e
        cp $9c
        jr nc, .asm_ad2f
        jp .asm_ae2b

.asm_acd2
        ld a, [$fff9]
        and a
        jr nz, .asm_aced
        ld a, [$fff7]
        cp $1f
        jp nz, .asm_ad78
        ld a, [$fff6]
        cp $f5
        jp z, Functionc79
        cp $f2
        jp nz, .asm_ad78
        jp Functionc79

.asm_aced
        ld a, [$fff6]
        cp $e8
        jp z, .asm_ad78
        cp $f8
        jp z, .asm_ad78
        cp $fd
        jr z, .asm_ad1c
        cp $a3
        jp z, Functionc79
        cp $c0
        jp z, Functionc79
        cp $c1
        jp z, Functionc79
        cp $ff
        jr nz, .asm_ad26
        ld a, [$ff99]
        cp $50
        jr nc, .asm_ad1c
        ld a, [$c280]
        and a
        jr z, .asm_ad78

.asm_ad1c
        ld a, [$ffa0]
        ld [$ff99], a
        xor a
        ld [$ff9b], a
        jp .asm_ae2b

.asm_ad26
        ld a, [$ff9c]
        cp $2
        jr z, .asm_ad78
        jp Functionc79

.asm_ad2f
        ld a, [$ff9f]
        ld [$ff98], a
        xor a
        ld [$ff9a], a
        ld a, [$fff9]
        and a
        jr z, .asm_ad78
        ld a, [$fff6]
        cp $f5
        jp z, Functionc7f
        cp $fd
        jp z, Functionc7f
        cp $e9
        jp z, Functionc79
        cp $e8
        jp z, .asm_ae2b
        cp $f8
        jp z, .asm_ae2b
        cp $ef
        jp z, .asm_ae2b
        cp $ff
        jp z, .asm_ae2b
        cp $c0
        jr nz, .asm_ad6d
        ld a, [$ff98]
        cp $30
        jp c, .asm_ae2b
        jr .asm_ad78

.asm_ad6d
        cp $c1
        jr nz, .asm_ad78
        ld a, [$ff98]
        cp $50
        jp nc, .asm_ae2b

.asm_ad78
        call Functioncba
        ld a, [$c181]
        cp $50
        jp z, asm_ae2e
        cp $51
        jp z, asm_ae2e
        ld a, [$c11f]
        cp $7
        jp z, asm_ae2e
        ld a, [$c11c]
        cp $6
        jp z, asm_ae2e
        ld a, [$fff9]
        and a
        jr nz, .asm_ada4
        ld a, [$c146]
        and a
        jp nz, asm_ae2e

.asm_ada4
        ld a, [$c14a]
        and a
        jr nz, .asm_adb0
        ld a, [$c16d]
        and a
        jr nz, asm_ae2e

.asm_adb0
        ld a, [$c13e]
        ld hl, $c157
        or [hl]
        jr nz, asm_ae2e
        ld a, [$ff99]
        cp $88
        jr nc, .asm_ade8
        ld a, [$c14a]
        ld hl, $fff9
        or [hl]
        ld hl, $ffb2
        or [hl]
        jr nz, .asm_ade8
        ld a, [$ffcb]
        and $f
        jr z, asm_ae2e
        and $3
        jr z, .asm_adda
        dec a
        cp e
        jr z, .asm_ade8

.asm_adda
        ld a, [$ffcb]
        rra
        rra
        and $3
        jr z, asm_ae2e
        dec a
        add $2
        cp e
        jr nz, asm_ae2e

.asm_ade8
        ld a, [$fff6]
        cp $e8
        jr nz, .asm_ae00
        ld a, [$fff7]
        cp $1f
        jr z, .asm_ae00
        ld a, [$dba5]
        and a
        jr z, .asm_ae00
        xor a
        ld [$c1bf], a
        ld [$ff43], a

.asm_ae00
        ld a, e
        ld [$c125], a
        ld a, $1
        ld [$c124], a
        xor a
        ld [$c14b], a
        ld [$c121], a
        ld [$c14a], a
        ld [$c188], a
        ld [$ddd6], a
        ld [$ddd7], a
        ld a, [$ff99]
        cp $88
        jr c, .asm_ae2b
        ld a, $2
        ld [$c146], a
        ld a, $8
        ld [$ffa2], a

.asm_ae2b
        jp Functionae67

asm_ae2e
        call Function178d
        ld [$c13e], a
        jp Functionae67
; 0xae37

Unknown_ae37:
INCBIN "baserom.gbc", 16384*2+$2e37, $2e3f-$2e37

Unknown_ae3f:
INCBIN "baserom.gbc", 16384*2+$2e3f, $2e47-$2e3f

Unknown_ae47:
INCBIN "baserom.gbc", 16384*2+$2e47, $2e49-$2e47

Unknown_ae49:
INCBIN "baserom.gbc", 16384*2+$2e49, $2e4b-$2e49

Unknown_ae4b:
INCBIN "baserom.gbc", 16384*2+$2e4b, $2e53-$2e4b

Unknown_ae53:
INCBIN "baserom.gbc", 16384*2+$2e53, $2e5b-$2e53

Unknown_ae5b:
INCBIN "baserom.gbc", 16384*2+$2e5b, $2e5f-$2e5b

Unknown_ae5f:
INCBIN "baserom.gbc", 16384*2+$2e5f, $2e63-$2e5f

Unknown_ae63:
INCBIN "baserom.gbc", 16384*2+$2e63, $2e67-$2e63

Functionae67:
        ld hl, $c10a
        ld a, [$c17b]
        or [hl]
        ret nz
        ld a, [$fff9]
        and a
        jr z, .asm_ae77
        jp Functionab82

.asm_ae77
        xor a
        ld [$c133], a
        ld a, [$ff9b]
        cp $0
        jr z, asm_aeff
        ld e, $3
        rla
        ld bc, Unknown_ae47
        jr nc, .asm_ae8b
        dec e
        inc bc

.asm_ae8b
        ld a, e
        ld [$ffe3], a
        ld e, $2
        ld a, [bc]
        ld c, a
        ld b, $0
.asm_ae94
        push de
        push bc
        call Functionaf4e
        pop bc
        pop de
        inc bc
        dec e
        jr nz, .asm_ae94
        ld a, [$ff9b]
        and $80
        jr nz, asm_aee8
        ld a, [$dba5]
        and a
        jr nz, asm_aee8
        ld a, [$ffaf]
        cp $e9
        jr nz, asm_aee8
        ld a, [$db0c]
        and a
        jr z, asm_aee8
        ld a, [$c5a8]
        cp $d5
        jr z, asm_aee8
        ld a, [$c11c]
        cp $2
        jr z, asm_aeff
        ld a, $8
        ld [$fff2], a
        jr asm_aed7

Functionaecb:
        ld a, $8
        ld [$fff2], a
        ld a, [$ff98]
        and $f0
        add $8
        ld [$ff98], a

asm_aed7
        ld a, $2
        ld [$c11c], a
        xor a
        ld [$ff9c], a
        ld a, [$ff99]
        sub $8
        ld [$ff99], a
        jp Functioncb2

asm_aee8
        ld a, [$c133]
        and $3
        jr z, asm_aeff
        ld e, a
        ld d, $0
        ld hl, Unknown_ae5b
        add hl, de
        ld a, [$ff98]
        add [hl]
        ld [$ff98], a
        ld a, [$ffa0]
        ld [$ff99], a

asm_aeff
        ld a, [$ff9a]
        cp $0
        jr z, .asm_af3e
        ld e, $0
        rla
        ld bc, Unknown_ae49
        jr nc, .asm_af0f
        inc e
        inc bc

.asm_af0f
        ld a, e
        ld [$ffe3], a
        ld e, $2
        ld a, [bc]
        ld c, a
        ld b, $0
.asm_af18
        push de
        push bc
        call Functionaf4e
        pop bc
        pop de
        inc bc
        dec e
        jr nz, .asm_af18
        ld a, [$c133]
        and $c
        jr z, .asm_af3e
        srl a
        srl a
        ld e, a
        ld d, $0
        ld hl, Unknown_ae5b
        add hl, de
        ld a, [$ff99]
        add [hl]
        ld [$ff99], a
        ld a, [$ff9f]
        ld [$ff98], a

.asm_af3e
        ld a, [$c133]
        and a
        jr nz, .asm_af47
        ld [$c1c3], a

.asm_af47
        jp Functionb4f2
; 0xaf4a

Unknown_af4a:
INCBIN "baserom.gbc", 16384*2+$2f4a, $2f4e-$2f4a

Functionaf4e:
        ld hl, Unknown_ae37
        add hl, bc
        ld a, [$ff98]
        sub $8
        add [hl]
        ld [$ffdb], a
        swap a
        and $f
        ld e, a
        ld hl, Unknown_ae3f
        add hl, bc
        ld a, [$ff99]
        add [hl]
        sub $10
        ld [$ffdc], a
        and $f0
        or e
        ld e, a
        ld [$ffe9], a
        ld d, $0
        ld hl, $d711
        ld a, h
        add hl, de
        ld h, a
        ld a, [hl]
        ld [$ffaf], a
        ld e, a
        ld a, [$dba5]
        ld d, a
        call Function2a1d
        ld [$ffe4], a
        and a
        jp z, Functionb4a6
        cp $1
        jp z, Functionb29f
        cp $2
        jp z, asm_b288
        cp $3
        jp z, Functionb1e3
        cp $10
        jp z, Functionb1c4
        cp $4
        jp z, Functionb265
        cp $30
        jp z, Functionb29f
        cp $60
        jp z, Functionb29f
        cp $a
        jp z, asm_b288
        cp $ff
        jp z, Functionb4a6
        cp $e0
        jp z, Functionb4a6
        cp $f0
        jp nc, Functionb4a6
        cp $c0
        jp nz, Functionb067
        ld a, [$ff9e]
        cp $2
        jp nz, .asm_b05d
        ld a, [$fff8]
        bit 4, a
        jp nz, .asm_b05d
        ld a, [$fff6]
        cp $e
        jr nz, .asm_afdf
        ld a, [$db14]
        ld e, $33
        jr .asm_afe8

.asm_afdf
        cp $8c
        jr nz, .asm_b005
        ld a, [$db13]
        ld e, $34

.asm_afe8
        and a
        jr z, .asm_b060
        ld a, [$fff6]
        cp $8c
        jr nz, .asm_aff6
        call Function27e9
        jr .asm_aff9

.asm_aff6
        call Function9440

.asm_aff9
        ld a, $28
        call Function3b7d
        ld hl, $c2c0
        add hl, de
        inc [hl]
        jr .asm_b04e

.asm_b005
        cp $2b
        jr nz, .asm_b020
        ld a, [$db12]
        and a
        ld e, $32
        jr z, .asm_b060
        call Function27e9
        ld a, $5f
        call Function3b7d
        ld hl, $c440
        add hl, de
        dec [hl]
        jr .asm_b04e

.asm_b020
        cp $b5
        jr nz, .asm_b02f
        ld a, [$db15]
        cp $6
        ld e, $31
        jr nz, .asm_b060
        jr .asm_b037

.asm_b02f
        ld a, [$db11]
        and a
        ld e, $30
        jr z, .asm_b060

.asm_b037
        ld a, [$ff99]
        ld [$ffd8], a
        ld a, [$ff98]
        ld [$ffd7], a
        ld a, $9
        call Functioncc3
        ld [hl], $df
        ld a, $df
        ld [$c111], a
        call Function27e9

.asm_b04e
        ld hl, $d800
        ld a, [$fff6]
        ld e, a
        ld d, $0
        add hl, de
        ld a, [hl]
        or $10
        ld [hl], a
        ld [$fff8], a
.asm_b05d
        jp Functionb29f

.asm_b060
        ld a, e
        call Funcionb549
        jp Functionb29f
; 0xb067

Functionb067:
        ld a, [$ffaf]
        cp $db
        jr nz, .asm_b075
        ld a, [$c11c]
        cp $1
        jp z, Functionb29f

.asm_b075
        ld a, [$ffe4]
        cp $d0
        jp c, Functionb107
        cp $d4
        jp nc, Functionb107
        sub $d0
        ld e, a
        ld a, [$dba5]
        and a
        jr nz, .asm_b0a7
        ld a, e
        cp $0
        jr nz, .asm_b09a
        ld a, [$ffdb]
        and $f
        cp $8
        jp c, Functionb4a6
        jr .asm_b0a7

.asm_b09a
        cp $1
        jr nz, .asm_b0a7
        ld a, [$ffdb]
        and $f
        cp $8
        jp nc, Functionb4a6

.asm_b0a7
        ld a, [$c146]
        and a
        jr nz, .asm_b100
        ld d, $0
        ld a, [$ff9e]
        cp e
        jp nz, .asm_b100
        ld a, [$c13e]
        ld hl, $c121
        or [hl]
        ld hl, $d45e
        or [hl]
        jr nz, .asm_b100
        ld a, [$c14a]
        and a
        jr nz, .asm_b0dd
        ld hl, Unknown_af4a
        add hl, de
        ld a, [$ffcb]
        and [hl]
        jr z, .asm_b100
        ld a, [$c191]
        inc a
        ld [$c191], a
        cp $c
        jp c, Functionb29f

.asm_b0dd
        call Functioncb2
        ld hl, Unknown_ae5f
        add hl, de
        ld a, [hl]
        ld [$ff9a], a
        ld hl, Unknown_ae63
        add hl, de
        ld a, [hl]
        ld [$ff9b], a
        ld a, $1c
        ld [$ffa3], a
        ld a, $1
        ld [$c146], a
        ld a, $1
        ld [$c10a], a
        ld a, $8
        ld [$fff2], a

.asm_b100
        xor a
        ld [$c191], a
        jp Functionb29f
; 0xb107

Functionb107:
        cp $90
        jp c, Functionb187
        cp $99
        jp nc, Functionb29f
        sub $90
        ld e, a
        ld d, $0
        bit 1, a
        jr nz, .asm_b12b
        ld hl, $c1d0
        add hl, de
        ld e, [hl]
        ld a, [$ff98]
        sub e
        sub $c
        cp $8
        jp nc, Functionb29f
        jr .asm_b13a

.asm_b12b
        ld hl, $c1e0
        add hl, de
        ld e, [hl]
        ld a, [$ff99]
        sub e
        sub $14
        cp $8
        jp nc, Functionb29f

.asm_b13a
        ld a, [$c188]
        and a
        jp nz, Functionb29f
        ld a, [$ffe4]
        cp $94
        jr nc, .asm_b154
        ld a, [$dbd0]
        and a
        jp z, Functionb29f
        dec a
        ld [$dbd0], a
        jr .asm_b16f

.asm_b154
        cp $98
        jr z, .asm_b161
        ld a, [$c18e]
        and a
        jr z, .asm_b16f
        jp Functionb29f

.asm_b161
        ld a, [$dbcf]
        and a
        jr nz, .asm_b16f
        ld a, $7
        call Functionb543
        jp Functionb29f

.asm_b16f
        ld a, [$ffe4]
        sub $90
        ld [$c189], a
        xor a
        ld [$dbac], a
        inc a
        ld [$c188], a
        call Function27f9
        call Function9440
        jp Functionb29f
; 0xb187

Functionb187:
        cp $7c
        jp c, Functionb4a6
        push af
        jr z, .asm_b193
        cp $7d
        jr nz, .asm_b196

.asm_b193
        call Functionb4ad

.asm_b196
        pop af
        cp $90
        jp nc, Functionb4a6
        sub $7c
        sla a
        sla a
        ld e, a
        ld d, $0
        ld hl, Unknown_89d2
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
        and a
        jp nz, Functionb29f
        jp Functionb4a6
; 0xb1c4

Functionb1c4:
        ld a, [$c11c]
        cp $2
        jp z, asm_b499
        ld a, [$c5a8]
        cp $d5
        jp z, asm_b499
        ld a, [$ffdc]
        and $f
        cp $8
        jp c, Functionb4a6
        call Functionaecb
        jp asm_b499
; 0xb1e3

Functionb1e3:
        ld a, [$c15c]
        and a
        jp nz, asm_b499
        ld a, [$ffdc]
        and $f
        cp $6
        jp nc, Functionb292
        ld a, [$dba5]
        and a
        jr nz, .asm_b254
        ld a, [$db79]
        cp $1
        jr z, .asm_b206
        ld a, [$db73]
        and a
        jr z, .asm_b254

.asm_b206
        ld a, [$fff6]
        cp $77
        jr z, .asm_b22c
        cp $d3
        jr z, .asm_b22c
        cp $24
        jr z, .asm_b22c
        cp $b5
        jr z, .asm_b22c
        cp $2b
        jr z, .asm_b22c
        cp $d9
        jr z, .asm_b22c
        cp $ac
        jr z, .asm_b22c
        cp $8c
        jr z, .asm_b22c
        cp $e
        jr nz, .asm_b254

.asm_b22c
        ld a, [$db79]
        cp $1
        jr nz, .asm_b23b
        ld a, $12
        call Funcionb549
        jp asm_b499

.asm_b23b
        xor a
        ld [$db47], a
        ld a, $98
        ld [$c3c9], a
        call Function236a
        ld a, [$c163]
        inc a
        ld [$db10], a
        call Functionc9a
        jp asm_b499

.asm_b254
        ld a, [$c13e]
        and a
        jp nz, asm_b499
        ld a, [$dba5]
        and a
        jp nz, Functionc85
        jp Functionc79
; 0xb265

Functionb265:
        ld a, [$d6f9]
        and a
        jp nz, Functionb4a6
        ld a, [$ffaf]
        cp $db
        jr c, Functionb29f
        cp $dd
        jr nc, Functionb29f
        sub $db
        ld e, a
        ld d, $0
        ld hl, Unknown_b8d6
        add hl, de
        ld a, [$d6fb]
        xor [hl]
        jr nz, Functionb29f
        jp Functionb4a6

asm_b288
        ld hl, $c11f
        ld [hl], $1
        cp $a
        jp z, Functionb4a6

Functionb292:
        ld a, [$ffdb]
        and $f
        cp $6
        jr c, Functionb29f
        cp $b
        jp c, Functionb4a6

Functionb29f:
        ld a, [$ffaf]
        cp $69
        jr nz, .asm_b2b6
        ld hl, $ffe3
        ld a, [$ff9e]
        cp [hl]
        jr nz, .asm_b2b3
        ld a, [$c15b]
        and a
        jr nz, .asm_b2b6

.asm_b2b3
        call Functionb63a

.asm_b2b6
        ld hl, $ffe3
        ld a, [$ff9e]
        cp [hl]
        jr nz, .asm_b322
        ld a, [$c13e]
        ld hl, $c146
        or [hl]
        jr nz, .asm_b322
        ld a, [$dba5]
        and a
        ld a, [$ffaf]
        jr z, .asm_b2f9
        ld e, $8a
        cp $a9
        jr z, .asm_b314
        ld e, $8b
        cp $4f
        jr z, .asm_b2e3
        cp $4e
        jr z, .asm_b2e3
        cp $88
        jr nz, .asm_b2eb

.asm_b2e3
        ld a, [$c14a]
        and a
        jr nz, .asm_b322
        jr .asm_b314

.asm_b2eb
        cp $de
        jr nz, .asm_b2f9
        ld a, [$dbd0]
        and a
        jr nz, .asm_b322
        ld e, $8c
        jr .asm_b314

.asm_b2f9
        cp $20
        jr nz, .asm_b322
        ld a, [$db01]
        cp $3
        jr z, .asm_b322
        ld a, [$db00]
        cp $3
        jr z, .asm_b322
        ld a, [$db66]
        and $2
        jr nz, .asm_b322
        ld e, $8d

.asm_b314
        ld a, [$c5a6]
        and a
        jr nz, .asm_b322
        inc a
        ld [$c5a6], a
        ld a, e
        call Functionb543

.asm_b322
        ld a, [$c14a]
        and a
        jr nz, .asm_b358
        ld a, [$c16a]
        cp $5
        jr nz, .asm_b358
        ld hl, Unknown_ae53
        add hl, bc
        ld a, [$ff9e]
        cp [hl]
        jp nz, asm_b499
        ld a, [$c1c3]
        inc a
        ld [$c1c3], a
        cp $c
        jp c, asm_b499
        xor a
        ld [$c1c3], a
        xor a
        ld [$c121], a
        ld [$c122], a
        ld a, $c
        ld [$c16d], a
        jp asm_b499

.asm_b358
        ld a, [$c15b]
        and a
        jr nz, .asm_b363
        ld a, $3
        ld [$c144], a

.asm_b363
        ld a, [$fff7]
        and a
        ld a, [$ffaf]
        jr z, Functionb3db
        cp $88
        jr z, .asm_b377
        cp $4e
        jr z, .asm_b377
        cp $4f
        jp nz, Functionb3db

.asm_b377
        ld a, [$c14a]
        and a
        jp z, asm_b499
        ld a, [$ffdb]
        and $f0
        ld [$ffce], a
        ld a, [$ffdc]
        and $f0
        ld [$ffcd], a
        ld a, [$ffe9]
        ld e, a
        ld d, $0
        call Function2171
        ld a, $5
        call Function3b7d
        jp c, asm_b499
        ld hl, $c200
        add hl, de
        ld a, [$ffe9]
        swap a
        and $f0
        add $8
        ld [hl], a
        ld hl, $c210
        add hl, de
        ld a, [$ffe9]
        and $f0
        add $10
        ld [hl], a
        ld hl, $c3b0
        add hl, de
        ld [hl], d
        ld hl, $fff4
        ld [hl], $9
        ld hl, $c2f0
        add hl, de
        ld [hl], $f
        ld hl, $c340
        add hl, de
        ld [hl], $c4
        jp Functionb4a6

Unknown_b3cb:
        inc h
        dec h
        inc sp
        ld [hli], a
        inc hl
        inc d
        ld h, $27
Unknown_b3d3:
        inc bc
        inc bc
        ld bc, $0202
        nop
        ld [bc], a
        ld [bc], a

Functionb3db:
        ld e, $20
        cp $c5
        jr nz, .asm_b455
        ld a, [$dba5]
        and a
        jp nz, asm_b499
        ld a, [$fff6]
        cp $77
        jr nz, .asm_b465
        ld a, [$ddd9]
        ld a, [$ff98]
        sub $8
        swap a
        and $f
        ld e, a
        ld a, [$ff99]
        sub $8
        and $f0
        or e
        ld [$ffd7], a
        ld e, $0
        ld d, e
.asm_b406
        ld hl, Unknown_b3cb
        add hl, de
        ld a, [$ffd7]
        cp [hl]
        jr nz, .asm_b418
        ld a, [$ff9e]
        ld hl, Unknown_b3d3
        add hl, de
        cp [hl]
        jr z, .asm_b420

.asm_b418
        inc de
        ld a, e
        cp $8
        jr nz, .asm_b406
        jr asm_b499

.asm_b420
        ld a, e
        cp $6
        jr c, .asm_b465
        ld a, [$c146]
        and a
        jr nz, asm_b499
        ld hl, $db00
.asm_b42e
        ld a, [hli]
        cp $3
        jr z, .asm_b43a
        ld a, l
        cp $c
        jr nz, .asm_b42e
        jr .asm_b44d

.asm_b43a
        ld a, [$db73]
        ld hl, $db79
        or [hl]
        ld hl, $db7b
        or [hl]
        ld hl, $db56
        or [hl]
        and $7f
        jr z, .asm_b465

.asm_b44d
        ld a, $53
        call Function2373
        jp asm_b499

.asm_b455
        ld a, [$dba5]
        and a
        jr z, asm_b499
        ld a, [$ffaf]
        cp $de
        jr z, .asm_b467
        cp $a7
        jr nz, asm_b499

.asm_b465
        ld e, $40

.asm_b467
        ld a, [$c191]
        inc a
        ld [$c191], a
        cp e
        jr c, asm_b499
        ld a, e
        ld [$ffe8], a
        xor a
        ld [$c191], a
        call Function93d0
        ld a, [$dba5]
        and a
        jr nz, asm_b499
        ld a, [$fff6]
        cp $77
        jr nz, asm_b499
        ld hl, $de01
        ld a, $20
        ld [hli], a
        ld a, $49
        ld [hli], a
        ld a, $85
        ld [hli], a
        ld a, $2
        ld [hl], a
        call Functionbd3

asm_b499
        ld hl, Unknown_ae4b
        add hl, bc
        ld a, [$c133]
        or [hl]
        ld [$c133], a
        scf
        ret
; 0xb4a6

Functionb4a6:
        xor a
        ld [$c191], a
        scf
        ccf
        ret
; 0xb4ad

Functionb4ad:
        ld a, [$ffaf]
        cp $b1
        jr z, .asm_b4b7
        cp $b2
        jr nz, .asm_b4d8

.asm_b4b7
        ld a, [$ffdc]
        and $f
        cp $6
        jr nc, .asm_b4f1
        ld a, $c
        ld [$fff2], a
        ld a, $5
        ld [$c11c], a
        call Function178d
        ld [$dbc7], a
        ld [$c198], a
        ld [$ffa2], a
        ld [$ffa3], a
        jp Functioncab

.asm_b4d8
        cp $c1
        jr z, .asm_b4e8
        cp $c2
        jr z, .asm_b4e8
        cp $bb
        jr z, .asm_b4e8
        cp $bc
        jr nz, .asm_b4f1

.asm_b4e8
        ld a, [$ffdc]
        and $f
        cp $c
        jp nc, Functionc79

.asm_b4f1
        ret
; 0xb4f2

Functionb4f2:
        ld a, [$c14a]
        and a
        ret z
        ld a, [$dbaf]
        cp $2
        ret nz
        ld a, [$c133]
        and $3
        cp $3
        jr z, .asm_b50e
        ld a, [$c133]
        and $c
        cp $c
        ret nz

.asm_b50e
        call Functioncab
        ld a, [$ff9a]
        cpl
        inc a
        sra a
        sra a
        ld [$ff9a], a
        ld a, [$ff9b]
        cpl
        inc a
        sra a
        sra a
        ld [$ff9b], a
        ld a, $18
        ld [$ffa3], a
        ld a, $2
        ld [$c146], a
        ld a, $20
        ld [$c157], a
        ld a, [$ff9e]
        and $2
        sla a
        ld [$c158], a
        ld a, $b
        ld [$fff2], a
        jp Function1827
; 0xb543

Functionb543:
        call Function237c
        jp Function178d
; 0xb549

Funcionb549:
        call Function2373
        jp Function178d
; 0xb54f

INCBIN "baserom.gbc", 16384*2+$354f, $363a-$354f

Functionb63a:
        ld a, [$dbc7]
        and a
        jr nz, .asm_b679
        call Functioncab
        ld a, [$ff9a]
        cpl
        inc a
        ld [$ff9a], a
        ld a, [$ff9b]
        cpl
        inc a
        ld [$ff9b], a
        ld a, $2
        ld [$c146], a
        ld a, [$fff9]
        and a
        jr nz, .asm_b663
        ld a, $10
        ld [$ffa3], a
        ld a, [$ffa2]
        add $2
        ld [$ffa2], a

.asm_b663
        ld a, $10
        ld [$c13e], a
        ld a, $30
        ld [$dbc7], a
        ld a, [$db94]
        add $4
        ld [$db94], a
        ld a, $3
        ld [$fff3], a

.asm_b679
        ret
; 0xb67a

INCBIN "baserom.gbc", 16384*2+$367a, $38d6-$367a

Unknown_b8d6:

INCBIN "baserom.gbc", 16384*2+$38d6, $4000-$38d6
