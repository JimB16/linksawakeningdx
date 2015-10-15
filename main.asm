
; http://otakunozoku.com/RGBDSdocs/fix.htm

INCLUDE "gbhw.asm"
INCLUDE "enum.asm"
INCLUDE "hram.asm"
INCLUDE "macros.asm"
INCLUDE "charmap.asm"


INCLUDE "rst.asm"


SECTION "Header", ROM0[$100]
Start::
        nop
        jp _Start


INCLUDE "start.asm"


INCLUDE "bank01.asm"

INCLUDE "bank02.asm"

INCLUDE "bank03.asm"

INCLUDE "bank04.asm"

INCLUDE "bank05.asm"

INCLUDE "bank06.asm"

INCLUDE "bank07.asm"

INCLUDE "bank08.asm"

INCLUDE "bank09.asm"

INCLUDE "bank10.asm"

INCLUDE "bank11.asm"

INCLUDE "bank12.asm"



SECTION "bank13", ROMX, BANK[$d]

INCBIN "baserom.gbc", 16384*13, $4000

SECTION "bank14", ROMX, BANK[$e]

INCBIN "baserom.gbc", 16384*14, $4000

SECTION "bank15", ROMX, BANK[$f]

INCBIN "baserom.gbc", 16384*15, $4000

SECTION "bank16", ROMX, BANK[$10]

INCBIN "baserom.gbc", 16384*16, $4000

SECTION "bank17", ROMX, BANK[$11]

INCBIN "baserom.gbc", 16384*17, $4000

SECTION "bank18", ROMX, BANK[$12]

INCBIN "baserom.gbc", 16384*18, 16384

SECTION "bank19", ROMX, BANK[$13]

INCBIN "baserom.gbc", 16384*19, 16384




INCLUDE "bank20.asm"

INCLUDE "bank21.asm"

INCLUDE "bank22.asm"

INCLUDE "bank23.asm"



SECTION "bank24", ROMX, BANK[$18]

INCBIN "baserom.gbc", 16384*24, $4000

SECTION "bank25", ROMX, BANK[$19]

INCBIN "baserom.gbc", 16384*25, $4000

SECTION "bank26", ROMX, BANK[$1a]

INCBIN "baserom.gbc", 16384*26, $4000

SECTION "bank27", ROMX, BANK[$1b]

INCBIN "baserom.gbc", 16384*27, $4000


INCLUDE "bank28.asm"

INCLUDE "bank29.asm"



SECTION "bank30", ROMX, BANK[$1e]

INCBIN "baserom.gbc", 16384*30, $4000




INCLUDE "bank31.asm"

INCLUDE "bank32.asm"

INCLUDE "bank33.asm"



SECTION "bank34", ROMX, BANK[34]

INCBIN "baserom.gbc", 16384*34, 16384

SECTION "bank35", ROMX, BANK[35]

INCBIN "baserom.gbc", 16384*35, 16384


INCLUDE "bank36.asm"


SECTION "bank37", ROMX, BANK[37]

INCBIN "baserom.gbc", 16384*37, 16384

SECTION "bank38", ROMX, BANK[38]

INCBIN "baserom.gbc", 16384*38, 16384

SECTION "bank39", ROMX, BANK[39]

INCBIN "baserom.gbc", 16384*39, 16384

SECTION "bank40", ROMX, BANK[40]

INCBIN "baserom.gbc", 16384*40, 16384

SECTION "bank41", ROMX, BANK[41]

INCBIN "baserom.gbc", 16384*41, 16384

SECTION "bank42", ROMX, BANK[42]

INCBIN "baserom.gbc", 16384*42, 16384

SECTION "bank43", ROMX, BANK[43]

INCBIN "baserom.gbc", 16384*43, 16384

SECTION "bank44", ROMX, BANK[44]

INCBIN "baserom.gbc", 16384*44, 16384

SECTION "bank45", ROMX, BANK[45]

INCBIN "baserom.gbc", 16384*45, 16384

SECTION "bank46", ROMX, BANK[46]

INCBIN "baserom.gbc", 16384*46, 16384

SECTION "bank47", ROMX, BANK[47]

INCBIN "baserom.gbc", 16384*47, 16384

SECTION "bank48", ROMX, BANK[48]

INCBIN "baserom.gbc", 16384*48, 16384

SECTION "bank49", ROMX, BANK[49]

INCBIN "baserom.gbc", 16384*49, 16384

SECTION "bank50", ROMX, BANK[50]

INCBIN "baserom.gbc", 16384*50, 16384

SECTION "bank51", ROMX, BANK[51]

INCBIN "baserom.gbc", 16384*51, 16384

SECTION "bank52", ROMX, BANK[52]

INCBIN "baserom.gbc", 16384*52, 16384

SECTION "bank53", ROMX, BANK[53]

INCBIN "baserom.gbc", 16384*53, 16384

SECTION "bank54", ROMX, BANK[54]

INCBIN "baserom.gbc", 16384*54, $3356

SECTION "bank55", ROMX, BANK[55]

INCBIN "baserom.gbc", 16384*55, $1cda

SECTION "bank56", ROMX, BANK[56]

INCBIN "baserom.gbc", 16384*56, $3898

SECTION "bank57", ROMX, BANK[57]

INCBIN "baserom.gbc", 16384*57, 16384

SECTION "bank58", ROMX, BANK[58]

INCBIN "baserom.gbc", 16384*58, 16384

SECTION "bank59", ROMX, BANK[59]

INCBIN "baserom.gbc", 16384*59, 16384

SECTION "bank60", ROMX, BANK[60]

INCBIN "baserom.gbc", 16384*60, $2bde

SECTION "bank61", ROMX, BANK[61]

INCBIN "baserom.gbc", 16384*61, $254e

SECTION "bank62", ROMX, BANK[62]
; empty bank


INCLUDE "bank63.asm"
