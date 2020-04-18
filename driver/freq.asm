;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (Linux)
;--------------------------------------------------------
	; MODULE freq
; 	.optsdcc -mgbz80
	; Generated using the rgbds tokens.
	; We have to define these here as sdcc doesn't make them global by default
	GLOBAL __mulschar
	GLOBAL __muluchar
	GLOBAL __mulint
	GLOBAL __divschar
	GLOBAL __divuchar
	GLOBAL __divsint
	GLOBAL __divuint
	GLOBAL __modschar
	GLOBAL __moduchar
	GLOBAL __modsint
	GLOBAL __moduint
	GLOBAL __mullong
	GLOBAL __modslong
	GLOBAL __divslong
	GLOBAL banked_call
	GLOBAL banked_ret

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	GLOBAL _freq
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	SECTION "freq.c_DATA",BSS
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	SECTION "DABS (ABS)",CODE
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	SECTION "HOME",CODE
	SECTION "GSINIT",CODE
	SECTION "GSFINAL",CODE
	SECTION "GSINIT",CODE
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	SECTION "freq.c_HOME",HOME
	SECTION "freq.c_HOME",HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	SECTION "freq.c_CODE",CODE
	SECTION "freq.c_CODE",CODE
_freq:
	DW $0000
	DW $0000
	DW $0000
	DW $0000
	DW $0000
	DW $0000
	DW $0000
	DW $0000
	DW $0000
	DW $0000
	DW $0000
	DW $0000
	DW $0000
	DW $0000
	DW $0000
	DW $0000
	DW $0000
	DW $0000
	DW $0000
	DW $0000
	DW $0000
	DW $0000
	DW $0000
	DW $0000
	DW $0000
	DW $0000
	DW $0000
	DW $0000
	DW $0000
	DW $0000
	DW $0000
	DW $0000
	DW $002C
	DW $009D
	DW $0107
	DW $016B
	DW $01CA
	DW $0223
	DW $0277
	DW $02C7
	DW $0312
	DW $0358
	DW $039B
	DW $03DA
	DW $0000
	DW $0000
	DW $0000
	DW $0000
	DW $0416
	DW $044E
	DW $0483
	DW $04B5
	DW $04E5
	DW $0511
	DW $053C
	DW $0563
	DW $0589
	DW $05AC
	DW $05CE
	DW $05ED
	DW $0000
	DW $0000
	DW $0000
	DW $0000
	DW $060B
	DW $0627
	DW $0642
	DW $065B
	DW $0672
	DW $0689
	DW $069E
	DW $06B2
	DW $06C4
	DW $06D6
	DW $06E7
	DW $06F7
	DW $0000
	DW $0000
	DW $0000
	DW $0000
	DW $0706
	DW $0714
	DW $0721
	DW $072D
	DW $0739
	DW $0744
	DW $074F
	DW $0759
	DW $0762
	DW $076B
	DW $0773
	DW $077B
	DW $0000
	DW $0000
	DW $0000
	DW $0000
	DW $0783
	DW $078A
	DW $0790
	DW $0797
	DW $079D
	DW $07A2
	DW $07A7
	DW $07AC
	DW $07B1
	DW $07B6
	DW $07BA
	DW $07BE
	DW $0000
	DW $0000
	DW $0000
	DW $0000
	DW $07C1
	DW $07C5
	DW $07C8
	DW $07CB
	DW $07CE
	DW $07D1
	DW $07D4
	DW $07D6
	DW $07D9
	DW $07DB
	DW $07DD
	DW $07DF
	DW $0000
	DW $0000
	DW $0000
	DW $0000
	DW $07E1
	DW $07E2
	DW $07E4
	DW $07E6
	DW $07E7
	DW $07E9
	DW $07EA
	DW $07EB
	DW $07EC
	DW $07ED
	DW $07EE
	DW $07EF
	SECTION "CABS (ABS)",CODE
