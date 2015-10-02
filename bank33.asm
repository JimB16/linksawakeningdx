
SECTION "bank33", ROMX, BANK[$21]

; 0x84000

Function84000:
        ld a, [$ddd1]
        and a
        ret z
        bit 7, a
        jr nz, .asm_8402b
        and $1
        jr z, .asm_84016
        ld hl, $dc10
        ld de, rBGPI
        call Function84062

.asm_84016
        ld a, [$ddd1]
        and $2
        jr z, .asm_84026
        ld hl, $dc50
        ld de, rOBPI
        call Function84062

.asm_84026
        xor a
        ld [$ddd1], a
        ret

.asm_8402b
        ld a, $80
        ld hl, $ddd3
        ld e, [hl]
        sla e
        or e
        ld b, a
        ld a, [$ddd1]
        and $1
        ld a, b
        jr z, .asm_84047
        ld [rBGPI], a
        ld bc, rBGPD
        ld hl, $dc10
        jr .asm_8404f

.asm_84047
        ld [rOBPI], a
        ld bc, rOBPD
        ld hl, $dc50

.asm_8404f
        ld d, $0
        add hl, de
        ld e, c
        ld d, b
        ld a, [$ddd4]
        sla a
        ld b, a
        call Function84068
        xor a
        ld [$ddd1], a
        ret
; 0x84062

Function84062:
        ld b, $40
        ld a, $80
        ld [de], a
        inc de

Function84068:
.loop
        ld a, [hli]
        ld [de], a
        dec b
        jr nz, .loop
        ret
; 0x8406e

Function8406e:
        ld a, [$ddd2]
        and a
        ret z
        bit 7, a
        jp nz, $425e
        ld hl, $74f0
        ld b, $0
        dec a
        sla a
        ld c, a
        add hl, bc
        ld a, [hli]
        ld c, a
        ld b, [hl]
        or b
        jr z, .asm_840ae
        ld h, b
        ld l, c
        ld de, $dc10
        ld bc, $0080
        ld a, [$ddd5]
        and a
        jr nz, .asm_8409f
        push bc
        push de
        push hl
        call CopyBytes
        pop hl
        pop de
        pop bc

.asm_8409f
        ld a, $2
        ld [rSVBK], a
        call CopyBytes
        xor a
        ld [rSVBK], a
        ld a, $3
        ld [$ddd1], a

.asm_840ae
        xor a
        ld [$ddd2], a
        ret
; 0x840b3


INCBIN "baserom.gbc", 16384*33+$00b3, $4000-$00b3

