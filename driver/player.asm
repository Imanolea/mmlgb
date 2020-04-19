;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (Linux)
;--------------------------------------------------------
	.module player
; 	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _togglePaused
	.globl _mus_update
	.globl _mus_setPaused
	.globl _mus_init
	.globl _move_sprite
	.globl _set_sprite_tile
	.globl _set_sprite_data
	.globl _set_bkg_tiles
	.globl _set_bkg_data
	.globl _display_off
	.globl _wait_vbl_done
	.globl _set_interrupts
	.globl _disable_interrupts
	.globl _enable_interrupts
	.globl _joypad
	.globl _add_TIM
	.globl _paused
	.globl _selection
	.globl _oldjoystate
	.globl _joystate
	.globl _sprites_data
	.globl _background_tiles
	.globl _background_data
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_joystate::
	.ds 1
_oldjoystate::
	.ds 1
_selection::
	.ds 1
_paused::
	.ds 1
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _HOME
	.area _GSINIT
	.area _GSFINAL
	.area _GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
;player.c:15: void togglePaused() {
;	---------------------------------
; Function togglePaused
; ---------------------------------
_togglePaused::
;player.c:16: paused = !paused;
	ld	hl, #_paused
	ld	a, (hl)
	sub	a,#0x01
	ld	a, #0x00
	rla
	ld	(hl), a
;player.c:17: mus_setPaused(paused);
	ld	a, (hl)
	push	af
	inc	sp
	call	_mus_setPaused
	inc	sp
;player.c:18: if(paused) {
	ld	hl, #_paused
	ld	a, (hl)
	or	a, a
	jr	Z,00102$
;player.c:19: set_sprite_tile(2U, 12U);
	ld	a, #0x0c
	push	af
	inc	sp
	ld	a, #0x02
	push	af
	inc	sp
	call	_set_sprite_tile
	add	sp, #2
;player.c:20: set_sprite_tile(3U, 14U);
	ld	a, #0x0e
	push	af
	inc	sp
	ld	a, #0x03
	push	af
	inc	sp
	call	_set_sprite_tile
	add	sp, #2
	ret
00102$:
;player.c:22: set_sprite_tile(2U, 8U);
	ld	a, #0x08
	push	af
	inc	sp
	ld	a, #0x02
	push	af
	inc	sp
	call	_set_sprite_tile
	add	sp, #2
;player.c:23: set_sprite_tile(3U, 10U);
	ld	a, #0x0a
	push	af
	inc	sp
	ld	a, #0x03
	push	af
	inc	sp
	call	_set_sprite_tile
	add	sp, #2
;player.c:25: }
	ret
_background_data:
	.db #0x89	; 137
	.db #0xff	; 255
	.db #0x46	; 70	'F'
	.db #0xff	; 255
	.db #0x40	; 64
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0xff	; 255
	.db #0x01	; 1
	.db #0xff	; 255
	.db #0x02	; 2
	.db #0xff	; 255
	.db #0x62	; 98	'b'
	.db #0xff	; 255
	.db #0x91	; 145
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xf1	; 241
	.db #0x71	; 113	'q'
	.db #0xf1	; 241
	.db #0xf1	; 241
	.db #0xfb	; 251
	.db #0xfb	; 251
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xf5	; 245
	.db #0xf5	; 245
	.db #0xc3	; 195
	.db #0xc3	; 195
	.db #0xe7	; 231
	.db #0xe4	; 228
	.db #0xe7	; 231
	.db #0xe5	; 229
	.db #0xe7	; 231
	.db #0xe7	; 231
	.db #0xe7	; 231
	.db #0xe7	; 231
	.db #0xe7	; 231
	.db #0xe7	; 231
	.db #0xe7	; 231
	.db #0xe7	; 231
	.db #0xe7	; 231
	.db #0xe7	; 231
	.db #0xc1	; 193
	.db #0xc1	; 193
	.db #0xe3	; 227
	.db #0xe3	; 227
	.db #0xe3	; 227
	.db #0xe3	; 227
	.db #0xf7	; 247
	.db #0xf7	; 247
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xeb	; 235
	.db #0xeb	; 235
	.db #0x87	; 135
	.db #0x87	; 135
	.db #0xcf	; 207
	.db #0xc9	; 201
	.db #0xcf	; 207
	.db #0xcb	; 203
	.db #0xcf	; 207
	.db #0xcf	; 207
	.db #0xcf	; 207
	.db #0xcf	; 207
	.db #0xcf	; 207
	.db #0xcf	; 207
	.db #0xcf	; 207
	.db #0xcf	; 207
	.db #0xcf	; 207
	.db #0xcf	; 207
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x3f	; 63
	.db #0x0f	; 15
	.db #0x7f	; 127
	.db #0x5f	; 95
	.db #0x7e	; 126
	.db #0x7e	; 126
	.db #0x7e	; 126
	.db #0x7e	; 126
	.db #0x7e	; 126
	.db #0x7e	; 126
	.db #0x7e	; 126
	.db #0x7e	; 126
	.db #0x7e	; 126
	.db #0x7e	; 126
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf9	; 249
	.db #0xf9	; 249
	.db #0xf1	; 241
	.db #0xf1	; 241
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x71	; 113	'q'
	.db #0x71	; 113	'q'
	.db #0xf9	; 249
	.db #0xf9	; 249
	.db #0x79	; 121	'y'
	.db #0x79	; 121	'y'
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x3f	; 63
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf1	; 241
	.db #0xf1	; 241
	.db #0xf1	; 241
	.db #0xf1	; 241
	.db #0xf1	; 241
	.db #0xf1	; 241
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe7	; 231
	.db #0xe7	; 231
	.db #0xe7	; 231
	.db #0xe7	; 231
	.db #0xe7	; 231
	.db #0xe7	; 231
	.db #0xc3	; 195
	.db #0xc3	; 195
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe3	; 227
	.db #0xe3	; 227
	.db #0xe3	; 227
	.db #0xe3	; 227
	.db #0xe3	; 227
	.db #0xe3	; 227
	.db #0xc1	; 193
	.db #0xc1	; 193
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xcf	; 207
	.db #0xcf	; 207
	.db #0xcf	; 207
	.db #0xcf	; 207
	.db #0xcf	; 207
	.db #0xcf	; 207
	.db #0x87	; 135
	.db #0x87	; 135
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xfc	; 252
	.db #0xfc	; 252
	.db #0xfe	; 254
	.db #0xfe	; 254
	.db #0xfe	; 254
	.db #0xfe	; 254
	.db #0xfc	; 252
	.db #0xfc	; 252
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf9	; 249
	.db #0xf9	; 249
	.db #0xf9	; 249
	.db #0xf9	; 249
	.db #0xf1	; 241
	.db #0xf1	; 241
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x09	; 9
	.db #0x0f	; 15
	.db #0x1e	; 30
	.db #0x11	; 17
	.db #0x30	; 48	'0'
	.db #0x21	; 33
	.db #0x33	; 51	'3'
	.db #0x27	; 39
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x70	; 112	'p'
	.db #0x70	; 112	'p'
	.db #0x88	; 136
	.db #0xf8	; 248
	.db #0x24	; 36
	.db #0xbc	; 188
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x6c	; 108	'l'
	.db #0xf0	; 240
	.db #0xbf	; 191
	.db #0xc0	; 192
	.db #0x7f	; 127
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x0f	; 15
	.db #0x16	; 22
	.db #0x1a	; 26
	.db #0xfe	; 254
	.db #0xfe	; 254
	.db #0x2b	; 43
	.db #0x47	; 71	'G'
	.db #0x9e	; 158
	.db #0x01	; 1
	.db #0xdf	; 223
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x70	; 112	'p'
	.db #0xf0	; 240
	.db #0x48	; 72	'H'
	.db #0x78	; 120	'x'
	.db #0x04	; 4
	.db #0xc4	; 196
	.db #0x82	; 130
	.db #0xc6	; 198
	.db #0x62	; 98	'b'
	.db #0xf2	; 242
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x2c	; 44
	.db #0x24	; 36
	.db #0x3d	; 61
	.db #0x23	; 35
	.db #0x1b	; 27
	.db #0x16	; 22
	.db #0x12	; 18
	.db #0x1e	; 30
	.db #0x2e	; 46
	.db #0x3c	; 60
	.db #0x57	; 87	'W'
	.db #0x64	; 100	'd'
	.db #0x4b	; 75	'K'
	.db #0x64	; 100	'd'
	.db #0x5b	; 91
	.db #0x64	; 100	'd'
	.db #0x55	; 85	'U'
	.db #0x6a	; 106	'j'
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x2f	; 47
	.db #0x00	; 0
	.db #0xd3	; 211
	.db #0x20	; 32
	.db #0xdc	; 220
	.db #0x20	; 32
	.db #0xa7	; 167
	.db #0x58	; 88	'X'
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xdf	; 223
	.db #0x20	; 32
	.db #0xde	; 222
	.db #0x20	; 32
	.db #0x21	; 33
	.db #0x10	; 16
	.db #0xdf	; 223
	.db #0x30	; 48	'0'
	.db #0xce	; 206
	.db #0x62	; 98	'b'
	.db #0xac	; 172
	.db #0x74	; 116	't'
	.db #0xe4	; 228
	.db #0x3c	; 60
	.db #0xda	; 218
	.db #0x3e	; 62
	.db #0x8d	; 141
	.db #0x2b	; 43
	.db #0x41	; 65	'A'
	.db #0x2b	; 43
	.db #0x95	; 149
	.db #0x6b	; 107	'k'
	.db #0xb5	; 181
	.db #0x63	; 99	'c'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0c	; 12
	.db #0x0c	; 12
	.db #0x16	; 22
	.db #0x12	; 18
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x2c	; 44
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x96	; 150
	.db #0x92	; 146
	.db #0x56	; 86	'V'
	.db #0x52	; 82	'R'
	.db #0x3b	; 59
	.db #0x37	; 55	'7'
	.db #0x81	; 129
	.db #0x18	; 24
	.db #0xa0	; 160
	.db #0xd0	; 208
	.db #0x92	; 146
	.db #0x8e	; 142
	.db #0x25	; 37
	.db #0x32	; 50	'2'
	.db #0x16	; 22
	.db #0x1b	; 27
	.db #0x0e	; 14
	.db #0x0f	; 15
	.db #0x1f	; 31
	.db #0x1a	; 26
	.db #0x2a	; 42
	.db #0x3b	; 59
	.db #0x97	; 151
	.db #0x9f	; 159
	.db #0x9d	; 157
	.db #0x95	; 149
	.db #0x08	; 8
	.db #0x88	; 136
	.db #0x6a	; 106	'j'
	.db #0xc7	; 199
	.db #0x43	; 67	'C'
	.db #0xc1	; 193
	.db #0xd8	; 216
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x88	; 136
	.db #0x18	; 24
	.db #0x98	; 152
	.db #0xb8	; 184
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0xa2	; 162
	.db #0xc2	; 194
	.db #0xcb	; 203
	.db #0x3c	; 60
	.db #0x16	; 22
	.db #0xf3	; 243
	.db #0xff	; 255
	.db #0x6d	; 109	'm'
	.db #0x0d	; 13
	.db #0x04	; 4
	.db #0x0c	; 12
	.db #0x0c	; 12
	.db #0x0e	; 14
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x22	; 34
	.db #0x21	; 33
	.db #0x42	; 66	'B'
	.db #0xd6	; 214
	.db #0x74	; 116	't'
	.db #0xcc	; 204
	.db #0x98	; 152
	.db #0xb8	; 184
	.db #0x7c	; 124
	.db #0xac	; 172
	.db #0x2a	; 42
	.db #0xee	; 238
	.db #0xf4	; 244
	.db #0x7c	; 124
	.db #0x5c	; 92
	.db #0xd4	; 212
	.db #0x88	; 136
	.db #0x88	; 136
	.db #0x16	; 22
	.db #0x12	; 18
	.db #0x16	; 22
	.db #0x12	; 18
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x2d	; 45
	.db #0x25	; 37
	.db #0x6e	; 110	'n'
	.db #0x76	; 118	'v'
	.db #0xc0	; 192
	.db #0x8c	; 140
	.db #0x82	; 130
	.db #0x85	; 133
	.db #0x24	; 36
	.db #0xb8	; 184
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x60	; 96
	.db #0x60	; 96
	.db #0xb0	; 176
	.db #0x90	; 144
	.db #0x30	; 48	'0'
	.db #0x10	; 16
	.db #0x60	; 96
	.db #0x20	; 32
	.db #0xc0	; 192
	.db #0x40	; 64
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0xaf	; 175
	.db #0xd8	; 216
	.db #0x44	; 68	'D'
	.db #0x49	; 73	'I'
	.db #0x30	; 48	'0'
	.db #0x3e	; 62
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x71	; 113	'q'
	.db #0x61	; 97	'a'
	.db #0x1c	; 28
	.db #0x18	; 24
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xc7	; 199
	.db #0xc3	; 195
	.db #0x1c	; 28
	.db #0x0c	; 12
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7a	; 122	'z'
	.db #0x8d	; 141
	.db #0x11	; 17
	.db #0x49	; 73	'I'
	.db #0x06	; 6
	.db #0x3e	; 62
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
_background_tiles:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x05	; 5
	.db #0x06	; 6
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x09	; 9
	.db #0x0a	; 10
	.db #0x0b	; 11
	.db #0x0c	; 12
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x0d	; 13
	.db #0x0e	; 14
	.db #0x0f	; 15
	.db #0x10	; 16
	.db #0x11	; 17
	.db #0x12	; 18
	.db #0x13	; 19
	.db #0x14	; 20
	.db #0x15	; 21
	.db #0x16	; 22
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x17	; 23
	.db #0x18	; 24
	.db #0x19	; 25
	.db #0x1a	; 26
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x1b	; 27
	.db #0x1c	; 28
	.db #0x1d	; 29
	.db #0x1e	; 30
	.db #0x1f	; 31
	.db #0x20	; 32
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x21	; 33
	.db #0x22	; 34
	.db #0x23	; 35
	.db #0x24	; 36
	.db #0x25	; 37
	.db #0x26	; 38
	.db #0x27	; 39
	.db #0x28	; 40
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x29	; 41
	.db #0x2a	; 42
	.db #0x2b	; 43
	.db #0x2c	; 44
	.db #0x02	; 2
	.db #0x2d	; 45
	.db #0x2e	; 46
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x2f	; 47
	.db #0x2f	; 47
	.db #0x2f	; 47
	.db #0x2f	; 47
	.db #0x2f	; 47
	.db #0x2f	; 47
	.db #0x2f	; 47
	.db #0x2f	; 47
	.db #0x2f	; 47
	.db #0x2f	; 47
	.db #0x2f	; 47
	.db #0x2f	; 47
	.db #0x2f	; 47
	.db #0x2f	; 47
	.db #0x2f	; 47
	.db #0x2f	; 47
	.db #0x2f	; 47
	.db #0x2f	; 47
	.db #0x2f	; 47
	.db #0x2f	; 47
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_sprites_data:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x08	; 8
	.db #0x9c	; 156
	.db #0x1c	; 28
	.db #0x9c	; 156
	.db #0x1c	; 28
	.db #0x9c	; 156
	.db #0x1c	; 28
	.db #0x9c	; 156
	.db #0x1d	; 29
	.db #0x9d	; 157
	.db #0x1d	; 29
	.db #0x9d	; 157
	.db #0x1c	; 28
	.db #0x9c	; 156
	.db #0x1c	; 28
	.db #0x9c	; 156
	.db #0x1c	; 28
	.db #0x9c	; 156
	.db #0x08	; 8
	.db #0x9c	; 156
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x09	; 9
	.db #0x19	; 25
	.db #0x19	; 25
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x79	; 121	'y'
	.db #0x79	; 121	'y'
	.db #0xf9	; 249
	.db #0xf9	; 249
	.db #0xf9	; 249
	.db #0xf9	; 249
	.db #0xf9	; 249
	.db #0x79	; 121	'y'
	.db #0xf9	; 249
	.db #0x39	; 57	'9'
	.db #0x79	; 121	'y'
	.db #0x19	; 25
	.db #0x39	; 57	'9'
	.db #0x09	; 9
	.db #0x19	; 25
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0xfe	; 254
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x04	; 4
	.db #0x8e	; 142
	.db #0x0e	; 14
	.db #0x8e	; 142
	.db #0x0e	; 14
	.db #0x8e	; 142
	.db #0x0e	; 14
	.db #0x8e	; 142
	.db #0x0e	; 14
	.db #0x8e	; 142
	.db #0x0e	; 14
	.db #0x8e	; 142
	.db #0x0e	; 14
	.db #0x8e	; 142
	.db #0x0e	; 14
	.db #0x8e	; 142
	.db #0x0e	; 14
	.db #0x8e	; 142
	.db #0x04	; 4
	.db #0x8e	; 142
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x21	; 33
	.db #0x71	; 113	'q'
	.db #0x71	; 113	'q'
	.db #0x71	; 113	'q'
	.db #0x71	; 113	'q'
	.db #0x71	; 113	'q'
	.db #0x71	; 113	'q'
	.db #0x71	; 113	'q'
	.db #0x71	; 113	'q'
	.db #0x71	; 113	'q'
	.db #0x71	; 113	'q'
	.db #0x71	; 113	'q'
	.db #0x71	; 113	'q'
	.db #0x71	; 113	'q'
	.db #0x71	; 113	'q'
	.db #0x71	; 113	'q'
	.db #0x71	; 113	'q'
	.db #0x71	; 113	'q'
	.db #0x21	; 33
	.db #0x71	; 113	'q'
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0xfe	; 254
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x02	; 2
	.db #0x83	; 131
	.db #0x03	; 3
	.db #0x83	; 131
	.db #0x03	; 3
	.db #0x83	; 131
	.db #0x03	; 3
	.db #0x83	; 131
	.db #0x03	; 3
	.db #0x83	; 131
	.db #0x03	; 3
	.db #0x83	; 131
	.db #0x03	; 3
	.db #0x83	; 131
	.db #0x03	; 3
	.db #0x83	; 131
	.db #0x03	; 3
	.db #0x83	; 131
	.db #0x02	; 2
	.db #0x83	; 131
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0xc1	; 193
	.db #0xc1	; 193
	.db #0xe1	; 225
	.db #0xf1	; 241
	.db #0xf1	; 241
	.db #0xf1	; 241
	.db #0xf1	; 241
	.db #0xc1	; 193
	.db #0xe1	; 225
	.db #0x81	; 129
	.db #0xc1	; 193
	.db #0x01	; 1
	.db #0x81	; 129
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0xfe	; 254
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x10	; 16
	.db #0x98	; 152
	.db #0x18	; 24
	.db #0x9c	; 156
	.db #0x1c	; 28
	.db #0x9e	; 158
	.db #0x1e	; 30
	.db #0x9f	; 159
	.db #0x1f	; 31
	.db #0x9f	; 159
	.db #0x1f	; 31
	.db #0x9f	; 159
	.db #0x1e	; 30
	.db #0x9f	; 159
	.db #0x1c	; 28
	.db #0x9e	; 158
	.db #0x18	; 24
	.db #0x9c	; 156
	.db #0x10	; 16
	.db #0x98	; 152
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x81	; 129
	.db #0xc1	; 193
	.db #0xc1	; 193
	.db #0xe1	; 225
	.db #0xe1	; 225
	.db #0xf1	; 241
	.db #0xf1	; 241
	.db #0xf9	; 249
	.db #0xfd	; 253
	.db #0xfd	; 253
	.db #0xfd	; 253
	.db #0xfd	; 253
	.db #0xf1	; 241
	.db #0xf9	; 249
	.db #0xe1	; 225
	.db #0xf1	; 241
	.db #0xc1	; 193
	.db #0xe1	; 225
	.db #0x81	; 129
	.db #0xc1	; 193
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0xfe	; 254
	.db #0xfe	; 254
;player.c:27: void main() {
;	---------------------------------
; Function main
; ---------------------------------
_main::
;player.c:28: disable_interrupts();
	call	_disable_interrupts
;player.c:30: DISPLAY_OFF;
	call	_display_off
; ;player.c:32: selection = 0U;
; 	ld	hl, #_selection
; 	ld	(hl), #0x00
; ;player.c:33: paused = 0U;
; 	ld	hl, #_paused
; 	ld	(hl), #0x00
; ;player.c:36: mus_init(&song_data);
	ld	hl, #_song_data
	push	hl
	call	_mus_init
	add	sp, #2
;player.c:37: add_TIM(mus_update);
	ld	hl, #_mus_update
	push	hl
	call	_add_TIM
	add	sp, #2
; ;player.c:40: set_bkg_data(0U, background_data_length, background_data);
; 	ld	hl, #_background_data
; 	push	hl
; 	ld	a, #0x30
; 	push	af
; 	inc	sp
; 	xor	a, a
; 	push	af
; 	inc	sp
; 	call	_set_bkg_data
; 	add	sp, #4
; ;player.c:41: set_bkg_tiles(0U, 0U, background_tiles_width, background_tiles_height, background_tiles);
; 	ld	hl, #_background_tiles
; 	push	hl
; 	ld	a, #0x12
; 	push	af
; 	inc	sp
; 	ld	a, #0x14
; 	push	af
; 	inc	sp
; 	xor	a, a
; 	push	af
; 	inc	sp
; 	xor	a, a
; 	push	af
; 	inc	sp
; 	call	_set_bkg_tiles
; 	add	sp, #6
; ;player.c:43: set_sprite_data(0U, sprites_data_length, sprites_data);
; 	ld	hl, #_sprites_data
; 	push	hl
; 	ld	a, #0x14
; 	push	af
; 	inc	sp
; 	xor	a, a
; 	push	af
; 	inc	sp
; 	call	_set_sprite_data
; 	add	sp, #4
; ;player.c:45: set_sprite_tile(0U, 4U);
; 	ld	a, #0x04
; 	push	af
; 	inc	sp
; 	xor	a, a
; 	push	af
; 	inc	sp
; 	call	_set_sprite_tile
; 	add	sp, #2
; ;player.c:46: set_sprite_tile(1U, 6U);
; 	ld	a, #0x06
; 	push	af
; 	inc	sp
; 	ld	a, #0x01
; 	push	af
; 	inc	sp
; 	call	_set_sprite_tile
; 	add	sp, #2
; ;player.c:48: set_sprite_tile(2U, 8U);
; 	ld	a, #0x08
; 	push	af
; 	inc	sp
; 	ld	a, #0x02
; 	push	af
; 	inc	sp
; 	call	_set_sprite_tile
; 	add	sp, #2
; ;player.c:49: set_sprite_tile(3U, 10U);
; 	ld	a, #0x0a
; 	push	af
; 	inc	sp
; 	ld	a, #0x03
; 	push	af
; 	inc	sp
; 	call	_set_sprite_tile
; 	add	sp, #2
; ;player.c:51: set_sprite_tile(4U, 16U);
; 	ld	a, #0x10
; 	push	af
; 	inc	sp
; 	ld	a, #0x04
; 	push	af
; 	inc	sp
; 	call	_set_sprite_tile
; 	add	sp, #2
; ;player.c:52: set_sprite_tile(5U, 18U);
; 	ld	a, #0x12
; 	push	af
; 	inc	sp
; 	ld	a, #0x05
; 	push	af
; 	inc	sp
; 	call	_set_sprite_tile
; 	add	sp, #2
; ;player.c:54: set_sprite_tile(6U, 0U);
; 	xor	a, a
; 	push	af
; 	inc	sp
; 	ld	a, #0x06
; 	push	af
; 	inc	sp
; 	call	_set_sprite_tile
; 	add	sp, #2
; ;player.c:55: set_sprite_tile(7U, 2U);
; 	ld	a, #0x02
; 	push	af
; 	inc	sp
; 	ld	a, #0x07
; 	push	af
; 	inc	sp
; 	call	_set_sprite_tile
; 	add	sp, #2
; ;player.c:57: move_sprite(0U, 56U, 104U);
; 	ld	a, #0x68
; 	push	af
; 	inc	sp
; 	ld	a, #0x38
; 	push	af
; 	inc	sp
; 	xor	a, a
; 	push	af
; 	inc	sp
; 	call	_move_sprite
; 	add	sp, #3
; ;player.c:58: move_sprite(1U, 64U, 104U);
; 	ld	a, #0x68
; 	push	af
; 	inc	sp
; 	ld	a, #0x40
; 	push	af
; 	inc	sp
; 	ld	a, #0x01
; 	push	af
; 	inc	sp
; 	call	_move_sprite
; 	add	sp, #3
; ;player.c:60: move_sprite(2U, 80U, 104U);
; 	ld	a, #0x68
; 	push	af
; 	inc	sp
; 	ld	a, #0x50
; 	push	af
; 	inc	sp
; 	ld	a, #0x02
; 	push	af
; 	inc	sp
; 	call	_move_sprite
; 	add	sp, #3
; ;player.c:61: move_sprite(3U, 88U, 104U);
; 	ld	a, #0x68
; 	push	af
; 	inc	sp
; 	ld	a, #0x58
; 	push	af
; 	inc	sp
; 	ld	a, #0x03
; 	push	af
; 	inc	sp
; 	call	_move_sprite
; 	add	sp, #3
; ;player.c:63: move_sprite(4U, 104U, 104U);
; 	ld	a, #0x68
; 	push	af
; 	inc	sp
; 	ld	a, #0x68
; 	push	af
; 	inc	sp
; 	ld	a, #0x04
; 	push	af
; 	inc	sp
; 	call	_move_sprite
; 	add	sp, #3
; ;player.c:64: move_sprite(5U, 112U, 104U);
; 	ld	a, #0x68
; 	push	af
; 	inc	sp
; 	ld	a, #0x70
; 	push	af
; 	inc	sp
; 	ld	a, #0x05
; 	push	af
; 	inc	sp
; 	call	_move_sprite
; 	add	sp, #3
; ;player.c:66: move_sprite(6U, 56U, 103U);
; 	ld	a, #0x67
; 	push	af
; 	inc	sp
; 	ld	a, #0x38
; 	push	af
; 	inc	sp
; 	ld	a, #0x06
; 	push	af
; 	inc	sp
; 	call	_move_sprite
; 	add	sp, #3
; ;player.c:67: move_sprite(7U, 64U, 103U);
; 	ld	a, #0x67
; 	push	af
; 	inc	sp
; 	ld	a, #0x40
; 	push	af
; 	inc	sp
; 	ld	a, #0x07
; 	push	af
; 	inc	sp
; 	call	_move_sprite
; 	add	sp, #3
;player.c:69: SHOW_BKG;
	ld	de, #0xff40
	ld	a,(de)
	ld	c, a
	ld	b, #0x00
	set	0, c
	ld	hl, #0xff40
	ld	(hl), c
;player.c:70: SPRITES_8x16;
	ld	de, #0xff40
	ld	a,(de)
	ld	c, a
	ld	b, #0x00
	set	2, c
	ld	l, #0x40
	ld	(hl), c
;player.c:71: SHOW_SPRITES;
	ld	de, #0xff40
	ld	a,(de)
	ld	c, a
	ld	b, #0x00
	set	1, c
	ld	l, #0x40
	ld	(hl), c
;player.c:72: HIDE_WIN;
	ld	de, #0xff40
	ld	a,(de)
	res	5, a
	ld	l, #0x40
	ld	(hl), a
;player.c:73: DISPLAY_ON;
	ld	de, #0xff40
	ld	a,(de)
	ld	c, a
	ld	b, #0x00
	set	7, c
	ld	l, #0x40
	ld	(hl), c
;player.c:75: enable_interrupts();
	call	_enable_interrupts
;player.c:76: set_interrupts(TIM_IFLAG | VBL_IFLAG);
	ld	a, #0x05
	push	af
	inc	sp
	call	_set_interrupts
	inc	sp
; ;player.c:78: joystate = oldjoystate = 0U;
; 	ld	hl, #_oldjoystate
; 	ld	(hl), #0x00
; 	ld	hl, #_joystate
; 	ld	(hl), #0x00
;player.c:80: while(1U) {
00130$:
; ;player.c:81: oldjoystate = joystate;
; 	push	hl
; 	ld	hl, #_joystate
; 	ld	a, (hl)
; 	ld	hl, #_oldjoystate
; 	ld	(hl), a
; 	pop	hl
; ;player.c:82: joystate = joypad();
; 	call	_joypad
; 	ld	hl, #_joystate
; 	ld	(hl), e
; ;player.c:84: if(CLICKED(J_START)) {
; 	ld	a, (hl)
; 	rlca
; 	jr	NC,00102$
; 	ld	hl, #_joystate
; 	ld	c, (hl)
; 	ld	b, #0x00
; 	ld	a, c
; 	and	a, #0x80
; 	ld	c, a
; 	ld	b, #0x00
; 	ld	hl, #_oldjoystate
; 	ld	e, (hl)
; 	ld	d, #0x00
; 	ld	a, e
; 	and	a, #0x80
; 	ld	e, a
; 	ld	d, #0x00
; 	ld	a, c
; 	sub	a, e
; 	jr	NZ,00215$
; 	ld	a, b
; 	sub	a, d
; 	jr	Z,00102$
; 00215$:
; ;player.c:85: togglePaused();
; 	call	_togglePaused
; 00102$:
; ;player.c:88: if(CLICKED(J_LEFT)) {
; 	ld	hl, #_joystate
; 	ld	a, (hl)
; 	bit	1, a
; 	jp	Z,00108$
; 	ld	hl, #_joystate
; 	ld	c, (hl)
; 	ld	b, #0x00
; 	ld	a, c
; 	and	a, #0x02
; 	ld	c, a
; 	ld	b, #0x00
; 	ld	hl, #_oldjoystate
; 	ld	e, (hl)
; 	ld	d, #0x00
; 	ld	a, e
; 	and	a, #0x02
; 	ld	e, a
; 	ld	d, #0x00
; 	ld	a, c
; 	sub	a, e
; 	jr	NZ,00217$
; 	ld	a, b
; 	sub	a, d
; 	jp	Z,00108$
; 00217$:
; ;player.c:89: if(selection == 0U) {
; 	ld	hl, #_selection
; 	ld	a, (hl)
; 	or	a, a
; 	jr	NZ,00105$
; ;player.c:90: selection = 2U;
; 	ld	(hl), #0x02
; 	jr	00106$
; 00105$:
; ;player.c:92: selection--;
; 	ld	hl, #_selection
; 	dec	(hl)
; 00106$:
; ;player.c:94: move_sprite(6U, 56U + selection*24U, 103U);
; 	ld	hl, #_selection
; 	ld	a, (hl)
; 	ld	c, a
; 	add	a, a
; 	add	a, c
; 	add	a, a
; 	add	a, a
; 	add	a, a
; 	add	a, #0x38
; 	ld	b, a
; 	ld	a, #0x67
; 	push	af
; 	inc	sp
; 	push	bc
; 	inc	sp
; 	ld	a, #0x06
; 	push	af
; 	inc	sp
; 	call	_move_sprite
; 	add	sp, #3
; ;player.c:95: move_sprite(7U, 64U + selection*24U, 103U);
; 	ld	hl, #_selection
; 	ld	a, (hl)
; 	ld	c, a
; 	add	a, a
; 	add	a, c
; 	add	a, a
; 	add	a, a
; 	add	a, a
; 	add	a, #0x40
; 	ld	b, a
; 	ld	a, #0x67
; 	push	af
; 	inc	sp
; 	push	bc
; 	inc	sp
; 	ld	a, #0x07
; 	push	af
; 	inc	sp
; 	call	_move_sprite
; 	add	sp, #3
; 00108$:
; ;player.c:98: if(CLICKED(J_RIGHT)) {
; 	ld	hl, #_joystate
; 	ld	a, (hl)
; 	rrca
; 	jp	NC,00114$
; 	ld	hl, #_joystate
; 	ld	c, (hl)
; 	ld	b, #0x00
; 	ld	a, c
; 	and	a, #0x01
; 	ld	c, a
; 	ld	b, #0x00
; 	ld	hl, #_oldjoystate
; 	ld	e, (hl)
; 	ld	d, #0x00
; 	ld	a, e
; 	and	a, #0x01
; 	ld	e, a
; 	ld	d, #0x00
; 	ld	a, c
; 	sub	a, e
; 	jr	NZ,00219$
; 	ld	a, b
; 	sub	a, d
; 	jp	Z,00114$
; 00219$:
; ;player.c:99: if(selection == 2U) {
; 	ld	hl, #_selection
; 	ld	a, (hl)
; 	sub	a, #0x02
; 	jr	NZ,00111$
; ;player.c:100: selection = 0U;
; 	ld	hl, #_selection
; 	ld	(hl), #0x00
; 	jr	00112$
; 00111$:
; ;player.c:102: selection++;
; 	ld	hl, #_selection
; 	inc	(hl)
; 00112$:
; ;player.c:104: move_sprite(6U, 56U + selection*24U, 103U);
; 	ld	hl, #_selection
; 	ld	a, (hl)
; 	ld	c, a
; 	add	a, a
; 	add	a, c
; 	add	a, a
; 	add	a, a
; 	add	a, a
; 	add	a, #0x38
; 	ld	b, a
; 	ld	a, #0x67
; 	push	af
; 	inc	sp
; 	push	bc
; 	inc	sp
; 	ld	a, #0x06
; 	push	af
; 	inc	sp
; 	call	_move_sprite
; 	add	sp, #3
; ;player.c:105: move_sprite(7U, 64U + selection*24U, 103U);
; 	ld	hl, #_selection
; 	ld	a, (hl)
; 	ld	c, a
; 	add	a, a
; 	add	a, c
; 	add	a, a
; 	add	a, a
; 	add	a, a
; 	add	a, #0x40
; 	ld	b, a
; 	ld	a, #0x67
; 	push	af
; 	inc	sp
; 	push	bc
; 	inc	sp
; 	ld	a, #0x07
; 	push	af
; 	inc	sp
; 	call	_move_sprite
; 	add	sp, #3
; 00114$:
; ;player.c:108: if(CLICKED(J_A)) {
; 	ld	hl, #_joystate
; 	ld	a, (hl)
; 	bit	4, a
; 	jp	Z,00122$
; 	ld	hl, #_joystate
; 	ld	c, (hl)
; 	ld	b, #0x00
; 	ld	a, c
; 	and	a, #0x10
; 	ld	c, a
; 	ld	b, #0x00
; 	ld	hl, #_oldjoystate
; 	ld	e, (hl)
; 	ld	d, #0x00
; 	ld	a, e
; 	and	a, #0x10
; 	ld	e, a
; 	ld	d, #0x00
; 	ld	a, c
; 	sub	a, e
; 	jr	NZ,00223$
; 	ld	a, b
; 	sub	a, d
; 	jr	Z,00122$
; 00223$:
; ;player.c:109: if(selection == 0U) {
; 	ld	hl, #_selection
; 	ld	a, (hl)
; 	or	a, a
; 	jr	NZ,00119$
; ;player.c:110: disable_interrupts();
; 	call	_disable_interrupts
; ;player.c:111: mus_init(&song_data);
; 	ld	hl, #_song_data
; 	push	hl
; 	call	_mus_init
; 	add	sp, #2
; ;player.c:112: enable_interrupts();
; 	call	_enable_interrupts
; ;player.c:113: paused = 1U;
; 	ld	hl, #_paused
; 	ld	(hl), #0x01
; ;player.c:114: togglePaused();
; 	call	_togglePaused
; 	jr	00122$
; 00119$:
; ;player.c:116: else if(selection == 1U) {
; 	ld	hl, #_selection
; 	ld	a, (hl)
; 	dec	a
; 	jr	NZ,00122$
; ;player.c:117: togglePaused();
; 	call	_togglePaused
; 00122$:
; ;player.c:121: if(ISDOWN(J_A) && selection == 2U) {
; 	ld	hl, #_joystate
; 	ld	a, (hl)
; 	bit	4, a
; 	jr	Z,00127$
; 	ld	hl, #_selection
; 	ld	a, (hl)
; 	sub	a, #0x02
; 	jr	NZ,00127$
; ;player.c:122: disable_interrupts();
; 	call	_disable_interrupts
; ;player.c:123: if(paused) {
; 	ld	hl, #_paused
; 	ld	a, (hl)
; 	or	a, a
; 	jr	Z,00125$
; ;player.c:124: togglePaused();
; 	call	_togglePaused
00125$:
; ;player.c:126: mus_update();
; 	call	_mus_update
; ;player.c:127: enable_interrupts();
; 	call	_enable_interrupts
00127$:
;player.c:130: wait_vbl_done();
	call	_wait_vbl_done
	jp	00130$
;player.c:132: }
	ret
	.area _CODE
