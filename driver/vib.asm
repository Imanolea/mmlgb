; ;--------------------------------------------------------
; ; File Created by SDCC : free open source ANSI-C Compiler
; ; Version 3.8.0 #10562 (Linux)
; ;--------------------------------------------------------
; 	; MODULE vib
; ; 	.optsdcc -mgbz80
; 	; Generated using the rgbds tokens.
; 	; We have to define these here as sdcc doesn't make them global by default
; 	GLOBAL __mulschar
; 	GLOBAL __muluchar
; 	GLOBAL __mulint
; 	GLOBAL __divschar
; 	GLOBAL __divuchar
; 	GLOBAL __divsint
; 	GLOBAL __divuint
; 	GLOBAL __modschar
; 	GLOBAL __moduchar
; 	GLOBAL __modsint
; 	GLOBAL __moduint
; 	GLOBAL __mullong
; 	GLOBAL __modslong
; 	GLOBAL __divslong
; 	GLOBAL banked_call
; 	GLOBAL banked_ret

; ;--------------------------------------------------------
; ; Public variables in this module
; ;--------------------------------------------------------
; 	GLOBAL _vib4
; 	GLOBAL _vib3
; 	GLOBAL _vib2
; 	GLOBAL _vib1
; ;--------------------------------------------------------
; ; special function registers
; ;--------------------------------------------------------
; ;--------------------------------------------------------
; ; ram data
; ;--------------------------------------------------------
; 	SECTION "vib.c_DATA",WRAM0
; ;--------------------------------------------------------
; ; absolute external ram data
; ;--------------------------------------------------------
; 	SECTION "DABS (ABS)",ROMX
; ;--------------------------------------------------------
; ; global & static initialisations
; ;--------------------------------------------------------
; 	SECTION "ROM0",ROMX
; 	SECTION "GSINIT",ROMX
; 	SECTION "GSFINAL",ROMX
; 	SECTION "GSINIT",ROMX
; ;--------------------------------------------------------
; ; Home
; ;--------------------------------------------------------
; 	SECTION "vib.c_ROM0",ROM0
; 	SECTION "vib.c_ROM0",ROM0
; ;--------------------------------------------------------
; ; code
; ;--------------------------------------------------------
; 	SECTION "vib.c_ROMX",ROMX
; 	SECTION "vib.c_ROMX",ROMX
_vib1:
	DB $01	; 1
	DB $01	; 1
	DB $01	; 1
	DB $01	; 1
	DB $01	; 1
	DB $01	; 1
	DB $02	; 2
	DB $02	; 2
	DB $02	; 2
	DB $02	; 2
	DB $02	; 2
	DB $02	; 2
	DB $02	; 2
	DB $02	; 2
	DB $02	; 2
	DB $02	; 2
	DB $02	; 2
	DB $02	; 2
	DB $02	; 2
	DB $02	; 2
	DB $02	; 2
	DB $02	; 2
	DB $02	; 2
	DB $02	; 2
	DB $02	; 2
	DB $02	; 2
	DB $02	; 2
	DB $01	; 1
	DB $01	; 1
	DB $01	; 1
	DB $01	; 1
	DB $01	; 1
	DB $01	; 1
	DB $01	; 1
	DB $01	; 1
	DB $01	; 1
	DB $01	; 1
	DB $01	; 1
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $01	; 1
	DB $01	; 1
	DB $01	; 1
	DB $01	; 1
	DB $01	; 1
_vib2:
	DB $02	; 2
	DB $02	; 2
	DB $02	; 2
	DB $03	; 3
	DB $03	; 3
	DB $03	; 3
	DB $03	; 3
	DB $03	; 3
	DB $03	; 3
	DB $04	; 4
	DB $04	; 4
	DB $04	; 4
	DB $04	; 4
	DB $04	; 4
	DB $04	; 4
	DB $04	; 4
	DB $04	; 4
	DB $04	; 4
	DB $04	; 4
	DB $04	; 4
	DB $04	; 4
	DB $04	; 4
	DB $04	; 4
	DB $04	; 4
	DB $03	; 3
	DB $03	; 3
	DB $03	; 3
	DB $03	; 3
	DB $03	; 3
	DB $03	; 3
	DB $02	; 2
	DB $02	; 2
	DB $02	; 2
	DB $02	; 2
	DB $02	; 2
	DB $01	; 1
	DB $01	; 1
	DB $01	; 1
	DB $01	; 1
	DB $01	; 1
	DB $01	; 1
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $01	; 1
	DB $01	; 1
	DB $01	; 1
	DB $01	; 1
	DB $01	; 1
	DB $01	; 1
	DB $02	; 2
	DB $02	; 2
_vib3:
	DB $04	; 4
	DB $04	; 4
	DB $05	; 5
	DB $05	; 5
	DB $06	; 6
	DB $06	; 6
	DB $06	; 6
	DB $07	; 7
	DB $07	; 7
	DB $07	; 7
	DB $07	; 7
	DB $08	; 8
	DB $08	; 8
	DB $08	; 8
	DB $08	; 8
	DB $08	; 8
	DB $08	; 8
	DB $08	; 8
	DB $08	; 8
	DB $08	; 8
	DB $08	; 8
	DB $08	; 8
	DB $07	; 7
	DB $07	; 7
	DB $07	; 7
	DB $07	; 7
	DB $06	; 6
	DB $06	; 6
	DB $06	; 6
	DB $05	; 5
	DB $05	; 5
	DB $04	; 4
	DB $04	; 4
	DB $04	; 4
	DB $03	; 3
	DB $03	; 3
	DB $02	; 2
	DB $02	; 2
	DB $02	; 2
	DB $01	; 1
	DB $01	; 1
	DB $01	; 1
	DB $01	; 1
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $01	; 1
	DB $01	; 1
	DB $01	; 1
	DB $01	; 1
	DB $02	; 2
	DB $02	; 2
	DB $02	; 2
	DB $03	; 3
	DB $03	; 3
	DB $04	; 4
_vib4:
	DB $08	; 8
	DB $09	; 9
	DB $0A	; 10
	DB $0A	; 10
	DB $0B	; 11
	DB $0C	; 12
	DB $0C	; 12
	DB $0D	; 13
	DB $0E	; 14
	DB $0E	; 14
	DB $0F	; 15
	DB $0F	; 15
	DB $0F	; 15
	DB $10	; 16
	DB $10	; 16
	DB $10	; 16
	DB $10	; 16
	DB $10	; 16
	DB $10	; 16
	DB $10	; 16
	DB $0F	; 15
	DB $0F	; 15
	DB $0F	; 15
	DB $0E	; 14
	DB $0E	; 14
	DB $0D	; 13
	DB $0C	; 12
	DB $0C	; 12
	DB $0B	; 11
	DB $0A	; 10
	DB $0A	; 10
	DB $09	; 9
	DB $08	; 8
	DB $07	; 7
	DB $06	; 6
	DB $06	; 6
	DB $05	; 5
	DB $04	; 4
	DB $04	; 4
	DB $03	; 3
	DB $02	; 2
	DB $02	; 2
	DB $01	; 1
	DB $01	; 1
	DB $01	; 1
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $01	; 1
	DB $01	; 1
	DB $01	; 1
	DB $02	; 2
	DB $02	; 2
	DB $03	; 3
	DB $04	; 4
	DB $04	; 4
	DB $05	; 5
	DB $06	; 6
	DB $06	; 6
	DB $07	; 7
	; SECTION "CABS (ABS)",ROMX
