

SECTION "bank12", ROMX, BANK[$c]

; 0x30000

Unknown_30000:
INCBIN "data/data_30000.2bpp"

Unknown_30400:
INCBIN "baserom.gbc", 16384*12+$400, $7a0-$400

Unknown_307a0:
INCBIN "data/data_307a0.2bpp"

Unknown_307c0:

INCBIN "baserom.gbc", 16384*12+$7c0, $800-$7c0

Unknown_30800:
INCBIN "data/data_30800.2bpp"

Unknown_31800:

INCBIN "baserom.gbc", 16384*12+$1800, $4000-$1800
