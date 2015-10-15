
SECTION "bank60", ROMX, BANK[60]

; 0xf0000

Unknown_f0000:
INCBIN "baserom.gbc", 16384*60+$0, $1000-$0
Unknown_f1000:
INCBIN "baserom.gbc", 16384*60+$1000, $2000-$1000
Unknown_f2000:
INCBIN "baserom.gbc", 16384*60+$2000, $2860-$2000
Unknown_f2860:
INCBIN "baserom.gbc", 16384*60+$2860, $2870-$2860
Unknown_f2870:
INCBIN "baserom.gbc", 16384*60+$2870, $2880-$2870
Unknown_f2880:
INCBIN "baserom.gbc", 16384*60+$2880, $2890-$2880
Unknown_f2890:
INCBIN "baserom.gbc", 16384*60+$2890, $28a0-$2890
Unknown_f28a0:
INCBIN "baserom.gbc", 16384*60+$28a0, $28b0-$28a0
Unknown_f28b0:
INCBIN "baserom.gbc", 16384*60+$28b0, $28c0-$28b0
Unknown_f28c0:
INCBIN "baserom.gbc", 16384*60+$28c0, $28d0-$28c0
Unknown_f28d0:
INCBIN "baserom.gbc", 16384*60+$28d0, $28e0-$28d0
Unknown_f28e0:
INCBIN "baserom.gbc", 16384*60+$28e0, $28f0-$28e0
Unknown_f28f0:
INCBIN "baserom.gbc", 16384*60+$28f0, $2900-$28f0
Unknown_f2900:
INCBIN "baserom.gbc", 16384*60+$2900, $2910-$2900
Unknown_f2910:
INCBIN "baserom.gbc", 16384*60+$2910, $2930-$2910
Unknown_f2930:
INCBIN "baserom.gbc", 16384*60+$2930, $2940-$2930
Unknown_f2940:
INCBIN "baserom.gbc", 16384*60+$2940, $2950-$2940
Unknown_f2950:
INCBIN "baserom.gbc", 16384*60+$2950, $2960-$2950
Unknown_f2960:
INCBIN "baserom.gbc", 16384*60+$2960, $2a02-$2960
Unknown_f2a02:
INCBIN "baserom.gbc", 16384*60+$2a02, $2a12-$2a02
Unknown_f2a12:
INCBIN "baserom.gbc", 16384*60+$2a12, $2a22-$2a12

Functionf2a22:
        ld a, [$fffe]
        and a
        ret nz
        ld bc, $001e
        call Functionf2b92
        ld hl, Unknown_f2a12
        call Functionf2b51
        call Functionf2b86
        ld a, [$ff00]
        and $3
        cp $3
        jr nz, .asm_f2a76
        ld a, $20
        ld [$ff00], a
        ld a, [$ff00]
        ld a, [$ff00]
        ld a, $30
        ld [$ff00], a
        ld a, $10
        ld [$ff00], a
        ld a, [$ff00]
        ld a, [$ff00]
        ld a, [$ff00]
        ld a, [$ff00]
        ld a, [$ff00]
        ld a, [$ff00]
        ld a, $30
        ld [$ff00], a
        ld a, [$ff00]
        ld a, [$ff00]
        ld a, [$ff00]
        ld a, [$ff00]
        and $3
        cp $3
        jr nz, .asm_f2a76
        ld hl, Unknown_f2a02
        call Functionf2b51
        call Functionf2b86
        sub a
        ret

.asm_f2a76
        ld hl, Unknown_f2a02
        call Functionf2b51
        call Functionf2b86
        ld hl, Unknown_f2860
        call Functionf2b51
        ld bc, $0006
        call Functionf2b92
        ld hl, Unknown_f2960
        call Functionf2b51
        ld bc, $0006
        call Functionf2b92
        ld hl, Unknown_f2880
        call Functionf2b51
        ld bc, $0006
        call Functionf2b92
        ld hl, Unknown_f2890
        call Functionf2b51
        ld bc, $0006
        call Functionf2b92
        ld hl, Unknown_f28a0
        call Functionf2b51
        ld bc, $0006
        call Functionf2b92
        ld hl, Unknown_f28b0
        call Functionf2b51
        ld bc, $0006
        call Functionf2b92
        ld hl, Unknown_f28c0
        call Functionf2b51
        ld bc, $0006
        call Functionf2b92
        ld hl, Unknown_f28d0
        call Functionf2b51
        ld bc, $0006
        call Functionf2b92
        ld hl, Unknown_f28e0
        call Functionf2b51
        ld bc, $0006
        call Functionf2b92
        ld hl, Unknown_f28f0
        call Functionf2b51
        ld bc, $0006
        call Functionf2b92
        ld hl, Unknown_f2900
        call Functionf2b51
        ld bc, $0006
        call Functionf2b92
        ld hl, Unknown_f2910
        call Functionf2b51
        ld bc, $0006
        call Functionf2b92
        ld hl, Unknown_f0000
        ld de, Unknown_f2930
        call Functionf2ba3
        ld hl, Unknown_f1000
        ld de, Unknown_f2940
        call Functionf2ba3
        ld hl, Unknown_f2000
        ld de, Unknown_f2950
        call Functionf2ba3
        ld hl, v8000
        ld bc, $2000
.asm_f2b30
        xor a
        ld [hli], a
        dec bc
        ld a, c
        or b
        jr nz, .asm_f2b30
        ld a, $81
        ld [rLCDC], a
        ld bc, $0006
        call Functionf2b92
        ld hl, Unknown_f2870
        call Functionf2b51
        ld bc, $0006
        call Functionf2b92
        xor a
        ld [rLCDC], a
        ret
; 0xf2b51

Functionf2b51:
        ld a, [hl]
        and $7
        ret z
        ld b, a
        ld c, $0
.asm_f2b58
        push bc
        xor a
        ld [$ff00+c], a
        ld a, $30
        ld [$ff00+c], a
        ld b, $10
.asm_f2b60
        ld e, $8
        ld a, [hli]
        ld d, a
.asm_f2b64
        bit 0, d
        ld a, $10
        jr nz, .asm_f2b6c
        ld a, $20

.asm_f2b6c
        ld [$ff00+c], a
        ld a, $30
        ld [$ff00+c], a
        rr d
        dec e
        jr nz, .asm_f2b64
        dec b
        jr nz, .asm_f2b60
        ld a, $20
        ld [$ff00+c], a
        ld a, $30
        ld [$ff00+c], a
        pop bc
        dec b
        ret z
        call Functionf2b86
        jr .asm_f2b58
; 0xf2b86

Functionf2b86:
        ld de, $1b58
.asm_f2b89
        nop
        nop
        nop
        dec de
        ld a, d
        or e
        jr nz, .asm_f2b89
        ret
; 0xf2b92

Functionf2b92:
.asm_f2b92
        ld de, $06d6
.asm_f2b95
        nop
        nop
        nop
        dec de
        ld a, d
        or e
        jr nz, .asm_f2b95
        dec bc
        ld a, b
        or c
        jr nz, .asm_f2b92
        ret
; 0xf2ba3

Functionf2ba3:
        push de
        ld a, $e4
        ld [rBGP], a
        ld de, v8800
        ld bc, $1000
        call CopyBytes
        ld hl, VBGMap0
        ld de, $000c
        ld a, $80
        ld c, $d
.asm_f2bbb
        ld b, $14
.asm_f2bbd
        ld [hli], a
        inc a
        dec b
        jr nz, .asm_f2bbd
        add hl, de
        dec c
        jr nz, .asm_f2bbb
        ld a, $81
        ld [rLCDC], a
        ld bc, $0005
        call Functionf2b92
        pop hl
        call Functionf2b51
        ld bc, $0006
        call Functionf2b92
        xor a
        ld [rLCDC], a
        ret
; 0xf2bde
