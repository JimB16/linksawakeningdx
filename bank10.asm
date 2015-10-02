
SECTION "bank10", ROMX, BANK[$a]

RoomPointerData: ; 0x28000
	dw RoomData_28200 ; $4200
	dw RoomData_28203 ; $4203
	dw RoomData_28242
	dw RoomData_28287
	dw RoomData_282b3
	dw RoomData_282e8
	dw RoomData_2831a
	dw RoomData_28338
	dw $438b, $43e2, $441f, $444f, $4468, $44a4, $44d7, $450e
	dw $452e, $4559, $4568, $45ae, $45dc, $460c, $464a, $468c
	dw $46c7, $46fc, $4735, $4772, $479e, $47ae, $47df, $4815
	dw $4842, $487d, $48d2, $491d, $4963, $4997, $49c0, $4a02
	dw $4a2e, $4a5c, $4a92, $4ad1, $4af6, $4b41, $4b8b, $4bcb
	
	dw $4BF8, $4C03, $4C5A, $4CB3, $4CFA, $4D49, $4D81, $4DD6
	dw $4E0A, $4E4E, $4EA5, $4EE2, $4F17, $4F5B, $4FA2, $4FE0
	dw $5014, $505E, $5081, $50A4, $50DE, $510C, $5147, $519B
	dw $51CE, $5209, $5257, $52A7, $52DD, $533E, $537F, $53AA
	dw $53D0, $53FE, $5438, $5488, $54AB, $54E7, $5520, $5568
	dw $55A6, $5605, $564B, $565E, $56BA, $56E7, $56EA, $571C
	dw $574F, $5797, $57B3, $57F8, $582A, $5851, $587A, $58CD
	dw $590B, $5950, $599A, $59DE, $5A19, $5A50, $5AA9, $5B00
	dw $5B49, $5B96, $5BD3, $5C42, $5C91, $5CCA, $5D15, $5D69
	dw $5DB2, $5DE8, $5E33, $5E6E, $5EA8, $5EE4, $5F18, $5F18
	
	dw $5F1B, $5F39, $5F5D, $5F96, $5FD1, $5FEF, $6002, $603F
	dw $6070, $60AB, $60C9, $60ED, $6118, $614D, $6188, $61D4
	dw $6209, $622F, $6284, $629E, $62BC, $62F9, $6313, $636C
	dw $6391, $63D8, $6412, $6443, $645C, $6474, $64AC, $64E2
	dw $6512, $6543, $6571, $65B8, $6605, $663F, $6679, $66BD
	dw $66FD, $6726, $6754, $6794, $67D5, $6825, $6828, $682B
	dw $682E, $6863, $6893, $68CF, $6913, $6943, $6991, $69CB
	dw $69FE, $6A2F, $6A82, $6AB5, $6AF9, $6B18, $6B39, $6B95
	dw $6BCB, $6BED, $6C3B, $6C5A, $6C94, $6CAF, $6CD2, $6D32
	dw $6D59, $6D93, $6DDA, $6E12, $6E33, $6E4A, $6E87, $6ECC
	dw $6F00, $6F23, $6F57, $6F7C, $6FA7, $6FD3, $703B, $7063
	dw $70AC, $70E4, $7127, $7163, $719B, $71D3, $720F, $7212
	dw $7215, $726E, $72C1, $7314, $7346, $7396, $7401, $7455
	dw $74B9, $74EB, $7538, $7584, $75C6, $7624, $7624, $766F
	dw $76B4, $770C, $7753, $7781, $77D1, $781B, $7897, $790E
	dw $7988, $79C6, $7A03, $7A23, $7A73, $7A98, $7AED, $7B37
	; 0x28200



RoomData_28200: ; 0x28200
	db $00, $0d, $fe
RoomData_28203: ; 0x28203
	db $04, $93, $03, $f4, $c4, $04, $0d, $85, $43, $0d, $86, $52, $0d
	db $85, $63, $0D, $C3, $03, $23, $31, $25, $32, $21, $33, $29, $C3, $41, $23, $71
	db $27, $86, $72, $22, $77, $28, $C3, $47, $24, $37, $26, $35, $2A, $36, $21, $C3
	db $05, $24, $42, $AC, $46, $AC, $62, $AC, $66, $AC, $54, $BE, $E2, $00, $18, $28
	db $10, $FE

RoomData_28242: ; 0x28242
INCBIN "baserom.gbc", 16384*10+$242, $287-$242
RoomData_28287:
INCBIN "baserom.gbc", 16384*10+$287, $2b3-$287
RoomData_282b3:
INCBIN "baserom.gbc", 16384*10+$2b3, $2e8-$2b3
RoomData_282e8:
INCBIN "baserom.gbc", 16384*10+$2e8, $31a-$2e8
RoomData_2831a:
INCBIN "baserom.gbc", 16384*10+$31a, $338-$31a
RoomData_28338:
	

INCBIN "baserom.gbc", 16384*10+$338, $3b77-$338


Unknown_2bb77:
	dw Unknown_2bbb7 ; $7BB7
	dw Unknown_2bbbe
	dw Unknown_2bbe6
	dw $7C39, $7C40, $7C66, $7C8D, $7CB6, $7CED, $7D2B, $7D51, $7D8B, $7DB2, $7DC6, $7DF5, $7E26, $7E44, $7E75, $7EAD, $7ED7, $7EEF, $7F12
; 0x2bba3
    dw RoomData_28200 ; $4200
    dw RoomData_28200 ; $4200
    dw RoomData_28200 ; $4200
    dw RoomData_28200 ; $4200
    dw RoomData_28200 ; $4200
    dw RoomData_28200 ; $4200
    dw RoomData_28200 ; $4200
    dw RoomData_28200 ; $4200
    dw RoomData_28200 ; $4200
    dw RoomData_28200 ; $4200


Unknown_2bbb7:
INCBIN "baserom.gbc", 16384*10+$3bb7, $3bbe-$3bb7
Unknown_2bbbe:
INCBIN "baserom.gbc", 16384*10+$3bbe, $3be6-$3bbe
Unknown_2bbe6:
INCBIN "baserom.gbc", 16384*10+$3be6, $3f43-$3be6

