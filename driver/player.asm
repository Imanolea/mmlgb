;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (Linux)
;--------------------------------------------------------
	; MODULE player
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
	GLOBAL _main
	GLOBAL _togglePaused
	GLOBAL _mus_update
	GLOBAL _mus_setPaused
	GLOBAL _mus_init
	GLOBAL _move_sprite
	GLOBAL _set_sprite_tile
	GLOBAL _set_sprite_data
	GLOBAL _set_bkg_tiles
	GLOBAL _set_bkg_data
	GLOBAL _display_off
	GLOBAL _wait_vbl_done
	GLOBAL _set_interrupts
	GLOBAL _disable_interrupts
	GLOBAL _enable_interrupts
	GLOBAL _joypad
	GLOBAL _add_TIM
	GLOBAL _paused
	GLOBAL _selection
	GLOBAL _oldjoystate
	GLOBAL _joystate
	GLOBAL _sprites_data
	GLOBAL _background_tiles
	GLOBAL _background_data
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	SECTION "player.c_DATA",BSS
_joystate:
	DS 1
_oldjoystate:
	DS 1
_selection:
	DS 1
_paused:
	DS 1
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
	SECTION "player.c_HOME",HOME
	SECTION "player.c_HOME",HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	SECTION "player.c_CODE",CODE
;player.c:15: void togglePaused() {
;	---------------------------------
; Function togglePaused
; ---------------------------------
_togglePaused::
;player.c:16: paused = !paused;
	ld	hl, _paused
	ld	a, [hl]
	sub	a,$01
	ld	a, $00
	rla
;player.c:17: mus_setPaused(paused);
	ld	[hl],a
	push	af
	inc	sp
	call	_mus_setPaused
	inc	sp
;player.c:18: if(paused) {
	ld	hl, _paused
	ld	a, [hl]
	or	a, a
	jr	Z,.l00102
;player.c:19: set_sprite_tile(2U, 12U);
	ld	a, $0C
	push	af
	inc	sp
	ld	a, $02
	push	af
	inc	sp
	call	_set_sprite_tile
	add	sp, #2
;player.c:20: set_sprite_tile(3U, 14U);
	ld	a, $0E
	push	af
	inc	sp
	ld	a, $03
	push	af
	inc	sp
	call	_set_sprite_tile
	add	sp, #2
	jr	.l00104
.l00102:
;player.c:22: set_sprite_tile(2U, 8U);
	ld	a, $08
	push	af
	inc	sp
	ld	a, $02
	push	af
	inc	sp
	call	_set_sprite_tile
	add	sp, #2
;player.c:23: set_sprite_tile(3U, 10U);
	ld	a, $0A
	push	af
	inc	sp
	ld	a, $03
	push	af
	inc	sp
	call	_set_sprite_tile
	add	sp, #2
.l00104:
;player.c:25: }
	ret
_background_data:
	DB $89	; 137
	DB $FF	; 255
	DB $46	; 70	'F'
	DB $FF	; 255
	DB $40	; 64
	DB $FF	; 255
	DB $80	; 128
	DB $FF	; 255
	DB $01	; 1
	DB $FF	; 255
	DB $02	; 2
	DB $FF	; 255
	DB $62	; 98	'b'
	DB $FF	; 255
	DB $91	; 145
	DB $FF	; 255
	DB $FF	; 255
	DB $FF	; 255
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
	DB $03	; 3
	DB $02	; 2
	DB $03	; 3
	DB $02	; 2
	DB $03	; 3
	DB $03	; 3
	DB $03	; 3
	DB $03	; 3
	DB $03	; 3
	DB $03	; 3
	DB $03	; 3
	DB $03	; 3
	DB $03	; 3
	DB $03	; 3
	DB $E0	; 224
	DB $E0	; 224
	DB $F1	; 241
	DB $71	; 113	'q'
	DB $F1	; 241
	DB $F1	; 241
	DB $FB	; 251
	DB $FB	; 251
	DB $FF	; 255
	DB $FF	; 255
	DB $FF	; 255
	DB $FF	; 255
	DB $FF	; 255
	DB $FF	; 255
	DB $F5	; 245
	DB $F5	; 245
	DB $C3	; 195
	DB $C3	; 195
	DB $E7	; 231
	DB $E4	; 228
	DB $E7	; 231
	DB $E5	; 229
	DB $E7	; 231
	DB $E7	; 231
	DB $E7	; 231
	DB $E7	; 231
	DB $E7	; 231
	DB $E7	; 231
	DB $E7	; 231
	DB $E7	; 231
	DB $E7	; 231
	DB $E7	; 231
	DB $C1	; 193
	DB $C1	; 193
	DB $E3	; 227
	DB $E3	; 227
	DB $E3	; 227
	DB $E3	; 227
	DB $F7	; 247
	DB $F7	; 247
	DB $FF	; 255
	DB $FF	; 255
	DB $FF	; 255
	DB $FF	; 255
	DB $FF	; 255
	DB $FF	; 255
	DB $EB	; 235
	DB $EB	; 235
	DB $87	; 135
	DB $87	; 135
	DB $CF	; 207
	DB $C9	; 201
	DB $CF	; 207
	DB $CB	; 203
	DB $CF	; 207
	DB $CF	; 207
	DB $CF	; 207
	DB $CF	; 207
	DB $CF	; 207
	DB $CF	; 207
	DB $CF	; 207
	DB $CF	; 207
	DB $CF	; 207
	DB $CF	; 207
	DB $80	; 128
	DB $80	; 128
	DB $C0	; 192
	DB $C0	; 192
	DB $C0	; 192
	DB $C0	; 192
	DB $C0	; 192
	DB $C0	; 192
	DB $C0	; 192
	DB $C0	; 192
	DB $C0	; 192
	DB $C0	; 192
	DB $C0	; 192
	DB $C0	; 192
	DB $C0	; 192
	DB $C0	; 192
	DB $1F	; 31
	DB $1F	; 31
	DB $3F	; 63
	DB $0F	; 15
	DB $7F	; 127
	DB $5F	; 95
	DB $7E	; 126
	DB $7E	; 126
	DB $7E	; 126
	DB $7E	; 126
	DB $7E	; 126
	DB $7E	; 126
	DB $7E	; 126
	DB $7E	; 126
	DB $7E	; 126
	DB $7E	; 126
	DB $F0	; 240
	DB $F0	; 240
	DB $F9	; 249
	DB $F9	; 249
	DB $F1	; 241
	DB $F1	; 241
	DB $01	; 1
	DB $01	; 1
	DB $71	; 113	'q'
	DB $71	; 113	'q'
	DB $F9	; 249
	DB $F9	; 249
	DB $79	; 121	'y'
	DB $79	; 121	'y'
	DB $39	; 57	'9'
	DB $39	; 57	'9'
	DB $FF	; 255
	DB $FF	; 255
	DB $FF	; 255
	DB $3F	; 63
	DB $FF	; 255
	DB $7F	; 127
	DB $F8	; 248
	DB $F8	; 248
	DB $FF	; 255
	DB $FF	; 255
	DB $FF	; 255
	DB $FF	; 255
	DB $FF	; 255
	DB $FF	; 255
	DB $F8	; 248
	DB $F8	; 248
	DB $80	; 128
	DB $80	; 128
	DB $C0	; 192
	DB $C0	; 192
	DB $E0	; 224
	DB $E0	; 224
	DB $E0	; 224
	DB $E0	; 224
	DB $E0	; 224
	DB $E0	; 224
	DB $C0	; 192
	DB $C0	; 192
	DB $E0	; 224
	DB $E0	; 224
	DB $E0	; 224
	DB $E0	; 224
	DB $03	; 3
	DB $03	; 3
	DB $03	; 3
	DB $03	; 3
	DB $03	; 3
	DB $03	; 3
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
	DB $F1	; 241
	DB $F1	; 241
	DB $F1	; 241
	DB $F1	; 241
	DB $F1	; 241
	DB $F1	; 241
	DB $E0	; 224
	DB $E0	; 224
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $E7	; 231
	DB $E7	; 231
	DB $E7	; 231
	DB $E7	; 231
	DB $E7	; 231
	DB $E7	; 231
	DB $C3	; 195
	DB $C3	; 195
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $E3	; 227
	DB $E3	; 227
	DB $E3	; 227
	DB $E3	; 227
	DB $E3	; 227
	DB $E3	; 227
	DB $C1	; 193
	DB $C1	; 193
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $CF	; 207
	DB $CF	; 207
	DB $CF	; 207
	DB $CF	; 207
	DB $CF	; 207
	DB $CF	; 207
	DB $87	; 135
	DB $87	; 135
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $FC	; 252
	DB $FC	; 252
	DB $FE	; 254
	DB $FE	; 254
	DB $FE	; 254
	DB $FE	; 254
	DB $FC	; 252
	DB $FC	; 252
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $7F	; 127
	DB $7F	; 127
	DB $7F	; 127
	DB $7F	; 127
	DB $3F	; 63
	DB $3F	; 63
	DB $1F	; 31
	DB $1F	; 31
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $F9	; 249
	DB $F9	; 249
	DB $F9	; 249
	DB $F9	; 249
	DB $F1	; 241
	DB $F1	; 241
	DB $E0	; 224
	DB $E0	; 224
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $FF	; 255
	DB $FF	; 255
	DB $FF	; 255
	DB $FF	; 255
	DB $FF	; 255
	DB $FF	; 255
	DB $FF	; 255
	DB $FF	; 255
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $E0	; 224
	DB $E0	; 224
	DB $E0	; 224
	DB $E0	; 224
	DB $C0	; 192
	DB $C0	; 192
	DB $80	; 128
	DB $80	; 128
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
	DB $07	; 7
	DB $07	; 7
	DB $09	; 9
	DB $0F	; 15
	DB $1E	; 30
	DB $11	; 17
	DB $30	; 48	'0'
	DB $21	; 33
	DB $33	; 51	'3'
	DB $27	; 39
	DB $00	; 0
	DB $00	; 0
	DB $70	; 112	'p'
	DB $70	; 112	'p'
	DB $88	; 136
	DB $F8	; 248
	DB $24	; 36
	DB $BC	; 188
	DB $3F	; 63
	DB $3F	; 63
	DB $6C	; 108	'l'
	DB $F0	; 240
	DB $BF	; 191
	DB $C0	; 192
	DB $7F	; 127
	DB $80	; 128
	DB $00	; 0
	DB $00	; 0
	DB $07	; 7
	DB $07	; 7
	DB $08	; 8
	DB $0F	; 15
	DB $16	; 22
	DB $1A	; 26
	DB $FE	; 254
	DB $FE	; 254
	DB $2B	; 43
	DB $47	; 71	'G'
	DB $9E	; 158
	DB $01	; 1
	DB $DF	; 223
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $80	; 128
	DB $80	; 128
	DB $70	; 112	'p'
	DB $F0	; 240
	DB $48	; 72	'H'
	DB $78	; 120	'x'
	DB $04	; 4
	DB $C4	; 196
	DB $82	; 130
	DB $C6	; 198
	DB $62	; 98	'b'
	DB $F2	; 242
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
	DB $18	; 24
	DB $18	; 24
	DB $2C	; 44
	DB $24	; 36
	DB $3D	; 61
	DB $23	; 35
	DB $1B	; 27
	DB $16	; 22
	DB $12	; 18
	DB $1E	; 30
	DB $2E	; 46
	DB $3C	; 60
	DB $57	; 87	'W'
	DB $64	; 100	'd'
	DB $4B	; 75	'K'
	DB $64	; 100	'd'
	DB $5B	; 91
	DB $64	; 100	'd'
	DB $55	; 85	'U'
	DB $6A	; 106	'j'
	DB $FF	; 255
	DB $00	; 0
	DB $3F	; 63
	DB $00	; 0
	DB $1F	; 31
	DB $00	; 0
	DB $1F	; 31
	DB $00	; 0
	DB $2F	; 47
	DB $00	; 0
	DB $D3	; 211
	DB $20	; 32
	DB $DC	; 220
	DB $20	; 32
	DB $A7	; 167
	DB $58	; 88	'X'
	DB $FF	; 255
	DB $00	; 0
	DB $FF	; 255
	DB $00	; 0
	DB $FF	; 255
	DB $00	; 0
	DB $FF	; 255
	DB $00	; 0
	DB $DF	; 223
	DB $20	; 32
	DB $DE	; 222
	DB $20	; 32
	DB $21	; 33
	DB $10	; 16
	DB $DF	; 223
	DB $30	; 48	'0'
	DB $CE	; 206
	DB $62	; 98	'b'
	DB $AC	; 172
	DB $74	; 116	't'
	DB $E4	; 228
	DB $3C	; 60
	DB $DA	; 218
	DB $3E	; 62
	DB $8D	; 141
	DB $2B	; 43
	DB $41	; 65	'A'
	DB $2B	; 43
	DB $95	; 149
	DB $6B	; 107	'k'
	DB $B5	; 181
	DB $63	; 99	'c'
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
	DB $0C	; 12
	DB $0C	; 12
	DB $16	; 22
	DB $12	; 18
	DB $00	; 0
	DB $00	; 0
	DB $03	; 3
	DB $03	; 3
	DB $04	; 4
	DB $04	; 4
	DB $04	; 4
	DB $04	; 4
	DB $03	; 3
	DB $02	; 2
	DB $01	; 1
	DB $01	; 1
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $2C	; 44
	DB $24	; 36
	DB $24	; 36
	DB $24	; 36
	DB $96	; 150
	DB $92	; 146
	DB $56	; 86	'V'
	DB $52	; 82	'R'
	DB $3B	; 59
	DB $37	; 55	'7'
	DB $81	; 129
	DB $18	; 24
	DB $A0	; 160
	DB $D0	; 208
	DB $92	; 146
	DB $8E	; 142
	DB $25	; 37
	DB $32	; 50	'2'
	DB $16	; 22
	DB $1B	; 27
	DB $0E	; 14
	DB $0F	; 15
	DB $1F	; 31
	DB $1A	; 26
	DB $2A	; 42
	DB $3B	; 59
	DB $97	; 151
	DB $9F	; 159
	DB $9D	; 157
	DB $95	; 149
	DB $08	; 8
	DB $88	; 136
	DB $6A	; 106	'j'
	DB $C7	; 199
	DB $43	; 67	'C'
	DB $C1	; 193
	DB $D8	; 216
	DB $98	; 152
	DB $98	; 152
	DB $88	; 136
	DB $18	; 24
	DB $98	; 152
	DB $B8	; 184
	DB $18	; 24
	DB $00	; 0
	DB $80	; 128
	DB $A2	; 162
	DB $C2	; 194
	DB $CB	; 203
	DB $3C	; 60
	DB $16	; 22
	DB $F3	; 243
	DB $FF	; 255
	DB $6D	; 109	'm'
	DB $0D	; 13
	DB $04	; 4
	DB $0C	; 12
	DB $0C	; 12
	DB $0E	; 14
	DB $0C	; 12
	DB $00	; 0
	DB $00	; 0
	DB $22	; 34
	DB $21	; 33
	DB $42	; 66	'B'
	DB $D6	; 214
	DB $74	; 116	't'
	DB $CC	; 204
	DB $98	; 152
	DB $B8	; 184
	DB $7C	; 124
	DB $AC	; 172
	DB $2A	; 42
	DB $EE	; 238
	DB $F4	; 244
	DB $7C	; 124
	DB $5C	; 92
	DB $D4	; 212
	DB $88	; 136
	DB $88	; 136
	DB $16	; 22
	DB $12	; 18
	DB $16	; 22
	DB $12	; 18
	DB $24	; 36
	DB $24	; 36
	DB $2D	; 45
	DB $25	; 37
	DB $6E	; 110	'n'
	DB $76	; 118	'v'
	DB $C0	; 192
	DB $8C	; 140
	DB $82	; 130
	DB $85	; 133
	DB $24	; 36
	DB $B8	; 184
	DB $00	; 0
	DB $00	; 0
	DB $60	; 96
	DB $60	; 96
	DB $B0	; 176
	DB $90	; 144
	DB $30	; 48	'0'
	DB $10	; 16
	DB $60	; 96
	DB $20	; 32
	DB $C0	; 192
	DB $40	; 64
	DB $80	; 128
	DB $80	; 128
	DB $80	; 128
	DB $80	; 128
	DB $AF	; 175
	DB $D8	; 216
	DB $44	; 68	'D'
	DB $49	; 73	'I'
	DB $30	; 48	'0'
	DB $3E	; 62
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
	DB $80	; 128
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
	DB $71	; 113	'q'
	DB $61	; 97	'a'
	DB $1C	; 28
	DB $18	; 24
	DB $07	; 7
	DB $07	; 7
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
	DB $C7	; 199
	DB $C3	; 195
	DB $1C	; 28
	DB $0C	; 12
	DB $F0	; 240
	DB $F0	; 240
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
	DB $7A	; 122	'z'
	DB $8D	; 141
	DB $11	; 17
	DB $49	; 73	'I'
	DB $06	; 6
	DB $3E	; 62
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
	DB $80	; 128
	DB $80	; 128
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
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $FF	; 255
	DB $FF	; 255
_background_tiles:
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
	DB $01	; 1
	DB $01	; 1
	DB $01	; 1
	DB $01	; 1
	DB $02	; 2
	DB $02	; 2
	DB $02	; 2
	DB $02	; 2
	DB $02	; 2
	DB $03	; 3
	DB $04	; 4
	DB $05	; 5
	DB $06	; 6
	DB $07	; 7
	DB $08	; 8
	DB $09	; 9
	DB $0A	; 10
	DB $0B	; 11
	DB $0C	; 12
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
	DB $0D	; 13
	DB $0E	; 14
	DB $0F	; 15
	DB $10	; 16
	DB $11	; 17
	DB $12	; 18
	DB $13	; 19
	DB $14	; 20
	DB $15	; 21
	DB $16	; 22
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
	DB $17	; 23
	DB $18	; 24
	DB $19	; 25
	DB $1A	; 26
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
	DB $1B	; 27
	DB $1C	; 28
	DB $1D	; 29
	DB $1E	; 30
	DB $1F	; 31
	DB $20	; 32
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
	DB $21	; 33
	DB $22	; 34
	DB $23	; 35
	DB $24	; 36
	DB $25	; 37
	DB $26	; 38
	DB $27	; 39
	DB $28	; 40
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
	DB $29	; 41
	DB $2A	; 42
	DB $2B	; 43
	DB $2C	; 44
	DB $02	; 2
	DB $2D	; 45
	DB $2E	; 46
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
	DB $02	; 2
	DB $02	; 2
	DB $02	; 2
	DB $02	; 2
	DB $2F	; 47
	DB $2F	; 47
	DB $2F	; 47
	DB $2F	; 47
	DB $2F	; 47
	DB $2F	; 47
	DB $2F	; 47
	DB $2F	; 47
	DB $2F	; 47
	DB $2F	; 47
	DB $2F	; 47
	DB $2F	; 47
	DB $2F	; 47
	DB $2F	; 47
	DB $2F	; 47
	DB $2F	; 47
	DB $2F	; 47
	DB $2F	; 47
	DB $2F	; 47
	DB $2F	; 47
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
_sprites_data:
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $7F	; 127
	DB $00	; 0
	DB $7F	; 127
	DB $00	; 0
	DB $7F	; 127
	DB $00	; 0
	DB $7F	; 127
	DB $00	; 0
	DB $7F	; 127
	DB $00	; 0
	DB $7F	; 127
	DB $00	; 0
	DB $7F	; 127
	DB $00	; 0
	DB $7F	; 127
	DB $00	; 0
	DB $7F	; 127
	DB $00	; 0
	DB $7F	; 127
	DB $00	; 0
	DB $7F	; 127
	DB $00	; 0
	DB $7F	; 127
	DB $00	; 0
	DB $7F	; 127
	DB $00	; 0
	DB $7F	; 127
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $00	; 0
	DB $FE	; 254
	DB $00	; 0
	DB $FE	; 254
	DB $00	; 0
	DB $FE	; 254
	DB $00	; 0
	DB $FE	; 254
	DB $00	; 0
	DB $FE	; 254
	DB $00	; 0
	DB $FE	; 254
	DB $00	; 0
	DB $FE	; 254
	DB $00	; 0
	DB $FE	; 254
	DB $00	; 0
	DB $FE	; 254
	DB $00	; 0
	DB $FE	; 254
	DB $00	; 0
	DB $FE	; 254
	DB $00	; 0
	DB $FE	; 254
	DB $00	; 0
	DB $FE	; 254
	DB $00	; 0
	DB $FE	; 254
	DB $00	; 0
	DB $00	; 0
	DB $7F	; 127
	DB $00	; 0
	DB $80	; 128
	DB $00	; 0
	DB $80	; 128
	DB $08	; 8
	DB $9C	; 156
	DB $1C	; 28
	DB $9C	; 156
	DB $1C	; 28
	DB $9C	; 156
	DB $1C	; 28
	DB $9C	; 156
	DB $1D	; 29
	DB $9D	; 157
	DB $1D	; 29
	DB $9D	; 157
	DB $1C	; 28
	DB $9C	; 156
	DB $1C	; 28
	DB $9C	; 156
	DB $1C	; 28
	DB $9C	; 156
	DB $08	; 8
	DB $9C	; 156
	DB $00	; 0
	DB $80	; 128
	DB $00	; 0
	DB $80	; 128
	DB $7F	; 127
	DB $7F	; 127
	DB $00	; 0
	DB $FE	; 254
	DB $01	; 1
	DB $01	; 1
	DB $01	; 1
	DB $01	; 1
	DB $09	; 9
	DB $19	; 25
	DB $19	; 25
	DB $39	; 57	'9'
	DB $39	; 57	'9'
	DB $79	; 121	'y'
	DB $79	; 121	'y'
	DB $F9	; 249
	DB $F9	; 249
	DB $F9	; 249
	DB $F9	; 249
	DB $F9	; 249
	DB $79	; 121	'y'
	DB $F9	; 249
	DB $39	; 57	'9'
	DB $79	; 121	'y'
	DB $19	; 25
	DB $39	; 57	'9'
	DB $09	; 9
	DB $19	; 25
	DB $01	; 1
	DB $01	; 1
	DB $01	; 1
	DB $01	; 1
	DB $FE	; 254
	DB $FE	; 254
	DB $00	; 0
	DB $7F	; 127
	DB $00	; 0
	DB $80	; 128
	DB $00	; 0
	DB $80	; 128
	DB $04	; 4
	DB $8E	; 142
	DB $0E	; 14
	DB $8E	; 142
	DB $0E	; 14
	DB $8E	; 142
	DB $0E	; 14
	DB $8E	; 142
	DB $0E	; 14
	DB $8E	; 142
	DB $0E	; 14
	DB $8E	; 142
	DB $0E	; 14
	DB $8E	; 142
	DB $0E	; 14
	DB $8E	; 142
	DB $0E	; 14
	DB $8E	; 142
	DB $04	; 4
	DB $8E	; 142
	DB $00	; 0
	DB $80	; 128
	DB $00	; 0
	DB $80	; 128
	DB $7F	; 127
	DB $7F	; 127
	DB $00	; 0
	DB $FE	; 254
	DB $01	; 1
	DB $01	; 1
	DB $01	; 1
	DB $01	; 1
	DB $21	; 33
	DB $71	; 113	'q'
	DB $71	; 113	'q'
	DB $71	; 113	'q'
	DB $71	; 113	'q'
	DB $71	; 113	'q'
	DB $71	; 113	'q'
	DB $71	; 113	'q'
	DB $71	; 113	'q'
	DB $71	; 113	'q'
	DB $71	; 113	'q'
	DB $71	; 113	'q'
	DB $71	; 113	'q'
	DB $71	; 113	'q'
	DB $71	; 113	'q'
	DB $71	; 113	'q'
	DB $71	; 113	'q'
	DB $71	; 113	'q'
	DB $21	; 33
	DB $71	; 113	'q'
	DB $01	; 1
	DB $01	; 1
	DB $01	; 1
	DB $01	; 1
	DB $FE	; 254
	DB $FE	; 254
	DB $00	; 0
	DB $7F	; 127
	DB $00	; 0
	DB $80	; 128
	DB $00	; 0
	DB $80	; 128
	DB $02	; 2
	DB $83	; 131
	DB $03	; 3
	DB $83	; 131
	DB $03	; 3
	DB $83	; 131
	DB $03	; 3
	DB $83	; 131
	DB $03	; 3
	DB $83	; 131
	DB $03	; 3
	DB $83	; 131
	DB $03	; 3
	DB $83	; 131
	DB $03	; 3
	DB $83	; 131
	DB $03	; 3
	DB $83	; 131
	DB $02	; 2
	DB $83	; 131
	DB $00	; 0
	DB $80	; 128
	DB $00	; 0
	DB $80	; 128
	DB $7F	; 127
	DB $7F	; 127
	DB $00	; 0
	DB $FE	; 254
	DB $01	; 1
	DB $01	; 1
	DB $01	; 1
	DB $01	; 1
	DB $01	; 1
	DB $01	; 1
	DB $01	; 1
	DB $81	; 129
	DB $81	; 129
	DB $C1	; 193
	DB $C1	; 193
	DB $E1	; 225
	DB $F1	; 241
	DB $F1	; 241
	DB $F1	; 241
	DB $F1	; 241
	DB $C1	; 193
	DB $E1	; 225
	DB $81	; 129
	DB $C1	; 193
	DB $01	; 1
	DB $81	; 129
	DB $01	; 1
	DB $01	; 1
	DB $01	; 1
	DB $01	; 1
	DB $01	; 1
	DB $01	; 1
	DB $FE	; 254
	DB $FE	; 254
	DB $00	; 0
	DB $7F	; 127
	DB $00	; 0
	DB $80	; 128
	DB $00	; 0
	DB $80	; 128
	DB $10	; 16
	DB $98	; 152
	DB $18	; 24
	DB $9C	; 156
	DB $1C	; 28
	DB $9E	; 158
	DB $1E	; 30
	DB $9F	; 159
	DB $1F	; 31
	DB $9F	; 159
	DB $1F	; 31
	DB $9F	; 159
	DB $1E	; 30
	DB $9F	; 159
	DB $1C	; 28
	DB $9E	; 158
	DB $18	; 24
	DB $9C	; 156
	DB $10	; 16
	DB $98	; 152
	DB $00	; 0
	DB $80	; 128
	DB $00	; 0
	DB $80	; 128
	DB $7F	; 127
	DB $7F	; 127
	DB $00	; 0
	DB $FE	; 254
	DB $01	; 1
	DB $01	; 1
	DB $01	; 1
	DB $01	; 1
	DB $81	; 129
	DB $C1	; 193
	DB $C1	; 193
	DB $E1	; 225
	DB $E1	; 225
	DB $F1	; 241
	DB $F1	; 241
	DB $F9	; 249
	DB $FD	; 253
	DB $FD	; 253
	DB $FD	; 253
	DB $FD	; 253
	DB $F1	; 241
	DB $F9	; 249
	DB $E1	; 225
	DB $F1	; 241
	DB $C1	; 193
	DB $E1	; 225
	DB $81	; 129
	DB $C1	; 193
	DB $01	; 1
	DB $01	; 1
	DB $01	; 1
	DB $01	; 1
	DB $FE	; 254
	DB $FE	; 254
;player.c:27: void main() {
;	---------------------------------
; Function main
; ---------------------------------
_main::
;player.c:28: disable_interrupts();
	call	_disable_interrupts
;player.c:30: DISPLAY_OFF;
	call	_display_off
;player.c:32: selection = 0U;
	ld	hl, _selection
	ld	[hl], $00
;player.c:33: paused = 0U;
	ld	hl, _paused
	ld	[hl], $00
;player.c:36: mus_init(&song_data);
	ld	hl, _song_data
	push	hl
	call	_mus_init
	add	sp, #2
;player.c:37: add_TIM(mus_update);
	ld	hl, _mus_update
	push	hl
	call	_add_TIM
	add	sp, #2
;player.c:40: set_bkg_data(0U, background_data_length, background_data);
	ld	hl, _background_data
	push	hl
	ld	a, $30
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	call	_set_bkg_data
	add	sp, #4
;player.c:41: set_bkg_tiles(0U, 0U, background_tiles_width, background_tiles_height, background_tiles);
	ld	hl, _background_tiles
	push	hl
	ld	a, $12
	push	af
	inc	sp
	ld	a, $14
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	call	_set_bkg_tiles
	add	sp, #6
;player.c:43: set_sprite_data(0U, sprites_data_length, sprites_data);
	ld	hl, _sprites_data
	push	hl
	ld	a, $14
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	call	_set_sprite_data
	add	sp, #4
;player.c:45: set_sprite_tile(0U, 4U);
	ld	a, $04
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	call	_set_sprite_tile
	add	sp, #2
;player.c:46: set_sprite_tile(1U, 6U);
	ld	a, $06
	push	af
	inc	sp
	ld	a, $01
	push	af
	inc	sp
	call	_set_sprite_tile
	add	sp, #2
;player.c:48: set_sprite_tile(2U, 8U);
	ld	a, $08
	push	af
	inc	sp
	ld	a, $02
	push	af
	inc	sp
	call	_set_sprite_tile
	add	sp, #2
;player.c:49: set_sprite_tile(3U, 10U);
	ld	a, $0A
	push	af
	inc	sp
	ld	a, $03
	push	af
	inc	sp
	call	_set_sprite_tile
	add	sp, #2
;player.c:51: set_sprite_tile(4U, 16U);
	ld	a, $10
	push	af
	inc	sp
	ld	a, $04
	push	af
	inc	sp
	call	_set_sprite_tile
	add	sp, #2
;player.c:52: set_sprite_tile(5U, 18U);
	ld	a, $12
	push	af
	inc	sp
	ld	a, $05
	push	af
	inc	sp
	call	_set_sprite_tile
	add	sp, #2
;player.c:54: set_sprite_tile(6U, 0U);
	xor	a, a
	push	af
	inc	sp
	ld	a, $06
	push	af
	inc	sp
	call	_set_sprite_tile
	add	sp, #2
;player.c:55: set_sprite_tile(7U, 2U);
	ld	a, $02
	push	af
	inc	sp
	ld	a, $07
	push	af
	inc	sp
	call	_set_sprite_tile
	add	sp, #2
;player.c:57: move_sprite(0U, 56U, 104U);
	ld	a, $68
	push	af
	inc	sp
	ld	a, $38
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	call	_move_sprite
	add	sp, #3
;player.c:58: move_sprite(1U, 64U, 104U);
	ld	a, $68
	push	af
	inc	sp
	ld	a, $40
	push	af
	inc	sp
	ld	a, $01
	push	af
	inc	sp
	call	_move_sprite
	add	sp, #3
;player.c:60: move_sprite(2U, 80U, 104U);
	ld	a, $68
	push	af
	inc	sp
	ld	a, $50
	push	af
	inc	sp
	ld	a, $02
	push	af
	inc	sp
	call	_move_sprite
	add	sp, #3
;player.c:61: move_sprite(3U, 88U, 104U);
	ld	a, $68
	push	af
	inc	sp
	ld	a, $58
	push	af
	inc	sp
	ld	a, $03
	push	af
	inc	sp
	call	_move_sprite
	add	sp, #3
;player.c:63: move_sprite(4U, 104U, 104U);
	ld	a, $68
	push	af
	inc	sp
	ld	a, $68
	push	af
	inc	sp
	ld	a, $04
	push	af
	inc	sp
	call	_move_sprite
	add	sp, #3
;player.c:64: move_sprite(5U, 112U, 104U);
	ld	a, $68
	push	af
	inc	sp
	ld	a, $70
	push	af
	inc	sp
	ld	a, $05
	push	af
	inc	sp
	call	_move_sprite
	add	sp, #3
;player.c:66: move_sprite(6U, 56U, 103U);
	ld	a, $67
	push	af
	inc	sp
	ld	a, $38
	push	af
	inc	sp
	ld	a, $06
	push	af
	inc	sp
	call	_move_sprite
	add	sp, #3
;player.c:67: move_sprite(7U, 64U, 103U);
	ld	a, $67
	push	af
	inc	sp
	ld	a, $40
	push	af
	inc	sp
	ld	a, $07
	push	af
	inc	sp
	call	_move_sprite
	add	sp, #3
;player.c:69: SHOW_BKG;
	ld	de, $FF40
	ld	a,[de]
	ld	c, a
	ld	b, $00
	set	0, c
	ld	hl, $FF40
	ld	[hl], c
;player.c:70: SPRITES_8x16;
	ld	de, $FF40
	ld	a,[de]
	ld	c, a
	ld	b, $00
	set	2, c
	ld	l, $40
	ld	[hl], c
;player.c:71: SHOW_SPRITES;
	ld	de, $FF40
	ld	a,[de]
	ld	c, a
	ld	b, $00
	set	1, c
	ld	l, $40
	ld	[hl], c
;player.c:72: HIDE_WIN;
	ld	de, $FF40
	ld	a,[de]
	res	5, a
	ld	l, $40
	ld	[hl], a
;player.c:73: DISPLAY_ON;
	ld	de, $FF40
	ld	a,[de]
	ld	c, a
	ld	b, $00
	set	7, c
	ld	l, $40
	ld	[hl], c
;player.c:75: enable_interrupts();
	call	_enable_interrupts
;player.c:76: set_interrupts(TIM_IFLAG | VBL_IFLAG);
	ld	a, $05
	push	af
	inc	sp
	call	_set_interrupts
	inc	sp
;player.c:78: joystate = oldjoystate = 0U;
	ld	hl, _oldjoystate
	ld	[hl], $00
	ld	hl, _joystate
	ld	[hl], $00
;player.c:80: while(1U) {
.l00130:
;player.c:81: oldjoystate = joystate;
	push	hl
	ld	hl, _joystate
	ld	a, [hl]
	ld	hl, _oldjoystate
	ld	[hl], a
	pop	hl
;player.c:82: joystate = joypad();
	call	_joypad
	ld	hl, _joystate
	ld	[hl], e
;player.c:84: if(CLICKED(J_START)) {
	ld	a, [hl]
	rlca
	jr	NC,.l00102
.l00214:
	ld	hl, _joystate
	ld	c, [hl]
	ld	b, $00
	ld	a, c
	and	a, $80
	ld	c, a
	ld	b, $00
	ld	hl, _oldjoystate
	ld	e, [hl]
	ld	d, $00
	ld	a, e
	and	a, $80
	ld	e, a
	ld	d, $00
	ld	a, c
	sub	a, e
	jr	NZ,.l00215
	ld	a, b
	sub	a, d
	jr	Z,.l00102
.l00215:
;player.c:85: togglePaused();
	call	_togglePaused
.l00102:
;player.c:88: if(CLICKED(J_LEFT)) {
	ld	hl, _joystate
	ld	a, [hl]
	bit	1, a
	jp	Z,.l00108
.l00216:
	ld	hl, _joystate
	ld	c, [hl]
	ld	b, $00
	ld	a, c
	and	a, $02
	ld	c, a
	ld	b, $00
	ld	hl, _oldjoystate
	ld	e, [hl]
	ld	d, $00
	ld	a, e
	and	a, $02
	ld	e, a
	ld	d, $00
	ld	a, c
	sub	a, e
	jr	NZ,.l00217
	ld	a, b
	sub	a, d
	jp	Z,.l00108
.l00217:
;player.c:89: if(selection == 0U) {
	ld	hl, _selection
	ld	a, [hl]
	or	a, a
	jr	NZ,.l00105
;player.c:90: selection = 2U;
	ld	[hl], $02
	jr	.l00106
.l00105:
;player.c:92: selection--;
	ld	hl, _selection
	dec	[hl]
.l00106:
;player.c:94: move_sprite(6U, 56U + selection*24U, 103U);
	ld	hl, _selection
	ld	a, [hl]
	ld	c, a
	add	a, a
	add	a, c
	add	a, a
	add	a, a
	add	a, a
	add	a, $38
	ld	b, a
	ld	a, $67
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	a, $06
	push	af
	inc	sp
	call	_move_sprite
	add	sp, #3
;player.c:95: move_sprite(7U, 64U + selection*24U, 103U);
	ld	hl, _selection
	ld	a, [hl]
	ld	c, a
	add	a, a
	add	a, c
	add	a, a
	add	a, a
	add	a, a
	add	a, $40
	ld	b, a
	ld	a, $67
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	a, $07
	push	af
	inc	sp
	call	_move_sprite
	add	sp, #3
.l00108:
;player.c:98: if(CLICKED(J_RIGHT)) {
	ld	hl, _joystate
	ld	a, [hl]
	rrca
	jp	NC,.l00114
.l00218:
	ld	hl, _joystate
	ld	c, [hl]
	ld	b, $00
	ld	a, c
	and	a, $01
	ld	c, a
	ld	b, $00
	ld	hl, _oldjoystate
	ld	e, [hl]
	ld	d, $00
	ld	a, e
	and	a, $01
	ld	e, a
	ld	d, $00
	ld	a, c
	sub	a, e
	jr	NZ,.l00219
	ld	a, b
	sub	a, d
	jp	Z,.l00114
.l00219:
;player.c:99: if(selection == 2U) {
	ld	hl, _selection
	ld	a, [hl]
	sub	a, $02
	jr	Z,.l00221
.l00220:
	jr	.l00111
.l00221:
;player.c:100: selection = 0U;
	ld	hl, _selection
	ld	[hl], $00
	jr	.l00112
.l00111:
;player.c:102: selection++;
	ld	hl, _selection
	inc	[hl]
.l00112:
;player.c:104: move_sprite(6U, 56U + selection*24U, 103U);
	ld	hl, _selection
	ld	a, [hl]
	ld	c, a
	add	a, a
	add	a, c
	add	a, a
	add	a, a
	add	a, a
	add	a, $38
	ld	b, a
	ld	a, $67
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	a, $06
	push	af
	inc	sp
	call	_move_sprite
	add	sp, #3
;player.c:105: move_sprite(7U, 64U + selection*24U, 103U);
	ld	hl, _selection
	ld	a, [hl]
	ld	c, a
	add	a, a
	add	a, c
	add	a, a
	add	a, a
	add	a, a
	add	a, $40
	ld	b, a
	ld	a, $67
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	a, $07
	push	af
	inc	sp
	call	_move_sprite
	add	sp, #3
.l00114:
;player.c:108: if(CLICKED(J_A)) {
	ld	hl, _joystate
	ld	a, [hl]
	bit	4, a
	jp	Z,.l00122
.l00222:
	ld	hl, _joystate
	ld	c, [hl]
	ld	b, $00
	ld	a, c
	and	a, $10
	ld	c, a
	ld	b, $00
	ld	hl, _oldjoystate
	ld	e, [hl]
	ld	d, $00
	ld	a, e
	and	a, $10
	ld	e, a
	ld	d, $00
	ld	a, c
	sub	a, e
	jr	NZ,.l00223
	ld	a, b
	sub	a, d
	jr	Z,.l00122
.l00223:
;player.c:109: if(selection == 0U) {
	ld	hl, _selection
	ld	a, [hl]
	or	a, a
	jr	NZ,.l00119
;player.c:110: disable_interrupts();
	call	_disable_interrupts
;player.c:111: mus_init(&song_data);
	ld	hl, _song_data
	push	hl
	call	_mus_init
	add	sp, #2
;player.c:112: enable_interrupts();
	call	_enable_interrupts
;player.c:113: paused = 1U;
	ld	hl, _paused
	ld	[hl], $01
;player.c:114: togglePaused();
	call	_togglePaused
	jr	.l00122
.l00119:
;player.c:116: else if(selection == 1U) {
	ld	hl, _selection
	ld	a, [hl]
	dec	a
	jr	Z,.l00225
.l00224:
	jr	.l00122
.l00225:
;player.c:117: togglePaused();
	call	_togglePaused
.l00122:
;player.c:121: if(ISDOWN(J_A) && selection == 2U) {
	ld	hl, _joystate
	ld	a, [hl]
	bit	4, a
	jr	Z,.l00127
.l00226:
	ld	hl, _selection
	ld	a, [hl]
	sub	a, $02
	jr	Z,.l00228
.l00227:
	jr	.l00127
.l00228:
;player.c:122: disable_interrupts();
	call	_disable_interrupts
;player.c:123: if(paused) {
	ld	hl, _paused
	ld	a, [hl]
	or	a, a
	jr	Z,.l00125
;player.c:124: togglePaused();
	call	_togglePaused
.l00125:
;player.c:126: mus_update();
	call	_mus_update
;player.c:127: enable_interrupts();
	call	_enable_interrupts
.l00127:
;player.c:130: wait_vbl_done();
	call	_wait_vbl_done
	jp	.l00130
.l00132:
;player.c:132: }
	ret
	SECTION "player.c_CODE",CODE
	SECTION "CABS (ABS)",CODE
