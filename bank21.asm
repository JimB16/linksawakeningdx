; $15:$0000 = 0x54000

Function54000:
        call $3d76
        ld hl, $c330
        add hl, bc
        ld [hl], b
        ld hl, $c260
        add hl, bc
        ld [hl], b
        ld hl, $c270
        add hl, bc
        ld [hl], b
        ld hl, $c320
        add hl, bc
        ld [hl], b
        ld hl, $c290
        add hl, bc
        ld [hl], b
        ld hl, $c2a0
        add hl, bc
        ld [hl], b
        ld hl, $c2b0
        add hl, bc
        ld [hl], b
        ld hl, $c2c0
        add hl, bc
        ld [hl], b
        ld hl, $c2d0
        add hl, bc
        ld [hl], b
        ld hl, $c440
        add hl, bc
        ld [hl], b
        ld hl, $c390
        add hl, bc
        ld [hl], b
        ld hl, $c2e0
        add hl, bc
        ld [hl], b
        ld hl, $c2f0
        add hl, bc
        ld [hl], b
        ld hl, $c300
        add hl, bc
        ld [hl], b
        ld hl, $c310
        add hl, bc
        ld [hl], b
        ld hl, $c380
        add hl, bc
        ld [hl], b
        xor a
        call $3b03
        ld hl, $c3d0
        add hl, bc
        ld [hl], b
        ld hl, $c360
        add hl, bc
        ld [hl], b
        ld hl, $c410
        add hl, bc
        ld [hl], b
        ld hl, $c220
        add hl, bc
        ld [hl], b
        ld hl, $c230
        add hl, bc
        ld [hl], b
        ld hl, $c470
        add hl, bc
        ld [hl], b
        ld hl, $c450
        add hl, bc
        ld [hl], b
        ld hl, $c480
        add hl, bc
        ld [hl], b
        ld hl, $c490
        add hl, bc
        ld [hl], b
        ld hl, $c420
        add hl, bc
        ld [hl], b
        ld hl, $c4e0
        add hl, bc
        ld [hl], b
        ld hl, $c4f0
        add hl, bc
        ld [hl], b
        ld hl, $c5d0
        add hl, bc
        ld [hl], $ff
        ld hl, $c4a0
        add hl, bc
        ld [hl], b
        ret
; 0x5409f


INCBIN "baserom.gbc", 16384*21+$009f, $4000-$009f

