
SECTION "bank36", ROMX, BANK[36]

; 0x90000

INCBIN "baserom.gbc", 16384*36+$0, $1c00-$0

Function91c00:
        ld a, [$fffe]
        and a
        ret z
        ld a, $1
        ld [$ff4f], a
        ld bc, $0800
        ld hl, VBGMap0
.asm_91c0e
        ld a, $0
        ld [hli], a
        dec bc
        ld a, b
        or c
        jr nz, .asm_91c0e
        xor a
        ld [$ff4f], a
        ret
; 0x91c1a

Function91c1a:
        ld a, [$fffe]
        and a
        ret z
        ld a, $1
        ld [$ff4f], a
        ld de, $dc91
        call Function291e
        xor a
        ld [$ff4f], a
        ret
; 0x91c2c

Function91c2c:
        ld a, [$fffe]
        and a
        ret z
        ld a, $1
        ld [$ff4f], a
        ld hl, Unknown_91c4b
        ld b, $0
        ld a, [$d6ff]
        sla a
        ld c, a
        add hl, bc
        ld a, [hli]
        ld e, a
        ld a, [hl]
        ld d, a
        call Function2924
        xor a
        ld [$ff4f], a
        ret
; 0x91c4b

Unknown_91c4b:

INCBIN "baserom.gbc", 16384*36+$1c4b, $33e1-$1c4b

Unknown_933e1:
    db $f8, $74, $18, $75, $b8, $74, $d8, $74, $78, $74, $98, $74
Unknown_933ed:
    db $b8, $74, $d8, $74, $f8, $74, $18, $75, $38, $75, $58, $75
Unknown_933f9:
    db $10, $dc, $30, $dc, $10, $dc, $30, $dc, $10, $dc, $30, $dc

Function93405:
        ld a, [$dba5]
        and a
        ret nz
        ld a, [$ddd6]
        and a
        ret z
        ld a, [$ddd7]
        dec a
        ld [$ddd7], a
        jr z, .asm_9341b
        cp $1
        ret nz

.asm_9341b
        ld a, [$ddd6]
        bit 7, a
        jr nz, .asm_93427
        ld hl, Unknown_933e1
        jr .asm_9342a

.asm_93427
        ld hl, Unknown_933ed

.asm_9342a
        ld a, [$ddd7]
        cp $1
        jr z, .asm_93436
        ld a, $b
        ld [$ddd7], a

.asm_93436
        push hl
        ld a, [$ddd6]
        and $3f
        sla a
        ld c, a
        ld b, $0
        ld hl, Unknown_933f9
        add hl, bc
        ld a, [hli]
        ld e, a
        ld d, [hl]
        pop hl
        add hl, bc
        ld a, [hli]
        ld h, [hl]
        ld l, a
        ld bc, $0020
        call CopyBytes
        ld a, [$ddd6]
        and $1
        swap a
        ld [$ddd3], a
        ld a, $10
        ld [$ddd4], a
        ld a, $81
        ld [$ddd1], a
        ld a, [$ddd6]
        inc a
        ld [$ddd6], a
        and $3f
        cp $6
        ret nz
        xor a
        ld [$ddd6], a
        ret
; 0x93478

INCBIN "baserom.gbc", 16384*36+$3478, $4000-$3478

