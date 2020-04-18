;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (Linux)
;--------------------------------------------------------
	; MODULE noisefreq
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
	GLOBAL _noise_freq
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	SECTION "noisefreq.c_DATA",BSS
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
	SECTION "noisefreq.c_HOME",HOME
	SECTION "noisefreq.c_HOME",HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	SECTION "noisefreq.c_CODE",CODE
	SECTION "noisefreq.c_CODE",CODE
_noise_freq:
	DB $F7	; 247
	DB $E7	; 231
	DB $D7	; 215
	DB $C7	; 199
	DB $B7	; 183
	DB $A7	; 167
	DB $97	; 151
	DB $87	; 135
	DB $77	; 119	'w'
	DB $67	; 103	'g'
	DB $57	; 87	'W'
	DB $47	; 71	'G'
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $F6	; 246
	DB $E6	; 230
	DB $D6	; 214
	DB $C6	; 198
	DB $B6	; 182
	DB $A6	; 166
	DB $96	; 150
	DB $86	; 134
	DB $76	; 118	'v'
	DB $66	; 102	'f'
	DB $56	; 86	'V'
	DB $46	; 70	'F'
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $F5	; 245
	DB $E5	; 229
	DB $D5	; 213
	DB $C5	; 197
	DB $B5	; 181
	DB $A5	; 165
	DB $95	; 149
	DB $85	; 133
	DB $75	; 117	'u'
	DB $65	; 101	'e'
	DB $55	; 85	'U'
	DB $45	; 69	'E'
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $F4	; 244
	DB $E4	; 228
	DB $D4	; 212
	DB $C4	; 196
	DB $B4	; 180
	DB $A4	; 164
	DB $94	; 148
	DB $84	; 132
	DB $74	; 116	't'
	DB $64	; 100	'd'
	DB $54	; 84	'T'
	DB $44	; 68	'D'
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $F3	; 243
	DB $E3	; 227
	DB $D3	; 211
	DB $C3	; 195
	DB $B3	; 179
	DB $A3	; 163
	DB $93	; 147
	DB $83	; 131
	DB $73	; 115	's'
	DB $63	; 99	'c'
	DB $53	; 83	'S'
	DB $43	; 67	'C'
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $F2	; 242
	DB $E2	; 226
	DB $D2	; 210
	DB $C2	; 194
	DB $B2	; 178
	DB $A2	; 162
	DB $92	; 146
	DB $82	; 130
	DB $72	; 114	'r'
	DB $62	; 98	'b'
	DB $52	; 82	'R'
	DB $42	; 66	'B'
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $F1	; 241
	DB $E1	; 225
	DB $D1	; 209
	DB $C1	; 193
	DB $B1	; 177
	DB $A1	; 161
	DB $91	; 145
	DB $81	; 129
	DB $71	; 113	'q'
	DB $61	; 97	'a'
	DB $51	; 81	'Q'
	DB $41	; 65	'A'
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $F0	; 240
	DB $E0	; 224
	DB $D0	; 208
	DB $C0	; 192
	DB $B0	; 176
	DB $A0	; 160
	DB $90	; 144
	DB $80	; 128
	DB $70	; 112	'p'
	DB $60	; 96
	DB $50	; 80	'P'
	DB $40	; 64
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	SECTION "CABS (ABS)",CODE
