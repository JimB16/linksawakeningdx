
SECTION "bank20", ROMX, BANK[$14]

; $14:$0000 = 0x50000

; 2=opens shutters.  4=defeats all enemies.  6=a treasure chest appears at position 28.  8=a key falls at position 32.  A=a staircase will appear at position 18.  C=the miniboss flag is set, shutter opens, warp to start of dungeon is opened.
; Events
	const_def
	const EVENT_0
	const EVENT_1
	const EVENT_2
	const EVENT_3
	const EVENT_4
	const EVENT_5
	const EVENT_6
	const EVENT_7
	const EVENT_8
	const EVENT_9
	const EVENT_A
	const EVENT_B
	const EVENT_C
	const EVENT_D
	const EVENT_E
	const EVENT_F

; 1=must defeat all enemies.  2=push a block.  3=push a trigger.  4=?  5=light all torches.  6=level 2 nightmare key puzzle, that is you need to destroy a Pols Voice first, then a keese, then a staflos.  7=push two blocks together, can be in any form as long as they are both movable blocks.  8=kill special enemies, which are defined as enemies that can't normally be destroyed like traps and sparks.  9=level 4 tile puzzle must be completed.  A=defeat boss 4 or 7 to open shutter door.  B=one way shutter, or throw somthing at it to open.  C=throw the horse heads at a wall to stand them up.  D=smash a chest to open, allways get a nightmare key, allways opens at a specific spot.  E="Fill in the holes with the rock that rolls".  F=fire an arrow at a statue, might be sprite related.
; EventTriggers
	const_def
	const EVENT_TRIGGER_0
	const EVENT_TRIGGER_1
	const EVENT_TRIGGER_2

EventData: ; 0x50000
	db $00
	db $00
	db EVENT_2 << 4 | EVENT_TRIGGER_1
	db EVENT_A << 4 | EVENT_TRIGGER_1
	db $22, $00, $21, $00, $00, $00, $61, $00, $00, $61, $00, $00
	db $00, $C1, $21, $63, $61, $21, $81, $00, $00, $00, $00, $00, $00, $00, $00, $00
; 0x50020

INCBIN "baserom.gbc", 16384*20+$20, $220-$20


RoomOrderData: ; 0x50220

INCBIN "baserom.gbc", 16384*20+$220, $4e0-$220

Unknown_504e0:

INCBIN "baserom.gbc", 16384*20+$4e0, $520-$4e0

Unknown_50520:

INCBIN "baserom.gbc", 16384*20+$520, $660-$520

ChestData: ; 0x50660

INCBIN "baserom.gbc", 16384*20+$660, $881-$660

Unknown_50881: ; 0x50881
        dw Unknown_508a1
        dw Unknown_508ae
        dw Unknown_508bb
        dw Unknown_508c8
        dw Unknown_508d5
        dw Unknown_508e2
        dw Unknown_508ef
        dw Unknown_508fc
        dw Unknown_50909
        dw Unknown_50916
        dw Unknown_50916
        dw Unknown_50916
        dw Unknown_50916
        dw Unknown_50916
        dw Unknown_50916
        dw Unknown_50916
; 0x508a1

Unknown_508a1:
        db $c5, $21, $11, $d7, $01, $17, $49, $11, $38, $49, $c3, $42, $35
Unknown_508ae:
        db $c5, $21, $11, $d7, $01, $58, $49, $11, $71, $49, $c3, $42, $35
Unknown_508bb:
        db $c5, $21, $11, $d7, $01, $89, $49, $11, $a4, $49, $c3, $42, $35
Unknown_508c8:
        db $c5, $21, $11, $d7, $01, $be, $49, $11, $d7, $49, $c3, $42, $35
Unknown_508d5:
        db $c5, $21, $11, $d7, $01, $ef, $49, $11, $0a, $4a, $c3, $42, $35
Unknown_508e2:
        db $c5, $21, $11, $d7, $01, $24, $4a, $11, $36, $4a, $c3, $42, $35
Unknown_508ef:
        db $c5, $21, $11, $d7, $01, $47, $4a, $11, $59, $4a, $c3, $42, $35
Unknown_508fc:
        db $c5, $21, $11, $d7, $01, $6a, $4a, $11, $7c, $4a, $c3, $42, $35
Unknown_50909:
        db $c5, $21, $11, $d7, $01, $8d, $4a, $11, $9f, $4a, $c3, $42, $35
Unknown_50916:
        db $c9


ScreenTemplateData: ; 0x50917

INCBIN "baserom.gbc", 16384*20+$917, $df1-$917

Unknown_50df1:

INCBIN "baserom.gbc", 16384*20+$df1, $e51-$df1

Function50e51:
        ld a, $1
        ld [$d474], a
        ld a, $3
        ld [$c11c], a
        ld a, [$dba5]
        and a
        jr z, .asm_50e88
        ld a, [$fff7]
        cp $ff
        jr nz, .asm_50e6b
        and $f
        jr .asm_50e6f

.asm_50e6b
        cp $a
        jr nc, .asm_50e88

.asm_50e6f
        ld e, a
        sla a
        sla a
        add e
        ld e, a
        ld d, $0
        ld hl, Unknown_50df1
        add hl, de
        ld e, $5
        ld bc, $d401
.asm_50e81
        ld a, [hli]
        ld [bc], a
        inc bc
        dec e
        jr nz, .asm_50e81
        ret

.asm_50e88
        xor a
        ld [$d401], a
        ld [$d402], a
        ld a, $45
        ld [$d403], a
        ld a, $38
        ld [$d404], a
        ld [$ff98], a
        ld a, $60
        ld [$d405], a
        ld [$ff99], a
        ld a, $53
        ld [$d416], a
        ret
; 0x50ea8

INCBIN "baserom.gbc", 16384*20+$ea8, $ee8-$ea8

Unknown_50ee8:
INCBIN "baserom.gbc", 16384*20+$ee8, $1038-$ee8

Function51038:
        srl a
        srl a
        ld [$ffd7], a
        ld a, [$c180]
        nop
        and $e0
        ld e, a
        ld a, [$c17f]
        cp $3
        jr nz, .asm_51050
        ld a, e
        xor $e0
        ld e, a

.asm_51050
        ld a, e
        ld [$ffd8], a
        ld hl, $c17c
        xor a
        ld [hli], a
        ld [hli], a
        ld [hli], a
        ld a, $58
        ld [$ffd9], a
        ld a, [$fffe]
        and a
        jr z, .asm_51067
        ld a, $88
        ld [$ffd9], a

.asm_51067
        ld a, [$ff41]
        and $3
        jr nz, .asm_51067
        ld d, $0
.asm_5106f
        ld a, [$c17e]
        inc a
        ld [$c17e], a
        and $1
        jr nz, .asm_5106f
        ld a, [$c17c]
        add $1
        ld [$c17c], a
        ld a, [$c17d]
        adc $0
        ld [$c17d], a
        ld a, [$ffd9]
        ld hl, $c17c
        cp [hl]
        ret z
        ld c, $0
        ld a, [$c17f]
        cp $1
        jr z, .asm_5109b
        inc c

.asm_5109b
        ld a, [$ffd7]
        add [hl]
        and $1f
        ld hl, $ffd8
        or [hl]
        ld e, a
        ld hl, Unknown_50ee8
        add hl, de
        ld a, [$c180]
        and c
        ld a, [hl]
        jr z, .asm_510b2
        cpl
        inc a

.asm_510b2
        push af
        ld hl, $ff96
        add [hl]
        ld [$ff43], a
        pop af
        ld hl, $ff97
        add [hl]
        ld [$ff42], a
        jp .asm_51067
; 0x510c3

INCBIN "baserom.gbc", 16384*20+$10c3, $1310-$10c3

Unknown_51310:
     db $30, $d0, $00, $00, $18, $e8, $00, $00, $30, $d0, $00, $00, $18, $e8, $00, $00
Unknown_51320:
    db $00, $00, $d0, $30, $00, $00, $e8, $18, $f4, $f4, $d0, $00, $f8, $f8, $e8, $00
Unknown_51330:
    db $04, $04, $04, $04, $10, $10, $10, $10, $00, $00, $00, $00, $00, $00, $00, $00
Unknown_51340:
    db $02, $06, $00, $04

Function51344:
        ld a, [$c124]
        and a
        jr nz, .asm_51351
        ld a, [$c11c]
        cp $6
        jr nz, .asm_5135d

.asm_51351
        ld a, [$ffeb]
        cp $a8
        jr z, .asm_5135d
        call .asm_513a0
        jp Function3d76

.asm_5135d
        ld a, [$c5ae]
        and a
        jr z, .asm_51368
        dec a
        ld [$c5ae], a
        ret

.asm_51368
        ld a, [$c15c]
        cp $1
        jp nz, .asm_51440
        ld d, $3
        ld a, [$ffeb]
        cp $2
        jr nz, .asm_5137a
        ld d, $2

.asm_5137a
        ld e, $10
        ld a, [$db00]
        cp d
        jr nz, .asm_51386
        sla e
        jr .asm_5138e

.asm_51386
        ld a, [$db01]
        cp d
        jr z, .asm_5138e
        ld e, $30

.asm_5138e
        ld a, [$ffcc]
        and e
        jp z, .asm_51440
        ld a, [$ff9e]
        ld hl, $c5d0
        add hl, bc
        ld [hl], a
        ld hl, $fff2
        ld [hl], $8

.asm_513a0
        ld hl, $c280
        add hl, bc
        ld [hl], $5
        ld a, [$ffeb]
        cp $2
        jr nz, .asm_513b3
        call Functionc01
        ld [hl], $a0
        jr .asm_51406

.asm_513b3
        ld hl, $c280
        add hl, bc
        cp $d6
        jr z, .asm_513ea
        cp $d5
        jr z, .asm_513ea
        cp $6c
        jr z, .asm_513ea
        cp $9d
        jr z, .asm_513ea
        cp $a8
        jr z, .asm_513ea
        cp $98
        jr nz, .asm_513f3
        push hl
        ld a, [$ff9e]
        ld e, a
        ld d, b
        ld hl, Unknown_51340
        add hl, de
        ld a, [hl]
        ld hl, $c380
        add hl, bc
        ld [hl], a
        call Functionc01
        call Function2804
        and $1f
        add $30
        ld [hl], a
        pop hl

.asm_513ea
        ld [hl], $5
        call Function3b09
        ld [hl], $2
        jr .asm_51406

.asm_513f3
        cp $92
        jr nz, .asm_51400
        ld [hl], $5
        call Function3b09
        ld [hl], $3
        jr .asm_51406

.asm_51400
        cp $5
        jr z, .asm_51406
        ld [hl], $8

.asm_51406
        ld e, b
        ld a, [$fff9]
        and a
        jr z, .asm_5140e
        ld e, $8

.asm_5140e
        ld a, [$ffeb]
        cp $2
        jr nz, .asm_51418
        ld a, e
        add $4
        ld e, a

.asm_51418
        ld a, [$ff9e]
        add e
        ld e, a
        ld d, b
        ld hl, Unknown_51310
        add hl, de
        ld a, [hl]
        ld hl, $c240
        add hl, bc
        ld [hl], a
        ld hl, Unknown_51320
        add hl, de
        ld a, [hl]
        ld hl, $c250
        add hl, bc
        ld [hl], a
        ld hl, Unknown_51330
        add hl, de
        ld a, [hl]
        ld hl, $c320
        add hl, bc
        ld [hl], a
        ld a, $c
        ld [$c19b], a

.asm_51440
        ret
; 0x51441

INCBIN "baserom.gbc", 16384*20+$1441, $14a9-$1441

Function514a9:
        ld hl, $c17b
        ld a, [$c124]
        or [hl]
        jr nz, .asm_514e4
        ld a, [$ff98]
        sub $11
        cp $7e
        jr c, .asm_514ce
        ld a, [$ff98]
        cp $50
        jr nc, .asm_514c7
        ld a, [$ff98]
        inc a
        ld [$ff98], a
        jr .asm_514db

.asm_514c7
        ld a, [$ff98]
        dec a
        ld [$ff98], a
        jr .asm_514db

.asm_514ce
        ld a, [$ff99]
        sub $16
        cp $5e
        jr c, .asm_514e4
        ld a, [$ff99]
        dec a
        ld [$ff99], a

.asm_514db
        ld a, $1
        ld [$ffa1], a
        ld a, $2
        ld [$c111], a

.asm_514e4
        ret
; 0x514e5

Unknown_514e5:
    db $00, $02, $00, $fe, $00, $00, $00, $00
Unknown_514ed:
    db $00, $00, $00, $00, $00, $02, $00, $fe

Function514f5:
        ld a, [$c178]
        and a
        jr z, .asm_514ff
        dec a
        ld [$c178], a

.asm_514ff
        ld a, [$c157]
        and a
        jr z, .asm_51522
        dec a
        ld [$c157], a
        and $3
        ld hl, $c158
        add [hl]
        ld e, a
        ld d, $0
        ld hl, Unknown_514e5
        add hl, de
        ld a, [hl]
        ld [$c155], a
        ld hl, Unknown_514ed
        add hl, de
        ld a, [hl]
        ld [$c156], a

.asm_51522
        ret
; 0x51523

INCBIN "baserom.gbc", 16384*20+$1523, $1835-$1523

Function51835:
        ld hl, Unknown_504e0
        ld a, [$fff7]
        cp $ff
        jr z, .asm_51863
        cp $b
        jr nc, .asm_51880
        ld hl, RoomOrderData
        swap a
        ld c, a
        ld b, $0
        sla c
        rl b
        sla c
        rl b
        add hl, bc
        ld a, [$fff7]
        cp $6
        jr nz, .asm_51863
        ld a, [$db6b]
        and $4
        jr z, .asm_51863
        ld hl, Unknown_50520

.asm_51863
        add hl, de
        ld a, [hl]
        ld e, a
        ld d, $0
        ld hl, $d900
        ld a, [$fff7]
        cp $ff
        jr nz, .asm_51876
        ld hl, $dde0
        jr .asm_5187f

.asm_51876
        cp $1a
        jr nc, .asm_5187f
        cp $6
        jr c, .asm_5187f
        inc d

.asm_5187f
        add hl, de

.asm_51880
        ret
; 0x51881

INCBIN "baserom.gbc", 16384*20+$1881, $1931-$1881


INCLUDE "text/text_51931.asm"
