
SECTION "bank32", ROMX, BANK[$20]

; 0x80000

Unknown_80000:

INCBIN "baserom.gbc", 16384*32+$0, $303-$0

Function80303:
        ld a, [$c5a0]
        ld [$c5a1], a
        xor a
        ld [$c5a0], a
        ld [$c10c], a
        ld [$ffb2], a
        ld [$c117], a
        ld [$c19d], a
        ld [$c147], a
        ld [$c5a8], a
        ld [$d45e], a
        ret
; 0x80322

Unknown_80322:

INCBIN "baserom.gbc", 16384*32+$322, $518-$322


Function80518:
        ld a, [$ffeb]
        ld e, a
        ld d, $0
        ld hl, Unknown_80322
        sla e
        rl d
        add hl, de
        ld e, [hl]
        inc hl
        ld d, [hl]
        push de
        pop hl
        ret
; 0x8052b

Unknown_8052b:

INCBIN "baserom.gbc", 16384*32+$52b, $577-$52b


Function80577:
        ld hl, Unknown_8052b
        ld b, $0
        ld a, [$d6ff]
        sla a
        ld c, a
        add hl, bc
        ld a, [hl]
        ld e, a
        inc hl
        ld a, [hl]
        ld d, a
        ret
; 0x80589


INCBIN "baserom.gbc", 16384*32+$589, $5ea-$589

Unknown_805ea:
        db $5e, $2d, $5e, $2d, $62, $35, $62, $35, $5e, $2d, $5e, $2d, $62, $35, $62, $35
        db $62, $35, $62, $35, $62, $35, $62, $35, $62, $35, $62, $35, $50, $2d, $62, $35
        db $62, $35, $62, $35, $50, $2d, $62, $35, $62, $35, $62, $35
; 0x80616

Function80616:
        push de
        ld a, [$fff6]
        and a
        jr z, .asm_80620
        cp $5
        jr nz, .asm_80640

.asm_80620
        ld a, [$d6fb]
        and a
        jr z, .asm_80640
        ld a, c
        cp $40
        jr z, .asm_8062f
        cp $80
        jr nz, .asm_80640

.asm_8062f
        xor $c0
        ld l, a
        ld h, $5e
        ld a, [$d6fb]
        ld [$ffbb], a
        ld [$d6fa], a
        pop de
        ld a, $2d
        ret

.asm_80640
        ld hl, Unknown_805ea
        ld a, [$fff6]
        sla a
        ld e, a
        ld d, $0
        add hl, de
        inc hl
        ld a, [hl]
        ld e, a
        dec hl
        ld a, [hl]
        ld h, a
        ld l, $0
        add hl, bc
        ld a, e
        pop de
        ret
; 0x80657

Function80657:
        dec e
        sla e
        ld d, $0
        ld hl, Unknown_80664
        add hl, de
        ld a, [hli]
        ld h, [hl]
        ld l, a
        ret
; 0x80664

Unknown_80664:


INCBIN "baserom.gbc", 16384*32+$664, $6aa-$664

Unknown_806aa:
        db $51, $35, $4f, $35, $00, $00, $4b, $35, $00, $00, $00, $00, $00, $00, $44, $35
        db $00, $00, $00, $00, $00, $00, $00, $00, $48, $35, $00, $00, $00, $00, $00, $00
        db $00, $00, $44, $35, $4e, $35, $00, $00, $00, $00, $00, $00
Unknown_806d6:
        db $00, $00, $4d, $31, $00, $00, $4c, $35, $51, $2e, $45, $35, $45, $35, $00, $00
        db $45, $35, $00, $00, $45, $35, $00, $00, $49, $35, $00, $00, $00, $00, $45, $35
        db $00, $00, $45, $35, $00, $00, $00, $00, $00, $00, $00, $00
Unknown_80702:
        db $50, $35, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
        db $00, $00, $46, $35, $00, $00, $00, $00, $4a, $35, $00, $00, $46, $35, $00, $00
        db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $46, $35
Unknown_8072e:
        db $00, $00, $00, $00, $00, $00, $4d, $35, $00, $00, $00, $00, $00, $00, $00, $00
        db $47, $35, $00, $00, $47, $35, $47, $35, $00, $00, $47, $35, $00, $00, $47, $35
        db $47, $35, $00, $00, $00, $00, $00, $00, $47, $35, $00, $00

Function8075a:
        ld hl, Unknown_806aa
        ld a, [$fff6]
        rla
        ld e, a
        ld d, $0
        inc e
        push de
        add hl, de
        ld a, [hl]
        and a
        jr z, .asm_80776
        ld d, a
        dec hl
        ld a, [hl]
        ld b, a
        ld c, $4
        ld a, d
        ld h, $20
        call Functiona03

.asm_80776
        pop de
        push de
        ld hl, Unknown_806d6
        add hl, de
        ld a, [hl]
        and a
        jr z, .asm_8078c
        ld d, a
        dec hl
        ld a, [hl]
        ld b, a
        ld c, $5
        ld a, d
        ld h, $20
        call Functiona03

.asm_8078c
        pop de
        push de
        ld hl, Unknown_80702
        add hl, de
        ld a, [hl]
        and a
        jr z, .asm_807a2
        ld d, a
        dec hl
        ld a, [hl]
        ld b, a
        ld c, $6
        ld a, d
        ld h, $20
        call Functiona03

.asm_807a2
        pop de
        ld hl, Unknown_8072e
        add hl, de
        ld a, [hl]
        and a
        jr z, .asm_807b7
        ld d, a
        dec hl
        ld a, [hl]
        ld b, a
        ld c, $7
        ld a, d
        ld h, $20
        call Functiona03

.asm_807b7
        ld a, [$fff6]
        cp $1
        jr nz, .asm_807c2
        ld a, $20
        call Functiona22

.asm_807c2
        ret
; 0x807c3


Unknown_807c3:
        db $00, $40, $80, $c0, $00, $40, $80, $c0
Unknown_807cb:
        db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $04
        db $00, $00, $00, $04, $00, $00
Unknown_807e1:
        db $00, $00, $00, $00, $00, $00, $00, $00, $00, $05, $00, $00, $00, $00, $05, $00
        db $00, $00, $00, $00, $00, $05
; 0x807f7


Function807f7:
        ld a, [$fff6]
        ld c, a
        ld hl, Unknown_807cb
        ld a, b
        and a
        jr z, .asm_80804
        ld hl, Unknown_807e1

.asm_80804
        ld b, $0
        add hl, bc
        ld a, [hl]
        and a
        ret z
        ld b, a
        ld c, $0
        ld a, [$ffa6]
        rra
        rra
        rra
        and $7
        ld e, a
        ld d, $0
        ld hl, Unknown_807c3
        add hl, de
        ld l, [hl]
        ld h, $0
        ld de, $6000
        add hl, bc
        add hl, de
        ld de, $8fc0
        ld bc, $0040
        ld a, $35
        and a
        ret
; 0x8082d

Function8082d:
        di
        ld bc, $d700
        ld de, $d000
        ld hl, $ff70
.asm_80837
        ld a, [bc]
        cp $56
        jr z, .asm_80840
        cp $57
        jr nz, .asm_8084b

.asm_80840
        ld [hl], $5
        ld a, [de]
        ld [hl], $0
        and a
        jr z, .asm_8084b
        ld a, $d
        ld [bc], a

.asm_8084b
        inc bc
        inc de
        ld a, e
        cp $c0
        jr nz, .asm_80837
        ei
        ret
; 0x80854

Function80854:
        ld a, [$fffe]
        and a
        ret z
        di
        ld a, $5
        ld [rSVBK], a
        ld hl, $d000
.asm_80860
        xor a
        ld [hli], a
        ld a, l
        cp $c0
        jr nz, .asm_80860
        xor a
        ld [rSVBK], a
        ei
        ret
; 0x8086c


INCBIN "baserom.gbc", 16384*32+$86c, $874-$86c


Function80874:
        ld hl, $486c
        add hl, de
        ld a, [$ffd7]
        add [hl]
        sub $8
        and $f0
        ld [$ffce], a
        swap a
        ld [$ffd7], a
        ld hl, $4870
        add hl, de
        ld a, [$ffd8]
        add [hl]
        sub $10
        and $f0
        ld e, a
        ld [$ffcd], a
        ld a, [$ffd7]
        or e
        ld e, a
        ret
; 0x80898

Function80898:
        push de
        ld hl, $d601
        ld a, [$d600]
        ld e, a
        add $a
        ld [$d600], a
        ld d, $0
        add hl, de
        pop de
        ld a, [$ffcf]
        ld [hli], a
        ld a, [$ffd0]
        ld [hli], a
        ld a, $81
        ld [hli], a
        ld a, [de]
        inc de
        ld [hli], a
        ld a, [de]
        inc de
        ld [hli], a
        ld a, [$ffcf]
        ld [hli], a
        ld a, [$ffd0]
        inc a
        ld [hli], a
        ld a, $81
        ld [hli], a
        ld a, [de]
        inc de
        ld [hli], a
        ld a, [de]
        ld [hli], a
        ld [hl], $0
        ret
; 0x808ca

INCBIN "baserom.gbc", 16384*32+$8ca, $8ca-$8ca


Function808ca:
        ld a, [$c17b]
        and a
        ret nz
        ld a, [$fff7]
        cp $ff
        ret nz
        ld a, [$ffcd]
        ld d, a
        ld a, [$ffce]
        ld e, a
        push de
        ld d, $0
        ld a, [$ff9e]
        ld e, a
        ld a, [$ff98]
        ld [$ffd7], a
        ld a, [$ff99]
        ld [$ffd8], a
        call Function80874
        ld hl, $d711
        add hl, de
        ld a, [hl]
        cp $53
        jr z, .asm_808fc
        cp $55
        jr z, .asm_808fc
        cp $54
        jr nz, .asm_8090a

.asm_808fc
        ld a, [$c146]
        and a
        jr nz, .asm_80917
        call Function80954
        call Function14ca
        jr .asm_80917

.asm_8090a
        cp $56
        jr z, .asm_80912
        cp $57
        jr nz, .asm_80917

.asm_80912
        call Function80923
        jr .asm_80917

.asm_80917
        pop de
        ld a, d
        ld [$ffcd], a
        ld a, e
        ld [$ffce], a
        ret
; 0x8091f


INCBIN "baserom.gbc", 16384*32+$91f, $923-$91f

Function80923:
        ld a, $d
        ld [$ddd8], a
        ld [hl], a
        ld a, [$db90]
        add $5
        ld [$db90], a
        di
        ld a, $5
        ld [$ff70], a
        ld hl, $d011
        add hl, de
        ld [hl], a
        xor a
        ld [$ff70], a
        ei
        call $287e
        push bc
        ld a, $20
        call $0918
        pop bc
        ld de, $491f
        call $4898
        ret
; 0x80950

INCBIN "baserom.gbc", 16384*32+$950, $954-$950

Function80954:
        ld a, [hl]
        inc a
        ld [$ffd7], a
        dec a
        cp $55
        jr nz, .asm_80961
        ld a, $ae
        ld [$ffd7], a

.asm_80961
        ld a, [$ffd7]
        ld [hl], a
        call Function287e
        push bc
        ld a, [$ffd7]
        ld [$ddd8], a
        ld a, $20
        call Function918
        pop bc
        ld a, [$ffd7]
        cp $ae
        jr nz, .asm_8097f
        ld de, $4950
        call Function80898

.asm_8097f
        ret
; 0x80980

INCBIN "baserom.gbc", 16384*32+$980, $9ba-$980

Function809ba:
        ld a, [$ff9e]
        ld e, a
        ld d, $0
        ld hl, $49b2
        add hl, de
        ld a, [$ff98]
        add [hl]
        ld [$c179], a
        ld hl, $49b6
        add hl, de
        ld a, [$ff99]
        add [hl]
        ld [$c17a], a
        ld a, $2
        ld [$c178], a
        ret
; 0x809d9


INCBIN "baserom.gbc", 16384*32+$9d9, $ab3-$9d9

Function80ab3:
        push hl
        ld a, [$ffd7]
        add h
        ld [bc], a
        inc bc
        ld a, [$ffd8]
        add l
        ld [bc], a
        inc bc
        ld hl, $4a93
        ld a, [$ffd9]
        sla a
        ld e, a
        ld d, $0
        add hl, de
        ld a, [hl]
        ld [bc], a
        cp $ff
        jr nz, .asm_80ad4
        dec bc
        ld a, $f0
        ld [bc], a
        inc bc

.asm_80ad4
        inc bc
        ld hl, $4aa3
        add hl, de
        ld a, [hl]
        ld hl, $ffda
        or [hl]
        ld [bc], a
        ld a, [$fffe]
        and a
        jr z, .asm_80aef
        ld a, [$ffda]
        and a
        jr z, .asm_80aef
        ld a, [bc]
        and $f8
        or $4
        ld [bc], a

.asm_80aef
        inc bc
        pop hl
        ld a, [$ffd7]
        add h
        ld [bc], a
        inc bc
        ld a, [$ffd8]
        add l
        add $8
        ld [bc], a
        inc bc
        ld hl, $4a94
        add hl, de
        ld a, [hl]
        ld [bc], a
        inc bc
        ld hl, $4aa4
        add hl, de
        ld a, [hl]
        ld hl, $ffda
        or [hl]
        ld [bc], a
        ld a, [$fffe]
        and a
        jr z, .asm_80b1e
        ld a, [$ffda]
        and a
        jr z, .asm_80b1e
        ld a, [bc]
        and $f8
        or $4
        ld [bc], a

.asm_80b1e
        ret
; 0x80b1f

Function80b1f:
        xor a
        ld [$c14e], a
        ld [$c14d], a
        ld [$c1a4], a
        ld [$c15c], a
        ld [$c1ae], a
        ld a, [$c144]
        and a
        jr z, .asm_80b39
        dec a
        ld [$c144], a

.asm_80b39
        ret
; 0x80b3a


INCBIN "baserom.gbc", 16384*32+$b3a, $b4a-$b3a

Function80b4a:
        ld a, [$ff9e]
        ld e, a
        ld d, $0
        ld hl, $4b3a
        add hl, de
        ld a, [$ff98]
        add [hl]
        ld [$c140], a
        ld hl, $4b3e
        add hl, de
        ld a, [hl]
        ld [$c141], a
        ld hl, $4b42
        add hl, de
        ld a, [$c145]
        add [hl]
        ld [$c142], a
        ld hl, $4b46
        add hl, de
        ld a, [hl]
        ld [$c143], a
        xor a
        ld [$c5b0], a
        ret
; 0x80b79

INCBIN "baserom.gbc", 16384*32+$b79, $b81-$b79

Function80b81:
        ld hl, $c2f0
        add hl, de
        ld [hl], $10
        ld a, [$c1c0]
        and a
        jp z, $4baa
        xor a
        ld [$c1c0], a
        ld a, [$db01]
        cp $5
        ret nz
        ld a, [$db00]
        cp $5
        ret nz
        ld a, [$c1c2]
        ld c, a
        ld b, d
        ld hl, $c290
        add hl, bc
        ld [hl], $1
        ret
; 0x80baa

INCBIN "baserom.gbc", 16384*32+$baa, $c0b-$baa

Function80c0b:
        ld hl, $c2e0
        add hl, de
        ld [hl], $28
        ld c, $4
        ld b, $0
        ld a, [$ffcb]
.asm_80c17
        srl a
        jr nc, .asm_80c1c
        inc b

.asm_80c1c
        dec c
        jr nz, .asm_80c17
        ld a, b
        cp $2
        jr c, .asm_80c4a
        ld a, [$ffcb]
        and $3
        ld c, a
        ld b, $0
        ld hl, $4c04
        add hl, bc
        ld a, [hl]
        ld hl, $c240
        add hl, de
        ld [hl], a
        ld a, [$ffcb]
        srl a
        srl a
        and $3
        ld c, a
        ld b, $0
        ld hl, $4c07
        add hl, bc
        ld a, [hl]
        ld hl, $c250
        add hl, de
        ld [hl], a

.asm_80c4a
        ret
; 0x80c4b


INCBIN "baserom.gbc", 16384*32+$c4b, $c53-$c4b

Function80c53: ; 0x80c53
        ld a, $5
        ld [$fff2], a
        ld a, $e
        ld [$c19b], a
        ld a, [$db4c]
        sub $1
        daa
        ld [$db4c], a
        jr nz, .asm_80c79
        ld hl, $db00
        ld a, [hl]
        cp $c
        jr nz, .asm_80c71
        ld [hl], $0

.asm_80c71
        inc hl
        ld a, [hl]
        cp $c
        jr nz, .asm_80c79
        ld [hl], $0

.asm_80c79
        push bc
        ld a, [$ff9e]
        ld c, a
        ld hl, $4c4b
        add hl, bc
        ld a, [$ff98]
        add [hl]
        ld hl, $c200
        add hl, de
        ld [hl], a
        ld hl, $4c4f
        add hl, bc
        ld a, [$ff99]
        add [hl]
        ld hl, $c210
        add hl, de
        ld [hl], a
        ld a, [$ffa2]
        ld hl, $c310
        add hl, de
        ld [hl], a
        ld hl, $c2e0
        add hl, de
        ld [hl], $17
        pop bc
        ret
; 0x80ca4


INCBIN "baserom.gbc", 16384*32+$ca4, $1263-$ca4

Function81263:
        ld a, [$db96]
        cp $a
        ret nc
        ld hl, $c17c
        xor a
        ld [hli], a
        ld [hli], a
        ld d, $0
        ld a, [$ffe7]
        and $1
        jr nz, .asm_81288
        ld a, [$c17e]
        inc a
        cp $10
        jr c, .asm_81285
        ld a, $10
        ld [$c17e], a
        ret

.asm_81285
        ld [$c17e], a

.asm_81288
        ld a, [$c17e]
        ld e, a
        ld hl, $5252
        add hl, de
        ld a, [hl]
        ld [$ffd7], a
        sla e
        ld hl, $5230
        add hl, de
        ld a, [hli]
        ld b, [hl]
        ld c, a
.asm_8129c
        ld a, [rLY]
        cp $10
        jr nz, .asm_8129c
.asm_812a2
        ld a, [rSTAT]
        and $3
        jr nz, .asm_812a2
        ld hl, $ffd8
        ld [hl], $1
        ld a, [$fffe]
        and a
        jr z, .asm_812b4
        ld [hl], $3

.asm_812b4
        ld a, [$c17d]
        inc a
        ld [$c17d], a
        and [hl]
        jr nz, .asm_812b4
        ld a, [$ffd7]
        ld l, a
        ld a, [$c17c]
        ld e, a
        inc a
        ld [$c17c], a
        cp $3a
        jr z, .asm_812e8
        cp l
        jr c, .asm_812da
        ld a, [$fffe]
        and a
        jr nz, .asm_812e8
        xor a
        ld [rBGP], a
        jr .asm_812a2

.asm_812da
        ld hl, $0000
        add hl, de
        add hl, bc
        ld a, [hl]
        ld hl, $ff97
        add [hl]
        ld [rSCY], a
        jr .asm_812a2

.asm_812e8
        ld a, [$ff97]
        sub $38
        ld [rSCY], a
.asm_812ee
        ld a, [rLY]
        cp $48
        jr c, .asm_812ee
.asm_812f4
        ld a, [rSTAT]
        and $3
        jr nz, .asm_812f4
        ld a, [$ff97]
        ld [rSCY], a
        ld a, [$db97]
        ld [rBGP], a
        ret
; 0x81304


INCBIN "baserom.gbc", 16384*32+$1304, $1501-$1304


Function81501:
        ld a, [$ff9d]
        cp $ff
        ret z
        ld hl, $5325
        sla a
        ld c, a
        ld b, $0
        add hl, bc
        ld e, [hl]
        push hl
        ld hl, $5413
        add hl, bc
        ld a, [$c11d]
        and $98
        or [hl]
        ld [$c11d], a
        inc hl
        ld a, [$c11e]
        and $98
        or [hl]
        ld [$c11e], a
        ld d, $0
        sla e
        rl d
        sla e
        rl d
        sla e
        rl d
        sla e
        rl d
        ld hl, $5800
        add hl, de
        ld c, l
        ld b, h
        ld hl, $8000
        ld d, $20
        call Function1d0d
        pop hl
        inc hl
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
        ld hl, $5800
        add hl, de
        ld c, l
        ld b, h
        ld hl, $8020
        ld d, $20
        call Function1d0d
        ret
; 0x8156c


INCBIN "baserom.gbc", 16384*32+$156c, $15d6-$156c


Function815d6: ; 0x815d6
        ld a, [$ffa8]
        and a
        jr z, .asm_815fc
        ld a, [$c16b]
        cp $3
        jr nz, .asm_815fc
        ld a, [$c16c]
        and $3
        cp $3
        jr nz, .asm_815fc
        ld hl, $ffa9
        ld a, [hl]
        inc hl
        or [hl]
        jr z, .asm_815fc
        ld a, [$ffa8]
        and $fc
        or $1
        ld [$ffa8], a
        ret

.asm_815fc
        ld hl, $c16c
        inc [hl]
        ld a, [hl]
        and $3
        jr nz, .asm_8163a
        ld hl, $c16b
        ld a, [hl]
        cp $4
        jr z, .asm_8163a
        inc [hl]
        xor a
        ld [$ffd7], a
.asm_81611
        ld a, [$ffd7]
        cp $3
        jr z, .asm_8163a
        ld hl, $db97
        ld e, a
        ld d, $0
        add hl, de
        ld a, [hl]
        ld c, a
        ld b, $0
.asm_81622
        ld a, c
        and $3
        jr z, .asm_81628
        dec c

.asm_81628
        rrc c
        rrc c
        inc b
        ld a, b
        cp $4
        jr nz, .asm_81622
        ld a, c
        ld [hl], a
        ld hl, $ffd7
        inc [hl]
        jr .asm_81611

.asm_8163a
        ret
; 0x8163b


INCBIN "baserom.gbc", 16384*32+$163b, $1647-$163b


Function81647: ; 0x81647
        ld hl, $c16c
        inc [hl]
        ld a, [$c16c]
        and $3
        jr nz, .asm_81696
        ld hl, $c16b
        ld a, [hl]
        inc [hl]
        cp $4
        jr z, .asm_81696
        xor a
        ld [$ffd7], a
.asm_8165e
        ld a, [$ffd7]
        cp $3
        jr z, .asm_81696
        ld hl, $db97
        ld e, a
        ld d, $0
        add hl, de
        ld a, [hl]
        push hl
        ld c, a
        ld b, $0
.asm_81670
        ld a, [$ffd7]
        sla a
        sla a
        or b
        ld e, a
        ld hl, $563b
        add hl, de
        ld a, c
        and $3
        cp [hl]
        jr z, .asm_81683
        inc c

.asm_81683
        rrc c
        rrc c
        inc b
        ld a, b
        cp $4
        jr nz, .asm_81670
        ld a, c
        pop hl
        ld [hl], a
        ld hl, $ffd7
        inc [hl]
        jr .asm_8165e

.asm_81696
        ret
; 0x81697


INCBIN "baserom.gbc", 16384*32+$1697, $1910-$1697


Function81910: ; 0x81910
        ld a, [$db96]
        rst $0
        ld l, $59
        ld c, a
        ld e, c
        call c, Function959
        ld e, e
        ld sp, $5e5d
        ld e, l
        ld h, $5e
        ei
        ld e, [hl]
        push de
        ld h, e
        adc e
        ld h, l
        or b
        ld h, l
        ret nz
        ld h, l
        jp c, $f065
        cp $a7
        jr z, .asm_8194c
        ld hl, $dc10
        ld c, $80
        di
.asm_81939
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
        jr nz, .asm_81939
        xor a
        ld [rSVBK], a
        ei

.asm_8194c
        call Function8268b
        call Function1a1d
        ld a, [$c16b]
        cp $4
        jr nz, .asm_81975
        xor a
        ld [$c14f], a
        ld a, $3
        ld [$ffa9], a
        ld a, $30
        ld [$ffaa], a
        xor a
        ld [$de06], a
        ld [$de07], a
        ld [$de08], a
        ld [$de09], a
        call Function8268b

.asm_81975
        ret
; 0x81976


INCBIN "baserom.gbc", 16384*32+$1976, $1b55-$1976

Function81b55:
        ld a, [$ffd8]
        cp $9
        jr z, asm_81b97
        cp $c
        jr z, asm_81b8c
        dec a
        jr z, asm_81b7f
        dec a
        jr z, asm_81bb1
        dec a
        jr z, asm_81b75
        dec a
        jr z, asm_81b7a
        dec a
        jr z, asm_81bac
asm_81b6e:
        ld a, [de]
        inc de
        ld [hli], a
        ld a, [de]
        inc de
        ld [hli], a
        ret

asm_81b75
        ld a, [$db43]
        jr asm_81b82

asm_81b7a
        ld a, [$db44]
        jr asm_81b82

asm_81b7f
        ld a, [$db4e]

asm_81b82
        add $b0
        ld c, a
        ld a, [de]
        inc de
        ld [hli], a
        ld a, c
        inc de
        ld [hli], a
        ret

asm_81b8c
        ld a, [$db4b]
        and a
        jr nz, asm_81b6e
        ld a, [$db4c]
        jr asm_81bb4

asm_81b97
        ld a, [$db49]
        and a
        jp z, asm_81b6e
        ld a, [$db4a]
        inc a
        swap a
        call asm_81bb4
        dec hl
        ld [hl], $7f
        inc hl
        ret

asm_81bac
        ld a, [$db45]
        jr asm_81bb4

asm_81bb1
        ld a, [$db4d]

asm_81bb4:
        push af
        and $f
        add $b0
        ld c, a
        pop af
        swap a
        and $f
        add $b0
        ld [hli], a
        ld a, c
        ld [hli], a
        ret
; 0x81bc5

Function81bc5:
        push bc
        ld a, [$dc90]
        ld e, a
        ld d, $0
        ld hl, $dc91
        add hl, de
        add $5
        ld [$dc90], a
        push hl
        sla c
        ld hl, $5c90
        add hl, bc
        push hl
        pop de
        pop hl
        ld a, [de]
        inc de
        ld [hli], a
        ld a, [de]
        ld [hli], a
        ld a, $81
        ld [hli], a
        push hl
        ld a, [$ffd8]
        sla a
        ld c, a
        ld hl, $5c20
        add hl, bc
        push hl
        pop de
        pop hl
        cp $6
        jr nz, .asm_81c05
        ld a, [$db43]
        cp $2
        jr nz, .asm_81c05
        ld a, $2
        ld [hli], a
        ld [hli], a
        jr .asm_81c1c

.asm_81c05
        cp $18
        jr nz, .asm_81c17
        ld a, [$db4b]
        and a
        jr z, .asm_81c17
        ld a, $2
        ld [hli], a
        ld a, $3
        ld [hli], a
        jr .asm_81c1c

.asm_81c17
        ld a, [de]
        inc de
        ld [hli], a
        ld a, [de]
        ld [hli], a

.asm_81c1c
        xor a
        ld [hl], a
        pop bc
        ret
; 0x81c20


INCBIN "baserom.gbc", 16384*32+$1c20, $1ca8-$1c20

Function81ca8:
        push de
        push bc
        ld hl, $db00
        add hl, bc
        ld a, [hl]
        ld [$ffd8], a
        sla a
        ld e, a
        sla a
        add e
        ld [$ffd7], a
        ld a, [$fffe]
        and a
        jr z, .asm_81cc1
        call Function81bc5

.asm_81cc1
        ld a, [$d600]
        ld e, a
        ld d, $0
        ld hl, $d601
        add hl, de
        add $c
        ld [$d600], a
        push hl
        sla c
        ld hl, $5c90
        add hl, bc
        push hl
        pop de
        pop hl
        ld a, [de]
        inc de
        ld [hli], a
        ld a, [de]
        inc de
        ld [hli], a
        ld a, $2
        ld [hli], a
        push hl
        ld a, [$ffd7]
        ld c, a
        ld hl, $5c3c
        add hl, bc
        push hl
        pop de
        pop hl
        ld a, [de]
        inc de
        ld [hli], a
        ld a, [de]
        inc de
        ld [hli], a
        ld a, [de]
        inc de
        ld [hli], a
        pop bc
        push bc
        push hl
        sla c
        ld hl, $5c90
        add hl, bc
        push hl
        pop de
        pop hl
        inc de
        inc hl
        ld a, [de]
        add $20
        ld [hl], a
        dec de
        dec hl
        ld a, [de]
        inc de
        inc de
        adc $0
        ld [hli], a
        inc hl
        ld a, $2
        ld [hli], a
        push hl
        ld a, [$ffd7]
        ld c, a
        ld hl, $5c3f
        add hl, bc
        push hl
        pop de
        pop hl
        ld a, [de]
        inc de
        ld [hli], a
        call Function81b55
        xor a
        ld [hl], a
        pop bc
        pop de
        dec c
        ld a, c
        cp e
        jp nz, Function81ca8
        ret
; 0x81d31

INCBIN "baserom.gbc", 16384*32+$1d31, $2346-$1d31

Unknown_82346:
        db $10, $38, $10, $30, $10, $30, $10, $30, $10, $30, $10, $30
Unknown_82352:
        db $0e, $0e, $26, $26, $3e, $3e, $56, $56, $6e, $6e, $86, $86


Function8235e:
        ld a, [$fffe]
        and a
        jr nz, .asm_82369
        ld a, [$db97]
        cp $e4
        ret c

.asm_82369
        ld d, $2
        jr .asm_8236f

        ld d, $c

.asm_8236f
        ld hl, $db00
        ld e, $0
.asm_82374
        ld a, [hli]
        cp $1
        jr z, .asm_8237f
        inc e
        ld a, e
        cp d
        jr nz, .asm_82374
        ret

.asm_8237f
        ld d, $0
        ld hl, Unknown_82346
        add hl, de
        ld a, [hl]
        ld [$ffd7], a
        ld hl, Unknown_82352
        add hl, de
        ld a, [hl]
        ld [$ffd8], a
        ld a, [$d47c]
        dec a
        jr nz, .asm_823cf
        ld a, [$ffe7]
        and $8
        jr nz, .asm_823cf
        ld a, [$c3c0]
        ld e, a
        ld d, $0
        ld hl, $c030
        ld a, [$db95]
        cp $c
        jr nz, .asm_823b2
        ld a, [$db96]
        cp $2
        jr nc, .asm_823b3

.asm_823b2
        add hl, de

.asm_823b3
        ld a, [$c1b5]
        and a
        jr z, .asm_823bc
        ld hl, $c09c

.asm_823bc
        ld a, [$db9a]
        push hl
        ld hl, $ffd8
        add [hl]
        pop hl
        ld [hli], a
        ld a, [$ffd7]
        ld [hli], a
        ld a, $4
        ld [hli], a
        ld a, $54
        ld [hli], a

.asm_823cf
        ld a, $1
        call Function3d97
        ret
; 0x823d5

INCBIN "baserom.gbc", 16384*32+$23d5, $268b-$23d5


Function8268b: ; 0x8268b
        ld hl, $db96
        inc [hl]
        ret
; 0x82690


INCBIN "baserom.gbc", 16384*32+$2690, $2a38-$2690

Function82a38:
        ld a, [$fffe]
        and a
        jp z, Function82b89
        ld a, e
        cp $3
        ret c
        ld a, $1
        ld [$ffe4], a
        ld a, $2
        ld [$ffe5], a
        ld a, $4
        ld [$ffe6], a
        ld hl, $dc10
        ld d, $40
        ld a, e
        cp $6
        jr nc, .asm_82a5a
        ld d, $28

.asm_82a5a
        and $10
        jr z, asm_82a70
        ld a, [$ffe4]
        sla a
        ld [$ffe4], a
        ld a, [$ffe5]
        sla a
        ld [$ffe5], a
        ld a, [$ffe6]
        sla a
        ld [$ffe6], a

asm_82a70:
        push hl
        ld a, [$ffe4]
        ld c, a
        ld a, [hl]
        and $1f
        add c
        cp $20
        jr c, .asm_82a7e
        ld a, $1f

.asm_82a7e
        ld [$ffd7], a
        ld a, [$ffe5]
        ld c, a
        ld a, [hli]
        and $e0
        swap a
        ld b, a
        ld a, [hl]
        and $3
        swap a
        or b
        and $3e
        add c
        cp $40
        jr c, .asm_82a98
        ld a, $3e

.asm_82a98
        ld [$ffd8], a
        ld a, [$ffe6]
        ld c, a
        ld a, [hl]
        and $7c
        add c
        cp $80
        jr c, .asm_82aa7
        ld a, $7c

.asm_82aa7
        ld [$ffd9], a
        pop hl
        ld a, [$ffd7]
        ld b, a
        ld a, [$ffd8]
        swap a
        ld c, a
        and $e0
        or b
        ld [hli], a
        ld a, [$ffd9]
        ld b, a
        ld a, c
        and $3
        or b
        ld [hli], a
        dec d
        ld a, d
        and a
        jr nz, asm_82a70
        ld a, $3
        ld [$ddd1], a
        ret
; 0x82ac9

Function82ac9:
        ld a, [$fffe]
        and a
        jp z, Function82b89
        ld a, e
        cp $6
        ret c
        ld a, $1
        ld [$ffe4], a
        ld a, $2
        ld [$ffe5], a
        ld a, $4
        ld [$ffe6], a
        ld hl, $dc10
        ld a, $40
        ld [$ffda], a
        ld a, e
        and $10
        jr z, Function82afd
        ld a, [$ffe4]
        sla a
        ld [$ffe4], a
        ld a, [$ffe5]
        sla a
        ld [$ffe5], a
        ld a, [$ffe6]
        sla a
        ld [$ffe6], a

Function82afd:
        push hl
        ld a, $2
        ld [rSVBK], a
        ld a, [hli]
        ld e, a
        ld a, [hl]
        ld d, a
        dec hl
        xor a
        ld [rSVBK], a
        ld a, [$ffe4]
        ld c, a
        ld a, e
        and $1f
        ld b, a
        ld a, [hl]
        and $1f
        cp b
        jr c, .asm_82b1f
        jr z, .asm_82b1f
        sub c
        jr c, .asm_82b1f
        cp b
        jr nc, .asm_82b20

.asm_82b1f
        ld a, b

.asm_82b20
        ld [$ffd7], a
        ld a, e
        and $e0
        swap a
        ld b, a
        ld a, d
        and $3
        swap a
        or b
        ld b, a
        ld a, [hli]
        and $e0
        swap a
        ld c, a
        ld a, [hl]
        and $3
        swap a
        or c
        push af
        ld a, [$ffe5]
        ld c, a
        pop af
        cp b
        jr c, .asm_82b4b
        jr z, .asm_82b4b
        sub c
        jr c, .asm_82b4b
        cp b
        jr nc, .asm_82b4c

.asm_82b4b
        ld a, b

.asm_82b4c
        ld [$ffd8], a
        ld a, [$ffe6]
        ld c, a
        ld a, d
        and $7c
        ld b, a
        ld a, [hl]
        and $7c
        cp b
        jr c, .asm_82b63
        jr z, .asm_82b63
        sub c
        jr c, .asm_82b63
        cp b
        jr nc, .asm_82b64

.asm_82b63
        ld a, b

.asm_82b64
        ld [$ffd9], a
        pop hl
        ld a, [$ffd7]
        ld b, a
        ld a, [$ffd8]
        swap a
        ld c, a
        and $e0
        or b
        ld [hli], a
        ld a, [$ffd9]
        ld b, a
        ld a, c
        and $3
        or b
        ld [hli], a
        ld a, [$ffda]
        dec a
        ld [$ffda], a
        and a
        jp nz, Function82afd
        ld a, $3
        ld [$ddd1], a

Function82b89:
        xor a
        ld [$ddd5], a
        ret
; 0x82b8e

Function82b8e:
        ld a, $2
        ld [rSVBK], a
        ld a, [bc]
        or [hl]
        ld e, a
        inc bc
        inc hl
        ld a, [bc]
        or [hl]
        ld d, a
        dec bc
        dec hl
        xor a
        ld [rSVBK], a
        ld [hl], e
        inc hl
        ld [hl], d
        inc hl
        ret
; 0x82ba4


Unknown_82ba4:
        db $00, $00, $84, $10, $8c, $31, $84, $10


Function82bac:
        ld a, [$fffe]
        and a
        jp z, Function82b89
        ld a, [$d002]
        and a
        jr z, .asm_82bbc
        cp $18
        jr nc, .asm_82be3

.asm_82bbc
        ld hl, Unknown_82ba4
        sla e
        add hl, de
        push hl
        pop bc
        ld hl, $dc10
        ld a, $8
        ld [$ffd7], a
.asm_82bcb
        call Function82b8e
        call Function82b8e
        call Function82b8e
        inc hl
        inc hl
        ld a, [$ffd7]
        dec a
        and a
        ld [$ffd7], a
        jr nz, .asm_82bcb
        ld a, $1
        ld [$ddd1], a

.asm_82be3
        ret
; 0x82be4

Function82be4:
        ld a, [$fffe]
        and a
        ret z
        ld hl, $dc10
        ld bc, $dc50
        ld d, $20
.asm_82bf0
        ld a, $ff
        ld [hli], a
        ld [bc], a
        inc bc
        ld [hli], a
        ld [bc], a
        inc bc
        dec d
        ld a, d
        and a
        jr nz, .asm_82bf0
        ld a, $3
        ld [$ddd1], a
        ld a, $1
        ld [$ddd5], a
        ret
; 0x82c08

Function82c08:
        ld a, [$fffe]
        and a
        jp z, Function82b89
        ld c, $80
        ld hl, $dc10
.asm_82c13
        ld a, $2
        ld [rSVBK], a
        ld b, [hl]
        xor a
        ld [rSVBK], a
        ld [hl], b
        inc hl
        dec c
        ld a, c
        and a
        jr nz, .asm_82c13
        ld a, $3
        ld [$ddd1], a
        xor a
        ld [$ddd5], a
        ret
; 0x82c2c

Function82c2c:
        ld a, [$fffe]
        and a
        jr z, .asm_82c56
        ld hl, $dc50
        ld a, [$dc0f]
        and a
        jr z, .asm_82c45
        inc a
        sla a
        sla a
        sla a
        ld c, a
        ld b, $0
        add hl, bc

.asm_82c45
        ld b, $8
.asm_82c47
        ld a, $2
        ld [rSVBK], a
        ld c, [hl]
        xor a
        ld [rSVBK], a
        ld [hl], c
        inc hl
        dec b
        ld a, b
        and a
        jr nz, .asm_82c47

.asm_82c56
        ret

Function82c57: ; 0x82c57
        ld a, [$fffe]
        and a
        jp z, Function82b89
        ld a, [$c16c]
        and $1
        jr z, .asm_82c68
        ld a, $2
        jr .asm_82c7e

.asm_82c68
        ld a, $4
        ld [$ffe4], a
        ld a, $8
        ld [$ffe5], a
        ld a, $10
        ld [$ffe6], a
        ld hl, $dc10
        ld d, $40
        call asm_82a70
        ld a, $1

.asm_82c7e
        ld [$ddd1], a
        ret
; 0x82c82

Function82c82: ; 0x82c82
        ld a, [$fffe]
        and a
        jp z, Function82b89
        ld a, [$c16c]
        and $1
        jr z, .asm_82c93
        ld a, $2
        jr .asm_82cab

.asm_82c93
        ld a, $4
        ld [$ffe4], a
        ld a, $8
        ld [$ffe5], a
        ld a, $10
        ld [$ffe6], a
        ld hl, $dc10
        ld a, $40
        ld [$ffda], a
        call Function82afd
        ld a, $1

.asm_82cab
        ld [$ddd1], a
        ret
; 0x82caf

Function82caf:
        ld a, [$c3ca]
        cp $20
        jr z, .asm_82d15
        push af
        and $2
        jr nz, .asm_82cbd
        ld a, $1

.asm_82cbd
        or $80
        ld [$ddd1], a
        ld a, [$c3ca]
        and $1
        swap a
        ld [$ddd3], a
        ld a, $10
        ld [$ddd4], a
        pop af
        inc a
        ld [$c3ca], a
        ld a, $8
        ld [$ffe4], a
        ld a, $10
        ld [$ffe5], a
        ld a, $20
        ld [$ffe6], a
        ld hl, $dc10
        ld a, $40
        ld [$ffda], a
        ld a, [$c17f]
        cp $3
        jr z, .asm_82d02
        ld a, [$ddd1]
        push af
        call $6a38
        pop af
        ld [$ddd1], a
        ld a, $1
        ld [$ddd5], a
        jr .asm_82d15

.asm_82d02
        ld a, [$c3ca]
        dec a
        and $3
        jr nz, .asm_82d15
        ld a, [$ddd1]
        push af
        call Function82afd
        pop af
        ld [$ddd1], a

.asm_82d15
        ret
; 0x82d16

Function82d16:
        ld a, [hl]
        dec a
        cp $4
        jr c, .asm_82d59
        ld a, [$ffe7]
        and $1
        jr z, .asm_82d26
        ld a, $2
        jr .asm_82d56

.asm_82d26
        ld a, [hl]
        dec a
        cp $e
        jr c, .asm_82d40
        ld a, $1
        ld [$ffe4], a
        ld a, $2
        ld [$ffe5], a
        ld a, $4
        ld [$ffe6], a
        ld hl, $dc50
        ld d, $20
        call asm_82a70

.asm_82d40
        ld a, $1
        ld [$ffe4], a
        ld a, $2
        ld [$ffe5], a
        ld a, $4
        ld [$ffe6], a
        ld hl, $dc10
        ld d, $20
        call asm_82a70
        ld a, $1

.asm_82d56
        ld [$ddd1], a

.asm_82d59
        ret
; 0x82d5a

Function82d5a:
        ld e, $20
        ld a, [hl]
        cp $30
        jr c, .asm_82d68
        ld hl, $dc50
        ld a, $2
        jr .asm_82d6d

.asm_82d68
        ld hl, $dc10
        ld a, $1

.asm_82d6d
        ld [$ddd1], a
.asm_82d70
        push hl
        ld a, [hl]
        inc a
        and $1f
        jr nz, .asm_82d79
        ld a, $1f

.asm_82d79
        ld [$ffd7], a
        ld a, [hli]
        and $e0
        swap a
        ld d, a
        ld a, [hl]
        and $3
        swap a
        or d
        add $2
        and $3e
        jr nz, .asm_82d8f
        ld a, $3e

.asm_82d8f
        ld [$ffd8], a
        ld a, [hl]
        add $4
        and $7c
        jr nz, .asm_82d9a
        ld a, $7c

.asm_82d9a
        ld [$ffd9], a
        pop hl
        ld a, [$ffd7]
        ld d, a
        ld a, [$ffd8]
        swap a
        and $e0
        or d
        ld [hli], a
        ld a, [$ffd9]
        ld d, a
        ld a, [$ffd8]
        swap a
        and $3
        or d
        ld [hli], a
        dec e
        jr nz, .asm_82d70
        ret
; 0x82db7

INCBIN "baserom.gbc", 16384*32+$2db7, $2e58-$2db7

Function82e58:
        push hl
        ld c, [hl]
        ld b, $e
        ld hl, Unknown_82e6d
.asm_82e5f
        ld a, [hli]
        cp c
        jr nz, .asm_82e67
        scf
        ccf
        jr .asm_82e6b

.asm_82e67
        dec b
        jr nz, .asm_82e5f
        scf

.asm_82e6b
        pop hl
        ret
; 0x82e6d

Unknown_82e6d:

INCBIN "baserom.gbc", 16384*32+$2e6d, $4000-$2e6d

