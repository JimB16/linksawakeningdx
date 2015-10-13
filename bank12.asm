

SECTION "bank12", ROMX, BANK[$c]

; 0x30000

Unknown_30000:

INCBIN "baserom.gbc", 16384*12+$0, $7a0-$0

Unknown_307a0:

INCBIN "baserom.gbc", 16384*12+$7a0, $800-$7a0

Unknown_30800:

INCBIN "baserom.gbc", 16384*12+$800, $4000-$800
