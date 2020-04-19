;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 10562 (Linux)
;--------------------------------------------------------
; 	; MODULE music
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
; 	GLOBAL _memcpy
; 	GLOBAL _mus_rep_depth4
; 	GLOBAL _mus_rep_depth3
; 	GLOBAL _mus_rep_depth2
; 	GLOBAL _mus_rep_depth1
; 	GLOBAL _mus_repeats4
; 	GLOBAL _mus_repeats3
; 	GLOBAL _mus_repeats2
; 	GLOBAL _mus_repeats1
; 	GLOBAL _mus_rep4
; 	GLOBAL _mus_rep3
; 	GLOBAL _mus_rep2
; 	GLOBAL _mus_rep1
; 	GLOBAL _mus_macro4
; 	GLOBAL _mus_macro3
; 	GLOBAL _mus_macro2
; 	GLOBAL _mus_macro1
; 	GLOBAL _mus_po3
; 	GLOBAL _mus_po2
; 	GLOBAL _mus_po1
; 	GLOBAL _mus_noise_step
; 	GLOBAL _mus_vib_delay2
; 	GLOBAL _mus_vib_delay1
; 	GLOBAL _mus_vib_pos2
; 	GLOBAL _mus_vib_pos1
; 	GLOBAL _mus_vib_table2
; 	GLOBAL _mus_vib_table1
; 	GLOBAL _mus_vib_speed2
; 	GLOBAL _mus_vib_speed1
; 	GLOBAL _mus_porta4
; 	GLOBAL _mus_porta2
; 	GLOBAL _mus_porta1
; 	GLOBAL _mus_slide4
; 	GLOBAL _mus_slide2
; 	GLOBAL _mus_slide1
; 	GLOBAL _mus_target4
; 	GLOBAL _mus_target2
; 	GLOBAL _mus_target1
; 	GLOBAL _mus_wait4
; 	GLOBAL _mus_wait3
; 	GLOBAL _mus_wait2
; 	GLOBAL _mus_wait1
; 	GLOBAL _mus_duty2
; 	GLOBAL _mus_duty1
; 	GLOBAL _mus_pan4
; 	GLOBAL _mus_pan3
; 	GLOBAL _mus_pan2
; 	GLOBAL _mus_pan1
; 	GLOBAL _mus_env4
; 	GLOBAL _mus_env2
; 	GLOBAL _mus_env1
; 	GLOBAL _mus_volume4
; 	GLOBAL _mus_volume3
; 	GLOBAL _mus_volume2
; 	GLOBAL _mus_volume1
; 	GLOBAL _mus_length4
; 	GLOBAL _mus_length3
; 	GLOBAL _mus_length2
; 	GLOBAL _mus_length1
; 	GLOBAL _mus_octave4
; 	GLOBAL _mus_octave3
; 	GLOBAL _mus_octave2
; 	GLOBAL _mus_octave1
; 	GLOBAL _mus_loop4
; 	GLOBAL _mus_loop3
; 	GLOBAL _mus_loop2
; 	GLOBAL _mus_loop1
; 	GLOBAL _mus_wave
; 	GLOBAL _mus_data4_bak
; 	GLOBAL _mus_data3_bak
; 	GLOBAL _mus_data2_bak
; 	GLOBAL _mus_data1_bak
; 	GLOBAL _mus_data4
; 	GLOBAL _mus_data3
; 	GLOBAL _mus_data2
; 	GLOBAL _mus_data1
; 	GLOBAL _mus_freq4
; 	GLOBAL _mus_freq3
; 	GLOBAL _mus_freq2
; 	GLOBAL _mus_freq1
; 	GLOBAL _mus_done4
; 	GLOBAL _mus_done3
; 	GLOBAL _mus_done2
; 	GLOBAL _mus_done1
; 	GLOBAL _mus_enabled4
; 	GLOBAL _mus_enabled1
; 	GLOBAL _mus_song
; 	GLOBAL _mus_step
; 	GLOBAL _mus_paused
; 	GLOBAL _mus_init
; 	GLOBAL _mus_setPaused
; 	GLOBAL _mus_togglePaused
; 	GLOBAL _mus_disable1
; 	GLOBAL _mus_disable4
; 	GLOBAL _mus_restore1
; 	GLOBAL _mus_restore4
; 	GLOBAL _mus_is_done
; 	GLOBAL _mus_update
; 	GLOBAL _mus_update1
; 	GLOBAL _mus_update2
; 	GLOBAL _mus_update3
; 	GLOBAL _mus_update4
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	; SECTION "music.c_DATA",WRAM0
; _mus_paused:
; 	DS 1
; _mus_step:
; 	DS 1
; _mus_song:
; 	DS 2
; _mus_enabled1:
; 	DS 1
; _mus_enabled4:
; 	DS 1
; _mus_done1:
; 	DS 1
; _mus_done2:
; 	DS 1
; _mus_done3:
; 	DS 1
; _mus_done4:
; 	DS 1
; _mus_freq1:
; 	DS 2
; _mus_freq2:
; 	DS 2
; _mus_freq3:
; 	DS 2
; _mus_freq4:
; 	DS 1
; _mus_data1:
; 	DS 2
; _mus_data2:
; 	DS 2
; _mus_data3:
; 	DS 2
; _mus_data4:
; 	DS 2
; _mus_data1_bak:
; 	DS 2
; _mus_data2_bak:
; 	DS 2
; _mus_data3_bak:
; 	DS 2
; _mus_data4_bak:
; 	DS 2
; _mus_wave:
; 	DS 2
; _mus_loop1:
; 	DS 2
; _mus_loop2:
; 	DS 2
; _mus_loop3:
; 	DS 2
; _mus_loop4:
; 	DS 2
; _mus_octave1:
; 	DS 1
; _mus_octave2:
; 	DS 1
; _mus_octave3:
; 	DS 1
; _mus_octave4:
; 	DS 1
; _mus_length1:
; 	DS 1
; _mus_length2:
; 	DS 1
; _mus_length3:
; 	DS 1
; _mus_length4:
; 	DS 1
; _mus_volume1:
; 	DS 1
; _mus_volume2:
; 	DS 1
; _mus_volume3:
; 	DS 1
; _mus_volume4:
; 	DS 1
; _mus_env1:
; 	DS 1
; _mus_env2:
; 	DS 1
; _mus_env4:
; 	DS 1
; _mus_pan1:
; 	DS 1
; _mus_pan2:
; 	DS 1
; _mus_pan3:
; 	DS 1
; _mus_pan4:
; 	DS 1
; _mus_duty1:
; 	DS 1
; _mus_duty2:
; 	DS 1
; _mus_wait1:
; 	DS 1
; _mus_wait2:
; 	DS 1
; _mus_wait3:
; 	DS 1
; _mus_wait4:
; 	DS 1
; _mus_target1:
; 	DS 2
; _mus_target2:
; 	DS 2
; _mus_target4:
; 	DS 1
; _mus_slide1:
; 	DS 1
; _mus_slide2:
; 	DS 1
; _mus_slide4:
; 	DS 1
; _mus_porta1:
; 	DS 1
; _mus_porta2:
; 	DS 1
; _mus_porta4:
; 	DS 1
; _mus_vib_speed1:
; 	DS 1
; _mus_vib_speed2:
; 	DS 1
; _mus_vib_table1:
; 	DS 2
; _mus_vib_table2:
; 	DS 2
; _mus_vib_pos1:
; 	DS 1
; _mus_vib_pos2:
; 	DS 1
; _mus_vib_delay1:
; 	DS 1
; _mus_vib_delay2:
; 	DS 1
; _mus_noise_step:
; 	DS 1
; _mus_po1:
; 	DS 1
; _mus_po2:
; 	DS 1
; _mus_po3:
; 	DS 1
; _mus_macro1:
; 	DS 1
; _mus_macro2:
; 	DS 1
; _mus_macro3:
; 	DS 1
; _mus_macro4:
; 	DS 1
; _mus_rep1:
; 	DS 8
; _mus_rep2:
; 	DS 8
; _mus_rep3:
; 	DS 8
; _mus_rep4:
; 	DS 8
; _mus_repeats1:
; 	DS 4
; _mus_repeats2:
; 	DS 4
; _mus_repeats3:
; 	DS 4
; _mus_repeats4:
; 	DS 4
; _mus_rep_depth1:
; 	DS 1
; _mus_rep_depth2:
; 	DS 1
; _mus_rep_depth3:
; 	DS 1
; _mus_rep_depth4:
; 	DS 1
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
; 	SECTION "music.c_ROM0",ROM0
; 	SECTION "music.c_ROM0",ROM0
; ;--------------------------------------------------------
; ; code
; ;--------------------------------------------------------
; 	SECTION "music.c_ROMX",ROMX
;music.c:46: void mus_init(UBYTE *song_data) {
;	---------------------------------
; Function mus_init
; ---------------------------------
_mus_init::
	add	sp, -3
;music.c:49: NR52_REG = 0x80U; // Enable sound
	ld	hl, $FF26
	ld	[hl], $80
;music.c:50: NR51_REG = 0xFFU;
	ld	l, $25
	ld	[hl], $FF
;music.c:51: NR50_REG = 0xFFU;
	ld	l, $24
	ld	[hl], $FF
;music.c:54: NR10_REG = 0U;
	ld	l, $10
	ld	[hl], $00
;music.c:55: NR12_REG = 0U;
	ld	l, $12
	ld	[hl], $00
;music.c:56: NR22_REG = 0U;
	ld	l, $17
	ld	[hl], $00
;music.c:57: NR30_REG = 0U;
	ld	l, $1A
	ld	[hl], $00
;music.c:58: NR32_REG = 0U;
	ld	l, $1C
	ld	[hl], $00
;music.c:59: NR42_REG = 0U;
	ld	l, $21
	ld	[hl], $00
;music.c:62: TAC_REG = 0x04U; // TAC clock = 4096 Hz
	ld	l, $07
	ld	[hl], $04
;music.c:63: TMA_REG = 255U - 51U; // Default to ~150 bpm
	ld	l, $06
	ld	[hl], $CC
;music.c:66: mus_paused = 0U;
	ld	hl, _mus_paused
	ld	[hl], $00
;music.c:67: mus_step = 0U;
	ld	hl, _mus_step
	ld	[hl], $00
;music.c:69: mus_song = song_data;
	ld	hl,sp+5
	ld	a, [hl]
	inc	hl
	ld	e, [hl]
	ld	hl, _mus_song
	ld	[hl], a
	inc	hl
	ld	[hl], e
;music.c:70: mus_data1 = mus_loop1 = song_data + ((UWORD*)song_data)[0];
	ld	hl,sp+5
	ld	a, [hl]
	inc	hl
	ld	e, [hl]
	ld	hl,sp+0
	ld	[hl], a
	inc	hl
	ld	[hl], e
	pop	de
	push	de
	ld	a,[de]
	ld	c, a
	inc	de
	ld	a,[de]
	ld	b, a
	ld	hl,sp+5
	ld	a, [hl]
	inc	hl
	ld	h, [hl]
	ld	l, a
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	hl, _mus_loop1
	ld	[hl], c
	inc	hl
	ld	[hl], b
	ld	hl, _mus_data1
	ld	[hl], c
	inc	hl
	ld	[hl], b
;music.c:71: mus_data2 = mus_loop2 = song_data + ((UWORD*)song_data)[1];
	pop	bc
	push	bc
	inc	bc
	inc	bc
	ld	e, c
	ld	d, b
	ld	a,[de]
	ld	c, a
	inc	de
	ld	a,[de]
	ld	b, a
	ld	hl,sp+5
	ld	a, [hl]
	inc	hl
	ld	h, [hl]
	ld	l, a
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	hl, _mus_loop2
	ld	[hl], c
	inc	hl
	ld	[hl], b
	ld	hl, _mus_data2
	ld	[hl], c
	inc	hl
	ld	[hl], b
;music.c:72: mus_data3 = mus_loop3 = song_data + ((UWORD*)song_data)[2];
	pop	de
	push	de
	ld	hl, $0004
	add	hl, de
	ld	c, l
	ld	b, h
	ld	e, c
	ld	d, b
	ld	a,[de]
	ld	c, a
	inc	de
	ld	a,[de]
	ld	b, a
	ld	hl,sp+5
	ld	a, [hl]
	inc	hl
	ld	h, [hl]
	ld	l, a
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	hl, _mus_loop3
	ld	[hl], c
	inc	hl
	ld	[hl], b
	ld	hl, _mus_data3
	ld	[hl], c
	inc	hl
	ld	[hl], b
;music.c:73: mus_data4 = mus_loop4 = song_data + ((UWORD*)song_data)[3];
	pop	de
	push	de
	ld	hl, $0006
	add	hl, de
	ld	c, l
	ld	b, h
	ld	e, c
	ld	d, b
	ld	a,[de]
	ld	c, a
	inc	de
	ld	a,[de]
	ld	b, a
	ld	hl,sp+5
	ld	a, [hl]
	inc	hl
	ld	h, [hl]
	ld	l, a
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	hl, _mus_loop4
	ld	[hl], c
	inc	hl
	ld	[hl], b
	ld	hl, _mus_data4
	ld	[hl], c
	inc	hl
	ld	[hl], b
;music.c:74: mus_wave = song_data + ((UWORD*)song_data)[4];
	pop	de
	push	de
	ld	hl, $0008
	add	hl, de
	ld	c, l
	ld	b, h
	ld	e, c
	ld	d, b
	ld	a,[de]
	ld	c, a
	inc	de
	ld	a,[de]
	ld	b, a
	ld	hl,sp+5
	ld	a, [hl]
	inc	hl
	ld	h, [hl]
	ld	l, a
	add	hl, bc
	ld	a, l
	ld	d, h
	ld	hl, _mus_wave
	ld	[hl], a
	inc	hl
	ld	[hl], d
;music.c:76: mus_enabled1 = mus_enabled4 = 1U;
	ld	hl, _mus_enabled4
	ld	[hl], $01
	ld	hl, _mus_enabled1
	ld	[hl], $01
;music.c:77: mus_done1 = mus_done2 = mus_done3 = mus_done4 = 0U;
	ld	hl, _mus_done4
	ld	[hl], $00
	ld	hl, _mus_done3
	ld	[hl], $00
	ld	hl, _mus_done2
	ld	[hl], $00
	ld	hl, _mus_done1
	ld	[hl], $00
;music.c:78: mus_wait1 = mus_wait2 = mus_wait3 = mus_wait4 = 0U;
	ld	hl, _mus_wait4
	ld	[hl], $00
	ld	hl, _mus_wait3
	ld	[hl], $00
	ld	hl, _mus_wait2
	ld	[hl], $00
	ld	hl, _mus_wait1
	ld	[hl], $00
;music.c:79: mus_octave1 = mus_octave2 = mus_octave3 = mus_octave4 = 4U;
	ld	hl, _mus_octave4
	ld	[hl], $04
	ld	hl, _mus_octave3
	ld	[hl], $04
	ld	hl, _mus_octave2
	ld	[hl], $04
	ld	hl, _mus_octave1
	ld	[hl], $04
;music.c:80: mus_length1 = mus_length2 = mus_length3 = mus_length4 = 48U;
	ld	hl, _mus_length4
	ld	[hl], $30
	ld	hl, _mus_length3
	ld	[hl], $30
	ld	hl, _mus_length2
	ld	[hl], $30
	ld	hl, _mus_length1
	ld	[hl], $30
;music.c:81: mus_volume1 = mus_volume2 = mus_volume4 = 0xF0U;
	ld	hl, _mus_volume4
	ld	[hl], $F0
	ld	hl, _mus_volume2
	ld	[hl], $F0
	ld	hl, _mus_volume1
	ld	[hl], $F0
;music.c:82: mus_volume3 = 32U;
	ld	hl, _mus_volume3
	ld	[hl], $20
;music.c:83: mus_env1 = mus_env2 = mus_env4 = 3U;
	ld	hl, _mus_env4
	ld	[hl], $03
	ld	hl, _mus_env2
	ld	[hl], $03
	ld	hl, _mus_env1
	ld	[hl], $03
;music.c:84: mus_rep_depth1 = mus_rep_depth2 = mus_rep_depth3 = mus_rep_depth4 = 255U;
	ld	hl, _mus_rep_depth4
	ld	[hl], $FF
	ld	hl, _mus_rep_depth3
	ld	[hl], $FF
	ld	hl, _mus_rep_depth2
	ld	[hl], $FF
	ld	hl, _mus_rep_depth1
	ld	[hl], $FF
;music.c:85: mus_slide1 = mus_slide2 = mus_slide4 = 0U;
	ld	hl, _mus_slide4
	ld	[hl], $00
	ld	hl, _mus_slide2
	ld	[hl], $00
	ld	hl, _mus_slide1
	ld	[hl], $00
;music.c:86: mus_porta1 = mus_porta2 = mus_porta4 = 0U;
	ld	hl, _mus_porta4
	ld	[hl], $00
	ld	hl, _mus_porta2
	ld	[hl], $00
	ld	hl, _mus_porta1
	ld	[hl], $00
;music.c:87: mus_vib_speed1 = mus_vib_speed2 = 0U;
	ld	hl, _mus_vib_speed2
	ld	[hl], $00
	ld	hl, _mus_vib_speed1
	ld	[hl], $00
;music.c:88: mus_noise_step = 0U;
	ld	hl, _mus_noise_step
	ld	[hl], $00
;music.c:89: mus_po1 = mus_po2 = mus_po3 = 128U;
	ld	hl, _mus_po3
	ld	[hl], $80
	ld	hl, _mus_po2
	ld	[hl], $80
	ld	hl, _mus_po1
	ld	[hl], $80
;music.c:90: mus_pan1 = mus_pan2 = mus_pan3 = mus_pan4 = 0x11U;
	ld	hl, _mus_pan4
	ld	[hl], $11
	ld	hl, _mus_pan3
	ld	[hl], $11
	ld	hl, _mus_pan2
	ld	[hl], $11
	ld	hl, _mus_pan1
	ld	[hl], $11
;music.c:91: mus_macro1 = mus_macro2 = mus_macro3 = mus_macro4 = 0U;
	ld	hl, _mus_macro4
	ld	[hl], $00
	ld	hl, _mus_macro3
	ld	[hl], $00
	ld	hl, _mus_macro2
	ld	[hl], $00
	ld	hl, _mus_macro1
	ld	[hl], $00
;music.c:93: for(i = 0U; i != MAX_REPEATS; ++i) {
	ld	hl,sp+2
	ld	[hl], $00
.l00102:
;music.c:94: mus_repeats1[i] = 0U;
	ld	de, _mus_repeats1
	ld	hl,sp+2
	ld	l, [hl]
	ld	h, $00
	add	hl, de
	ld	c, l
	ld	b, h
	xor	a, a
	ld	[bc], a
;music.c:95: mus_repeats2[i] = 0U;
	ld	de, _mus_repeats2
	ld	hl,sp+2
	ld	l, [hl]
	ld	h, $00
	add	hl, de
	ld	c, l
	ld	b, h
	xor	a, a
	ld	[bc], a
;music.c:96: mus_repeats3[i] = 0U;
	ld	de, _mus_repeats3
	ld	hl,sp+2
	ld	l, [hl]
	ld	h, $00
	add	hl, de
	ld	c, l
	ld	b, h
	xor	a, a
	ld	[bc], a
;music.c:97: mus_repeats4[i] = 0U;
	ld	de, _mus_repeats4
	ld	hl,sp+2
	ld	l, [hl]
	ld	h, $00
	add	hl, de
	ld	c, l
	ld	b, h
	xor	a, a
	ld	[bc], a
;music.c:93: for(i = 0U; i != MAX_REPEATS; ++i) {
	ld	hl,sp+2
	inc	[hl]
	ld	a, [hl]
	sub	a, $04
	jr	Z,.l00113
.l00112:
	jp	.l00102
.l00113:
.l00104:
;music.c:99: }
	add	sp, 3
	ret
;music.c:101: void mus_setPaused(UBYTE p) {
;	---------------------------------
; Function mus_setPaused
; ---------------------------------
_mus_setPaused::
;music.c:102: mus_paused = p;
	push	hl
	ld	hl,sp+4
	ld	a, [hl]
	ld	hl, _mus_paused
	ld	[hl], a
	pop	hl
;music.c:104: if(mus_paused) {
	ld	hl, _mus_paused
	ld	a, [hl]
	or	a, a
	ret	Z
;music.c:105: NR12_REG = NR22_REG = NR32_REG = NR42_REG = 0U;
	ld	hl, $FF21
	ld	[hl], $00
	ld	l, $1C
	ld	[hl], $00
	ld	l, $17
	ld	[hl], $00
	ld	l, $12
	ld	[hl], $00
;music.c:106: NR14_REG = NR24_REG = NR34_REG = NR44_REG = 0x80U;
	ld	l, $23
	ld	[hl], $80
	ld	l, $1E
	ld	[hl], $80
	ld	l, $19
	ld	[hl], $80
	ld	l, $14
	ld	[hl], $80
.l00103:
;music.c:108: }
	ret
;music.c:110: void mus_togglePaused() {
;	---------------------------------
; Function mus_togglePaused
; ---------------------------------
_mus_togglePaused::
;music.c:111: mus_setPaused(mus_paused ^ 1U);
	ld	hl, _mus_paused
	ld	c, [hl]
	ld	b, $00
	ld	a, c
	xor	a, $01
	ld	d, a
	push	de
	inc	sp
	call	_mus_setPaused
	inc	sp
.l00101:
;music.c:112: }
	ret
;music.c:114: void mus_disable1() {
;	---------------------------------
; Function mus_disable1
; ---------------------------------
_mus_disable1::
;music.c:115: mus_enabled1 = 0U;
	ld	hl, _mus_enabled1
	ld	[hl], $00
;music.c:116: NR13_REG = 0U;
	ld	hl, $FF13
	ld	[hl], $00
;music.c:117: NR14_REG = 0x80U;
	ld	l, $14
	ld	[hl], $80
.l00101:
;music.c:118: }
	ret
;music.c:120: void mus_disable4() {
;	---------------------------------
; Function mus_disable4
; ---------------------------------
_mus_disable4::
;music.c:121: mus_enabled4 = 0U;
	ld	hl, _mus_enabled4
	ld	[hl], $00
;music.c:122: NR43_REG = 0U;
	ld	hl, $FF22
	ld	[hl], $00
;music.c:123: NR44_REG = 0x80U;
	ld	l, $23
	ld	[hl], $80
.l00101:
;music.c:124: }
	ret
;music.c:126: void mus_restore1() {
;	---------------------------------
; Function mus_restore1
; ---------------------------------
_mus_restore1::
;music.c:127: mus_enabled1 = 2U;
	ld	hl, _mus_enabled1
	ld	[hl], $02
;music.c:128: NR51_REG = (NR51_REG & 0xEEU) | mus_pan1;
	ld	de, $FF25
	ld	a,[de]
	ld	c, a
	ld	b, $00
	ld	a, c
	and	a, $EE
	ld	c, a
	ld	b, $00
	ld	hl, _mus_pan1
	ld	e, [hl]
	ld	d, $00
	ld	a, c
	or	a, e
	ld	c, a
	ld	a, b
	or	a, d
	ld	hl, $FF25
	ld	[hl], c
;music.c:129: NR11_REG = mus_duty1;
	ld	de, $FF11
	ld	hl, _mus_duty1
	ld	a, [hl]
	ld	[de], a
;music.c:130: NR12_REG = 0U;
	ld	hl, $FF12
	ld	[hl], $00
;music.c:131: NR14_REG = 0x80U;
	ld	l, $14
	ld	[hl], $80
.l00101:
;music.c:132: }
	ret
;music.c:134: void mus_restore4() {
;	---------------------------------
; Function mus_restore4
; ---------------------------------
_mus_restore4::
;music.c:135: mus_enabled4 = 2U;
	ld	hl, _mus_enabled4
	ld	[hl], $02
;music.c:136: NR51_REG = (NR51_REG & 0x77U) | (mus_pan4 << 3);
	ld	de, $FF25
	ld	a,[de]
	ld	c, a
	ld	b, $00
	ld	a, c
	and	a, $77
	ld	c, a
	ld	b, $00
	ld	hl, _mus_pan4
	ld	a, [hl]
	add	a, a
	add	a, a
	add	a, a
	ld	e, a
	rla
	sbc	a, a
	ld	d, a
	ld	a, c
	or	a, e
	ld	c, a
	ld	a, b
	or	a, d
	ld	hl, $FF25
	ld	[hl], c
;music.c:137: NR42_REG = 0U;
	ld	l, $21
	ld	[hl], $00
;music.c:138: NR44_REG = 0x80U;
	ld	l, $23
	ld	[hl], $80
.l00101:
;music.c:139: }
	ret
;music.c:141: UBYTE mus_is_done() {
;	---------------------------------
; Function mus_is_done
; ---------------------------------
_mus_is_done::
;music.c:142: return mus_paused || (mus_done1 && mus_done2 && mus_done3 && mus_done4);
	ld	hl, _mus_paused
	ld	a, [hl]
	or	a, a
	jr	NZ,.l00104
	ld	hl, _mus_done1
	ld	a, [hl]
	or	a, a
	jr	Z,.l00103
	ld	hl, _mus_done2
	ld	a, [hl]
	or	a, a
	jr	Z,.l00103
	ld	hl, _mus_done3
	ld	a, [hl]
	or	a, a
	jr	Z,.l00103
	ld	hl, _mus_done4
	ld	a, [hl]
	or	a, a
	jr	NZ,.l00104
.l00103:
	xor	a, a
	jr	.l00105
.l00104:
	ld	a, $01
.l00105:
	ld	e, a
.l00101:
;music.c:143: }
	ret
;music.c:145: void mus_update() {
;	---------------------------------
; Function mus_update
; ---------------------------------
_mus_update::
;music.c:146: if(mus_paused) return;
	ld	hl, _mus_paused
	ld	a, [hl]
	or	a, a
	jr	NZ,.l00103
.l00102:
;music.c:148: mus_update1();
	call	_mus_update1
;music.c:149: mus_update2();
	call	_mus_update2
;music.c:150: mus_update3();
	call	_mus_update3
;music.c:151: mus_update4();
	call	_mus_update4
;music.c:152: mus_step++;
	ld	hl, _mus_step
	inc	[hl]
.l00103:
;music.c:153: }
	ret
;music.c:155: void mus_update1() {
;	---------------------------------
; Function mus_update1
; ---------------------------------
_mus_update1::
	add	sp, -4
;music.c:159: if(mus_slide1 && !(mus_step & 3U)) {
	ld	hl, _mus_slide1
	ld	a, [hl]
	or	a, a
	jp	Z, .l00113
	ld	hl, _mus_step
	ld	a, [hl]
	and	a, $03
	jr	Z,.l00405
.l00404:
	jp	.l00113
.l00405:
;music.c:160: if(mus_target1 > mus_freq1) {
	ld	hl, _mus_freq1
	ld	d, h
	ld	e, l
	ld	hl, _mus_target1
	ld	a, [de]
	sub	a, [hl]
	inc	hl
	inc	de
	ld	a, [de]
	sbc	a, [hl]
	jp	NC, .l00108
;music.c:161: mus_freq1 += mus_slide1;
	ld	hl, _mus_slide1
	ld	c, [hl]
	ld	b, $00
	ld	hl, _mus_freq1
	ld	a, [hl]
	add	a, c
	ld	[hl], a
	inc	hl
	ld	a, [hl]
	adc	a, b
	ld	[hl], a
;music.c:162: if(mus_freq1 > mus_target1) {
	ld	hl, _mus_target1
	ld	d, h
	ld	e, l
	ld	hl, _mus_freq1
	ld	a, [de]
	sub	a, [hl]
	inc	hl
	inc	de
	ld	a, [de]
	sbc	a, [hl]
	jp	NC, .l00109
;music.c:163: mus_freq1 = mus_target1;
	ld	hl, _mus_target1
	ld	a, [hl]
	inc	hl
	ld	e, [hl]
	ld	hl, _mus_freq1
	ld	[hl], a
	inc	hl
	ld	[hl], e
	jp	.l00109
.l00108:
;music.c:166: else if(mus_target1 < mus_freq1) {
	ld	hl, _mus_target1
	ld	d, h
	ld	e, l
	ld	hl, _mus_freq1
	ld	a, [de]
	sub	a, [hl]
	inc	hl
	inc	de
	ld	a, [de]
	sbc	a, [hl]
	jr	NC,.l00109
;music.c:167: mus_freq1 -= mus_slide1;
	ld	hl, _mus_slide1
	ld	c, [hl]
	ld	b, $00
	ld	hl, _mus_freq1
	ld	a, [hl]
	sub	a, c
	ld	[hl], a
	inc	hl
	ld	a, [hl]
	sbc	a, b
	ld	[hl], a
;music.c:168: if(mus_freq1 < mus_target1) {
	dec	hl
	ld	d, h
	ld	e, l
	ld	hl, _mus_target1
	ld	a, [de]
	sub	a, [hl]
	inc	hl
	inc	de
	ld	a, [de]
	sbc	a, [hl]
	jr	NC,.l00109
;music.c:169: mus_freq1 = mus_target1;
	ld	hl, _mus_target1
	ld	a, [hl]
	inc	hl
	ld	e, [hl]
	ld	hl, _mus_freq1
	ld	[hl], a
	inc	hl
	ld	[hl], e
.l00109:
;music.c:172: if(mus_enabled1) {
	ld	hl, _mus_enabled1
	ld	a, [hl]
	or	a, a
	jr	Z,.l00113
;music.c:173: NR13_REG = (UBYTE)mus_freq1;
	ld	hl, _mus_freq1
	ld	a, [hl]
	ld	hl, $FF13
	ld	[hl], a
;music.c:174: NR14_REG = mus_freq1 >> 8;
	ld	hl, _mus_freq1 + 1
	ld	c, [hl]
	ld	b, $00
	ld	hl, $FF14
	ld	[hl], c
.l00113:
;music.c:178: if(mus_vib_delay1) {
	ld	hl, _mus_vib_delay1
	ld	a, [hl]
	or	a, a
	jr	Z,.l00120
;music.c:179: mus_vib_delay1--;
	dec	[hl]
	jp	.l00121
.l00120:
;music.c:181: else if(mus_vib_speed1) {
	ld	hl, _mus_vib_speed1
	ld	a, [hl]
	or	a, a
	jp	Z, .l00121
;music.c:182: mus_vib_pos1 = (mus_vib_pos1 + mus_vib_speed1) & 63U;
	ld	hl, _mus_vib_pos1
	ld	a, [hl]
	ld	hl, _mus_vib_speed1
	add	a, [hl]
	and	a, $3F
	ld	hl, _mus_vib_pos1
	ld	[hl], a
;music.c:183: tmp_freq = mus_freq1 - *mus_vib_table1 + mus_vib_table1[mus_vib_pos1];
	ld	hl, _mus_vib_table1 + 1
	dec	hl
	ld	c, [hl]
	inc	hl
	ld	b, [hl]
	ld	a, [bc]
	ld	c, a
	ld	b, $00
	ld	hl, _mus_freq1 + 1
	dec	hl
	ld	e, [hl]
	inc	hl
	ld	d, [hl]
	ld	a, e
	sub	a, c
	ld	e, a
	ld	a, d
	sbc	a, b
	ld	hl,sp+1
	ld	[hl], a
	dec	hl
	ld	[hl], e
	ld	hl, _mus_vib_table1
	ld	a, [hl]
	ld	hl, _mus_vib_pos1
	add	a, [hl]
	ld	c, a
	ld	hl, _mus_vib_table1 + 1
	ld	a, [hl]
	adc	a, $00
	ld	b, a
	ld	a, [bc]
	ld	c, a
	ld	b, $00
	pop	hl
	push	hl
	add	hl, bc
	ld	c, l
	ld	b, h
;music.c:185: if(mus_enabled1) {
	ld	hl, _mus_enabled1
	ld	a, [hl]
	or	a, a
	jr	Z,.l00121
;music.c:186: NR13_REG = (UBYTE)tmp_freq;
	ld	a, c
	ld	hl, $FF13
	ld	[hl], a
;music.c:187: NR14_REG = tmp_freq >> 8;
	ld	c, $00
	ld	l, $14
	ld	[hl], b
.l00121:
;music.c:191: if(mus_wait1) {
	ld	hl, _mus_wait1
	ld	a, [hl]
	or	a, a
	jr	Z,.l00235
;music.c:192: mus_wait1--;
	dec	[hl]
;music.c:193: if(mus_wait1) return;
	ld	a, [hl]
	or	a, a
;music.c:196: while(1U) {
	jp	NZ,.l00212
.l00235:
.l00210:
;music.c:197: note = *mus_data1++;
	ld	hl, _mus_data1 + 1
	dec	hl
	ld	c, [hl]
	inc	hl
	ld	b, [hl]
	ld	a, [bc]
	ld	hl,sp+0
	ld	[hl], a
	ld	hl, _mus_data1
	inc	[hl]
	jr	NZ,.l00406
	inc	hl
	inc	[hl]
.l00406:
;music.c:198: if(note >= MUS_FIRST_NOTE) {
	ld	hl,sp+0
	ld	a, [hl]
	sub	a, $15
	jp	C, .l00147
;music.c:199: if(note & MUS_HAS_LENGTH) {
	bit	7, [hl]
	jr	Z,.l00127
.l00407:
;music.c:200: note ^= MUS_HAS_LENGTH;
	ld	hl,sp+0
	ld	c, [hl]
	ld	b, $00
	ld	a, c
	xor	a, $80
	ld	c, a
	ld	[hl], c
;music.c:201: mus_wait1 = *mus_data1++;
	ld	hl, _mus_data1 + 1
	dec	hl
	ld	c, [hl]
	inc	hl
	ld	b, [hl]
	ld	a, [bc]
	ld	hl, _mus_wait1
	ld	[hl], a
	ld	hl, _mus_data1
	inc	[hl]
	jr	NZ,.l00128
	inc	hl
	inc	[hl]
.l00408:
	jr	.l00128
.l00127:
;music.c:204: mus_wait1 = mus_length1;
	push	hl
	ld	hl, _mus_length1
	ld	a, [hl]
	ld	hl, _mus_wait1
	ld	[hl], a
	pop	hl
.l00128:
;music.c:206: if(note == T_WAIT) {
	ld	hl,sp+0
	ld	a, [hl]
	sub	a, $22
	jr	Z,.l00410
.l00409:
	jr	.l00140
.l00410:
;music.c:207: return;
	jp	.l00212
.l00140:
;music.c:208: } else if(note == T_REST) {
	ld	hl,sp+0
	ld	a, [hl]
	sub	a, $21
	jr	Z,.l00412
.l00411:
	jr	.l00137
.l00412:
;music.c:209: mus_freq1 = 0U;
	ld	hl, _mus_freq1
	ld	[hl], $00
	inc	hl
	ld	[hl], $00
;music.c:210: if(mus_enabled1) NR12_REG = 0U;
	ld	hl, _mus_enabled1
	ld	a, [hl]
	or	a, a
	jp	Z, .l00141
	ld	hl, $FF12
	ld	[hl], $00
	jp	.l00141
.l00137:
;music.c:212: tmp_freq = freq[(mus_octave1 << 4) + note - MUS_FIRST_NOTE] + mus_po1 - 128U;
	ld	hl, _mus_octave1
	ld	c, [hl]
	ld	b, $00
	sla	c
	rl	b
	sla	c
	rl	b
	sla	c
	rl	b
	sla	c
	rl	b
	ld	hl,sp+0
	ld	a, [hl]
	inc	hl
	inc	hl
	ld	[hl], a
	inc	hl
	ld	[hl], $00
	dec	hl
	ld	a, [hl]
	inc	hl
	ld	h, [hl]
	ld	l, a
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	a, c
	add	a, $EB
	ld	c, a
	ld	a, b
	adc	a, $FF
	ld	b, a
	sla	c
	rl	b
	ld	hl, _freq
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	e, c
	ld	d, b
	ld	a,[de]
	ld	hl,sp+2
	ld	[hl], a
	inc	de
	ld	a,[de]
	inc	hl
	ld	[hl], a
	ld	hl, _mus_po1
	ld	c, [hl]
	ld	b, $00
	ld	hl,sp+2
	ld	a, [hl]
	inc	hl
	ld	h, [hl]
	ld	l, a
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	a, c
	add	a, $80
	ld	c, a
	ld	a, b
	adc	a, $FF
	ld	b, a
;music.c:213: if(mus_porta1) {
	ld	hl, _mus_porta1
	ld	a, [hl]
	or	a, a
	jr	Z,.l00132
;music.c:214: mus_target1 = tmp_freq;
	ld	hl, _mus_target1
	ld	[hl], c
	inc	hl
	ld	[hl], b
	jr	.l00133
.l00132:
;music.c:216: mus_freq1 = tmp_freq;
	ld	hl, _mus_freq1
	ld	[hl], c
	inc	hl
	ld	[hl], b
.l00133:
;music.c:218: if(mus_enabled1) NR12_REG = mus_volume1 | mus_env1;
	ld	hl, _mus_enabled1
	ld	a, [hl]
	or	a, a
	jr	Z,.l00141
	ld	hl, _mus_volume1
	ld	a, [hl]
	ld	hl, _mus_env1
	or	a, [hl]
	ld	hl, $FF12
	ld	[hl], a
.l00141:
;music.c:220: if(mus_enabled1) {
	ld	hl, _mus_enabled1
	ld	a, [hl]
	or	a, a
	jr	Z,.l00145
;music.c:221: if(mus_enabled1 == 2U) {
	ld	a, [hl]
	sub	a, $02
	jr	Z,.l00418
.l00417:
	jr	.l00143
.l00418:
;music.c:222: mus_enabled1--;
	ld	hl, _mus_enabled1
	dec	[hl]
;music.c:223: NR12_REG = mus_volume1 | mus_env1;
	ld	hl, _mus_volume1
	ld	a, [hl]
	ld	hl, _mus_env1
	or	a, [hl]
	ld	hl, $FF12
	ld	[hl], a
.l00143:
;music.c:225: NR13_REG = (UBYTE)mus_freq1;
	ld	hl, _mus_freq1
	ld	a, [hl]
	ld	hl, $FF13
	ld	[hl], a
;music.c:226: NR14_REG = (mus_freq1 >> 8) | 0x80U;
	ld	hl, _mus_freq1 + 1
	ld	c, [hl]
	ld	b, $00
	set	7, c
	ld	hl, $FF14
	ld	[hl], c
.l00145:
;music.c:228: return;
	jp	.l00212
.l00147:
;music.c:230: switch(note) {
	ld	a, $14
	ld	hl,sp+0
	sub	a, [hl]
	jp	C, .l00210
	ld	c, [hl]
	ld	b, $00
	ld	hl, .l00419
	add	hl, bc
	add	hl, bc
	add	hl, bc
	jp	hl
.l00419:
	jp	.l00148
	jp	.l00149
	jp	.l00150
	jp	.l00151
	jp	.l00152
	jp	.l00155
	jp	.l00158
	jp	.l00161
	jp	.l00164
	jp	.l00165
	jp	.l00169
	jp	.l00179
	jp	.l00189
	jp	.l00190
	jp	.l00196
	jp	.l00197
	jp	.l00198
	jp	.l00210
	jp	.l00210
	jp	.l00201
	jp	.l00202
;music.c:231: case T_LENGTH:
.l00148:
;music.c:232: mus_length1 = *mus_data1++;
	ld	hl, _mus_data1 + 1
	dec	hl
	ld	c, [hl]
	inc	hl
	ld	b, [hl]
	ld	a, [bc]
	ld	hl, _mus_length1
	ld	[hl], a
	ld	hl, _mus_data1
	inc	[hl]
	jp	NZ,.l00210
	inc	hl
	inc	[hl]
.l00420:
;music.c:233: break;
	jp	.l00210
;music.c:234: case T_OCTAVE:
.l00149:
;music.c:235: mus_octave1 = *mus_data1++;
	ld	hl, _mus_data1 + 1
	dec	hl
	ld	c, [hl]
	inc	hl
	ld	b, [hl]
	ld	a, [bc]
	ld	hl, _mus_octave1
	ld	[hl], a
	ld	hl, _mus_data1
	inc	[hl]
	jp	NZ,.l00210
	inc	hl
	inc	[hl]
.l00421:
;music.c:236: break;
	jp	.l00210
;music.c:237: case T_OCT_UP:
.l00150:
;music.c:238: mus_octave1++;
	ld	hl, _mus_octave1
	inc	[hl]
;music.c:239: break;
	jp	.l00210
;music.c:240: case T_OCT_DOWN:
.l00151:
;music.c:241: mus_octave1--;
	ld	hl, _mus_octave1
	dec	[hl]
;music.c:242: break;
	jp	.l00210
;music.c:243: case T_VOL:
.l00152:
;music.c:244: mus_volume1 = *mus_data1++;
	ld	hl, _mus_data1 + 1
	dec	hl
	ld	c, [hl]
	inc	hl
	ld	b, [hl]
	ld	a, [bc]
	ld	hl, _mus_volume1
	ld	[hl], a
	ld	hl, _mus_data1
	inc	[hl]
	jr	NZ,.l00422
	inc	hl
	inc	[hl]
.l00422:
;music.c:245: if(mus_enabled1) NR12_REG = mus_volume1 | mus_env1;
	ld	hl, _mus_enabled1
	ld	a, [hl]
	or	a, a
	jp	Z, .l00210
	ld	hl, _mus_volume1
	ld	a, [hl]
	ld	hl, _mus_env1
	or	a, [hl]
	ld	hl, $FF12
	ld	[hl], a
;music.c:246: break;
	jp	.l00210
;music.c:247: case T_ENV:
.l00155:
;music.c:248: mus_env1 = *mus_data1++;
	ld	hl, _mus_data1 + 1
	dec	hl
	ld	c, [hl]
	inc	hl
	ld	b, [hl]
	ld	a, [bc]
	ld	hl, _mus_env1
	ld	[hl], a
	ld	hl, _mus_data1
	inc	[hl]
	jr	NZ,.l00423
	inc	hl
	inc	[hl]
.l00423:
;music.c:249: if(mus_enabled1) NR12_REG = mus_volume1 | mus_env1;
	ld	hl, _mus_enabled1
	ld	a, [hl]
	or	a, a
	jp	Z, .l00210
	ld	hl, _mus_volume1
	ld	a, [hl]
	ld	hl, _mus_env1
	or	a, [hl]
	ld	hl, $FF12
	ld	[hl], a
;music.c:250: break;
	jp	.l00210
;music.c:251: case T_WAVEDUTY:
.l00158:
;music.c:252: mus_duty1 = *mus_data1++;
	ld	hl, _mus_data1 + 1
	dec	hl
	ld	c, [hl]
	inc	hl
	ld	b, [hl]
	ld	a, [bc]
	ld	hl, _mus_duty1
	ld	[hl], a
	ld	hl, _mus_data1
	inc	[hl]
	jr	NZ,.l00424
	inc	hl
	inc	[hl]
.l00424:
;music.c:253: if(mus_enabled1) NR11_REG = mus_duty1;
	ld	hl, _mus_enabled1
	ld	a, [hl]
	or	a, a
	jp	Z, .l00210
	ld	de, $FF11
	ld	hl, _mus_duty1
	ld	a, [hl]
	ld	[de], a
;music.c:254: break;
	jp	.l00210
;music.c:255: case T_PAN:
.l00161:
;music.c:256: mus_pan1 = *mus_data1++;
	ld	hl, _mus_data1 + 1
	dec	hl
	ld	c, [hl]
	inc	hl
	ld	b, [hl]
	ld	a, [bc]
	ld	hl, _mus_pan1
	ld	[hl], a
	ld	hl, _mus_data1
	inc	[hl]
	jr	NZ,.l00425
	inc	hl
	inc	[hl]
.l00425:
;music.c:257: if(mus_enabled1) NR51_REG = (NR51_REG & 0xEEU) | mus_pan1;
	ld	hl, _mus_enabled1
	ld	a, [hl]
	or	a, a
	jp	Z, .l00210
	ld	de, $FF25
	ld	a,[de]
	ld	c, a
	ld	b, $00
	ld	a, c
	and	a, $EE
	ld	c, a
	ld	b, $00
	ld	hl, _mus_pan1
	ld	e, [hl]
	ld	d, $00
	ld	a, c
	or	a, e
	ld	c, a
	ld	a, b
	or	a, d
	ld	hl, $FF25
	ld	[hl], c
;music.c:258: break;
	jp	.l00210
;music.c:259: case T_PORTAMENTO:
.l00164:
;music.c:260: mus_slide1 = mus_porta1 = *mus_data1++;
	ld	hl, _mus_data1 + 1
	dec	hl
	ld	c, [hl]
	inc	hl
	ld	b, [hl]
	ld	a, [bc]
	ld	c, a
	dec	hl
	inc	[hl]
	jr	NZ,.l00426
	inc	hl
	inc	[hl]
.l00426:
	ld	hl, _mus_porta1
	ld	[hl], c
	ld	hl, _mus_slide1
	ld	[hl], c
;music.c:261: break;
	jp	.l00210
;music.c:262: case T_SLIDE:
.l00165:
;music.c:263: mus_slide1 = *mus_data1++;
	ld	hl, _mus_data1 + 1
	dec	hl
	ld	c, [hl]
	inc	hl
	ld	b, [hl]
	ld	a, [bc]
	ld	hl, _mus_slide1
	ld	[hl], a
	ld	hl, _mus_data1
	inc	[hl]
	jr	NZ,.l00427
	inc	hl
	inc	[hl]
.l00427:
;music.c:264: mus_porta1 = 0U;
	ld	hl, _mus_porta1
	ld	[hl], $00
;music.c:265: if(mus_slide1 >= 128U) {
	ld	hl, _mus_slide1
	ld	a, [hl]
	sub	a, $80
	jr	C,.l00167
;music.c:266: mus_target1 = 0xFFFFU;
	ld	hl, _mus_target1
	ld	[hl], $FF
	inc	hl
	ld	[hl], $FF
;music.c:267: mus_slide1 = mus_slide1 - 128U;
	ld	hl, _mus_slide1
	ld	a, [hl]
	add	a, $80
	ld	[hl], a
	jp	.l00210
.l00167:
;music.c:269: mus_target1 = 0U;
	ld	hl, _mus_target1
	ld	[hl], $00
	inc	hl
	ld	[hl], $00
;music.c:270: mus_slide1 = 128U - mus_slide1;
	ld	a, $80
	ld	hl, _mus_slide1
	sub	a, [hl]
	ld	[hl], a
;music.c:272: break;
	jp	.l00210
;music.c:273: case T_VIBRATO:
.l00169:
;music.c:274: mus_vib_pos1 = 0U;
	ld	hl, _mus_vib_pos1
	ld	[hl], $00
;music.c:275: note = *mus_data1++;
	ld	hl, _mus_data1 + 1
	dec	hl
	ld	c, [hl]
	inc	hl
	ld	b, [hl]
	ld	a, [bc]
	ld	c, a
	dec	hl
	inc	[hl]
	jr	NZ,.l00428
	inc	hl
	inc	[hl]
.l00428:
;music.c:276: mus_vib_speed1 = note & 15U;
	ld	a, c
	and	a, $0F
	ld	hl, _mus_vib_speed1
	ld	[hl], a
;music.c:277: note = note >> 4;
	ld	a, c
	swap	a
	and	a, $0F
;music.c:278: if(note == 1U) mus_vib_table1 = vib1;
	cp	a, $01
	jr	Z,.l00430
.l00429:
	jr	.l00177
.l00430:
	ld	hl, _mus_vib_table1
	ld	[hl], _vib1 & $FF
	inc	hl
	ld	[hl], _vib1 >> 8
	jr	.l00178
.l00177:
;music.c:279: else if(note == 2U) mus_vib_table1 = vib2;
	cp	a, $02
	jr	Z,.l00432
.l00431:
	jr	.l00174
.l00432:
	ld	hl, _mus_vib_table1
	ld	[hl], _vib2 & $FF
	inc	hl
	ld	[hl], _vib2 >> 8
	jr	.l00178
.l00174:
;music.c:280: else if(note == 3U) mus_vib_table1 = vib3;
	sub	a, $03
	jr	Z,.l00434
.l00433:
	jr	.l00171
.l00434:
	ld	hl, _mus_vib_table1
	ld	[hl], _vib3 & $FF
	inc	hl
	ld	[hl], _vib3 >> 8
	jr	.l00178
.l00171:
;music.c:281: else mus_vib_table1 = vib4;
	ld	hl, _mus_vib_table1
	ld	[hl], _vib4 & $FF
	inc	hl
	ld	[hl], _vib4 >> 8
.l00178:
;music.c:282: mus_vib_delay1 = 0U;
	ld	hl, _mus_vib_delay1
	ld	[hl], $00
;music.c:283: break;
	jp	.l00210
;music.c:284: case T_VIBRATO_DELAY:
.l00179:
;music.c:285: mus_vib_pos1 = 0U;
	ld	hl, _mus_vib_pos1
	ld	[hl], $00
;music.c:286: note = *mus_data1++;
	ld	hl, _mus_data1 + 1
	dec	hl
	ld	c, [hl]
	inc	hl
	ld	b, [hl]
	ld	a, [bc]
	ld	c, a
	dec	hl
	inc	[hl]
	jr	NZ,.l00435
	inc	hl
	inc	[hl]
.l00435:
;music.c:287: mus_vib_speed1 = note & 15U;
	ld	a, c
	and	a, $0F
	ld	hl, _mus_vib_speed1
	ld	[hl], a
;music.c:288: note = note >> 4;
	ld	a, c
	swap	a
	and	a, $0F
;music.c:289: if(note == 1U) mus_vib_table1 = vib1;
	cp	a, $01
	jr	Z,.l00437
.l00436:
	jr	.l00187
.l00437:
	ld	hl, _mus_vib_table1
	ld	[hl], _vib1 & $FF
	inc	hl
	ld	[hl], _vib1 >> 8
	jr	.l00188
.l00187:
;music.c:290: else if(note == 2U) mus_vib_table1 = vib2;
	cp	a, $02
	jr	Z,.l00439
.l00438:
	jr	.l00184
.l00439:
	ld	hl, _mus_vib_table1
	ld	[hl], _vib2 & $FF
	inc	hl
	ld	[hl], _vib2 >> 8
	jr	.l00188
.l00184:
;music.c:291: else if(note == 3U) mus_vib_table1 = vib3;
	sub	a, $03
	jr	Z,.l00441
.l00440:
	jr	.l00181
.l00441:
	ld	hl, _mus_vib_table1
	ld	[hl], _vib3 & $FF
	inc	hl
	ld	[hl], _vib3 >> 8
	jr	.l00188
.l00181:
;music.c:292: else mus_vib_table1 = vib4;
	ld	hl, _mus_vib_table1
	ld	[hl], _vib4 & $FF
	inc	hl
	ld	[hl], _vib4 >> 8
.l00188:
;music.c:293: mus_vib_delay1 = *mus_data1++;
	ld	hl, _mus_data1 + 1
	dec	hl
	ld	c, [hl]
	inc	hl
	ld	b, [hl]
	ld	a, [bc]
	ld	hl, _mus_vib_delay1
	ld	[hl], a
	ld	hl, _mus_data1
	inc	[hl]
	jp	NZ,.l00210
	inc	hl
	inc	[hl]
.l00442:
;music.c:294: break;
	jp	.l00210
;music.c:295: case T_REP_START:
.l00189:
;music.c:296: mus_rep_depth1++;
	ld	hl, _mus_rep_depth1
	inc	[hl]
;music.c:297: mus_rep1[mus_rep_depth1] = mus_data1;
	ld	c, [hl]
	ld	b, $00
	sla	c
	rl	b
	ld	hl, _mus_rep1
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	hl, _mus_data1
	ld	a, [hl]
	ld	[bc], a
	inc	bc
	inc	hl
	ld	a, [hl]
	ld	[bc], a
;music.c:298: break;
	jp	.l00210
;music.c:299: case T_REP_END:
.l00190:
;music.c:300: note = *mus_data1++;
	ld	hl, _mus_data1 + 1
	dec	hl
	ld	c, [hl]
	inc	hl
	ld	b, [hl]
	ld	a, [bc]
	ld	hl,sp+2
	ld	[hl], a
	ld	hl, _mus_data1
	inc	[hl]
	jr	NZ,.l00445
	inc	hl
	inc	[hl]
.l00445:
;music.c:301: if(!mus_repeats1[mus_rep_depth1]) {
	ld	a, _mus_repeats1 & $FF
	ld	hl, _mus_rep_depth1
	add	a, [hl]
	ld	c, a
	ld	a, _mus_repeats1 >> 8
	adc	a, $00
	ld	b, a
	ld	a, [bc]
	or	a, a
	jr	NZ,.l00192
;music.c:302: mus_repeats1[mus_rep_depth1] = note;
	ld	hl,sp+2
	ld	a, [hl]
	ld	[bc], a
;music.c:303: mus_data1 = mus_rep1[mus_rep_depth1];
	ld	hl, _mus_rep_depth1
	ld	c, [hl]
	ld	b, $00
	sla	c
	rl	b
	ld	hl, _mus_rep1
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	e, c
	ld	d, b
	ld	a,[de]
	ld	hl, _mus_data1
	ld	[hl], a
	inc	de
	ld	a,[de]
	inc	hl
	ld	[hl], a
.l00192:
;music.c:305: mus_repeats1[mus_rep_depth1]--;
	ld	a, _mus_repeats1 & $FF
	ld	hl, _mus_rep_depth1
	add	a, [hl]
	ld	c, a
	ld	a, _mus_repeats1 >> 8
	adc	a, $00
	ld	b, a
	ld	a, [bc]
	dec	a
	ld	[bc], a
;music.c:306: if(mus_repeats1[mus_rep_depth1]) {
	ld	a, _mus_repeats1 & $FF
	add	a, [hl]
	ld	c, a
	ld	a, _mus_repeats1 >> 8
	adc	a, $00
	ld	b, a
	ld	a, [bc]
	or	a, a
	jr	Z,.l00194
;music.c:307: mus_data1 = mus_rep1[mus_rep_depth1];
	ld	c, [hl]
	ld	b, $00
	sla	c
	rl	b
	ld	hl, _mus_rep1
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	e, c
	ld	d, b
	ld	a,[de]
	ld	hl, _mus_data1
	ld	[hl], a
	inc	de
	ld	a,[de]
	inc	hl
	ld	[hl], a
	jp	.l00210
.l00194:
;music.c:309: mus_rep_depth1--;
	ld	hl, _mus_rep_depth1
	dec	[hl]
;music.c:311: break;
	jp	.l00210
;music.c:312: case T_LOOP:
.l00196:
;music.c:313: mus_loop1 = mus_data1;
	ld	hl, _mus_data1
	ld	a, [hl]
	inc	hl
	ld	e, [hl]
	ld	hl, _mus_loop1
	ld	[hl], a
	inc	hl
	ld	[hl], e
;music.c:314: break;
	jp	.l00210
;music.c:315: case T_PITCH_OFFSET:
.l00197:
;music.c:316: mus_po1 = *mus_data1++;
	ld	hl, _mus_data1 + 1
	dec	hl
	ld	c, [hl]
	inc	hl
	ld	b, [hl]
	ld	a, [bc]
	ld	hl, _mus_po1
	ld	[hl], a
	ld	hl, _mus_data1
	inc	[hl]
	jp	NZ,.l00210
	inc	hl
	inc	[hl]
.l00450:
;music.c:317: break;
	jp	.l00210
;music.c:318: case T_TEMPO:
.l00198:
;music.c:319: TMA_REG = *mus_data1++;
	ld	hl, _mus_data1 + 1
	dec	hl
	ld	c, [hl]
	inc	hl
	ld	b, [hl]
	ld	a, [bc]
	ld	c, a
	dec	hl
	inc	[hl]
	jr	NZ,.l00451
	inc	hl
	inc	[hl]
.l00451:
	ld	hl, $FF06
	ld	[hl], c
;music.c:320: break;
	jp	.l00210
;music.c:325: case T_MACRO:
.l00201:
;music.c:326: note = *mus_data1++;
	ld	hl, _mus_data1 + 1
	dec	hl
	ld	c, [hl]
	inc	hl
	ld	b, [hl]
	ld	a, [bc]
	ld	hl,sp+2
	ld	[hl], a
	ld	hl, _mus_data1
	inc	[hl]
	jr	NZ,.l00452
	inc	hl
	inc	[hl]
.l00452:
;music.c:327: mus_data1_bak = mus_data1;
	ld	hl, _mus_data1
	ld	a, [hl]
	inc	hl
	ld	e, [hl]
	ld	hl, _mus_data1_bak
	ld	[hl], a
	inc	hl
	ld	[hl], e
;music.c:328: mus_data1 = mus_song + ((UWORD*)mus_song)[5 + note];
	ld	hl, _mus_song
	ld	a, [hl]
	inc	hl
	ld	e, [hl]
	ld	hl,sp+0
	ld	[hl], a
	inc	hl
	ld	[hl], e
	inc	hl
	ld	a,[hl]
	inc	hl
	ld	[hl], $00
	dec	hl
	ld	e, [hl]
	inc	hl
	ld	d, [hl]
	ld	hl, $0005
	add	hl, de
	ld	a, l
	ld	d, h
	ld	hl,sp+2
	ld	[hl], a
	inc	hl
	ld	[hl], d
	dec	hl
	ld	c, [hl]
	inc	hl
	ld	b, [hl]
	sla	c
	rl	b
	pop	hl
	push	hl
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	e, c
	ld	d, b
	ld	a,[de]
	ld	c, a
	inc	de
	ld	a,[de]
	ld	b, a
	ld	hl, _mus_song
	ld	a, [hl]
	add	a, c
	ld	hl, _mus_data1
	ld	[hl], a
	ld	hl, _mus_song + 1
	ld	a, [hl]
	adc	a, b
	ld	hl, _mus_data1 + 1
	ld	[hl], a
;music.c:329: mus_macro1 = 1U;
	ld	hl, _mus_macro1
	ld	[hl], $01
;music.c:330: break;
	jp	.l00210
;music.c:331: case T_EOF:
.l00202:
;music.c:332: if(mus_macro1) {
	ld	hl, _mus_macro1
	ld	a, [hl]
	or	a, a
	jr	Z,.l00206
;music.c:333: mus_data1 = mus_data1_bak;
	ld	hl, _mus_data1_bak
	ld	a, [hl]
	inc	hl
	ld	e, [hl]
	ld	hl, _mus_data1
	ld	[hl], a
	inc	hl
	ld	[hl], e
;music.c:334: mus_macro1 = 0U;
	ld	hl, _mus_macro1
	ld	[hl], $00
	jp	.l00210
.l00206:
;music.c:336: mus_data1 = mus_loop1;
	ld	hl, _mus_loop1
	ld	a, [hl]
	inc	hl
	ld	e, [hl]
	ld	hl, _mus_data1
	ld	[hl], a
	inc	hl
	ld	[hl], e
;music.c:337: mus_done1 = 1U;
	ld	hl, _mus_done1
	ld	[hl], $01
;music.c:338: if(*mus_data1 == T_EOF) {
	ld	hl, _mus_data1 + 1
	dec	hl
	ld	c, [hl]
	inc	hl
	ld	b, [hl]
	ld	a, [bc]
	sub	a, $14
	jr	Z,.l00456
.l00455:
	jp	.l00210
.l00456:
;music.c:339: mus_wait1 = 255U;
	ld	hl, _mus_wait1
	ld	[hl], $FF
;music.c:340: return;
;music.c:344: }
.l00212:
;music.c:346: }
	add	sp, 4
	ret
;music.c:348: void mus_update2() {
;	---------------------------------
; Function mus_update2
; ---------------------------------
_mus_update2::
	add	sp, -4
;music.c:352: if(mus_slide2 && !(mus_step & 3U)) {
	ld	hl, _mus_slide2
	ld	a, [hl]
	or	a, a
	jp	Z, .l00111
	ld	hl, _mus_step
	ld	a, [hl]
	and	a, $03
	jr	Z,.l00335
.l00334:
	jp	.l00111
.l00335:
;music.c:353: if(mus_target2 > mus_freq2) {
	ld	hl, _mus_freq2
	ld	d, h
	ld	e, l
	ld	hl, _mus_target2
	ld	a, [de]
	sub	a, [hl]
	inc	hl
	inc	de
	ld	a, [de]
	sbc	a, [hl]
	jp	NC, .l00108
;music.c:354: mus_freq2 += mus_slide2;
	ld	hl, _mus_slide2
	ld	c, [hl]
	ld	b, $00
	ld	hl, _mus_freq2
	ld	a, [hl]
	add	a, c
	ld	[hl], a
	inc	hl
	ld	a, [hl]
	adc	a, b
	ld	[hl], a
;music.c:355: if(mus_freq2 > mus_target2) {
	ld	hl, _mus_target2
	ld	d, h
	ld	e, l
	ld	hl, _mus_freq2
	ld	a, [de]
	sub	a, [hl]
	inc	hl
	inc	de
	ld	a, [de]
	sbc	a, [hl]
	jp	NC, .l00109
;music.c:356: mus_freq2 = mus_target2;
	ld	hl, _mus_target2
	ld	a, [hl]
	inc	hl
	ld	e, [hl]
	ld	hl, _mus_freq2
	ld	[hl], a
	inc	hl
	ld	[hl], e
	jp	.l00109
.l00108:
;music.c:359: else if(mus_target2 < mus_freq2) {
	ld	hl, _mus_target2
	ld	d, h
	ld	e, l
	ld	hl, _mus_freq2
	ld	a, [de]
	sub	a, [hl]
	inc	hl
	inc	de
	ld	a, [de]
	sbc	a, [hl]
	jr	NC,.l00109
;music.c:360: mus_freq2 -= mus_slide2;
	ld	hl, _mus_slide2
	ld	c, [hl]
	ld	b, $00
	ld	hl, _mus_freq2
	ld	a, [hl]
	sub	a, c
	ld	[hl], a
	inc	hl
	ld	a, [hl]
	sbc	a, b
	ld	[hl], a
;music.c:361: if(mus_freq2 < mus_target2) {
	dec	hl
	ld	d, h
	ld	e, l
	ld	hl, _mus_target2
	ld	a, [de]
	sub	a, [hl]
	inc	hl
	inc	de
	ld	a, [de]
	sbc	a, [hl]
	jr	NC,.l00109
;music.c:362: mus_freq2 = mus_target2;
	ld	hl, _mus_target2
	ld	a, [hl]
	inc	hl
	ld	e, [hl]
	ld	hl, _mus_freq2
	ld	[hl], a
	inc	hl
	ld	[hl], e
.l00109:
;music.c:365: NR23_REG = (UBYTE)mus_freq2;
	ld	hl, _mus_freq2
	ld	a, [hl]
	ld	hl, $FF18
	ld	[hl], a
;music.c:366: NR24_REG = mus_freq2 >> 8;
	ld	hl, _mus_freq2 + 1
	ld	c, [hl]
	ld	b, $00
	ld	hl, $FF19
	ld	[hl], c
.l00111:
;music.c:369: if(mus_vib_delay2) {
	ld	hl, _mus_vib_delay2
	ld	a, [hl]
	or	a, a
	jr	Z,.l00116
;music.c:370: mus_vib_delay2--;
	dec	[hl]
	jp	.l00117
.l00116:
;music.c:372: else if(mus_vib_speed2) {
	ld	hl, _mus_vib_speed2
	ld	a, [hl]
	or	a, a
	jp	Z, .l00117
;music.c:373: mus_vib_pos2 = (mus_vib_pos2 + mus_vib_speed2) & 63U;
	ld	hl, _mus_vib_pos2
	ld	a, [hl]
	ld	hl, _mus_vib_speed2
	add	a, [hl]
	and	a, $3F
	ld	hl, _mus_vib_pos2
	ld	[hl], a
;music.c:374: tmp_freq = mus_freq2 - *mus_vib_table2 + mus_vib_table2[mus_vib_pos2];
	ld	hl, _mus_vib_table2 + 1
	dec	hl
	ld	c, [hl]
	inc	hl
	ld	b, [hl]
	ld	a, [bc]
	ld	c, a
	ld	b, $00
	ld	hl, _mus_freq2 + 1
	dec	hl
	ld	e, [hl]
	inc	hl
	ld	d, [hl]
	ld	a, e
	sub	a, c
	ld	e, a
	ld	a, d
	sbc	a, b
	ld	hl,sp+1
	ld	[hl], a
	dec	hl
	ld	[hl], e
	ld	hl, _mus_vib_table2
	ld	a, [hl]
	ld	hl, _mus_vib_pos2
	add	a, [hl]
	ld	c, a
	ld	hl, _mus_vib_table2 + 1
	ld	a, [hl]
	adc	a, $00
	ld	b, a
	ld	a, [bc]
	ld	c, a
	ld	b, $00
	pop	hl
	push	hl
	add	hl, bc
	ld	c, l
	ld	b, h
;music.c:376: NR23_REG = (UBYTE)tmp_freq;
	ld	a, c
	ld	hl, $FF18
	ld	[hl], a
;music.c:377: NR24_REG = tmp_freq >> 8;
	ld	c, $00
	ld	l, $19
	ld	[hl], b
.l00117:
;music.c:380: if(mus_wait2) {
	ld	hl, _mus_wait2
	ld	a, [hl]
	or	a, a
	jr	Z,.l00209
;music.c:381: mus_wait2--;
	dec	[hl]
;music.c:382: if(mus_wait2) return;
	ld	a, [hl]
	or	a, a
;music.c:385: while(1U) {
	jp	NZ,.l00192
.l00209:
.l00190:
;music.c:386: note = *mus_data2++;
	ld	hl, _mus_data2 + 1
	dec	hl
	ld	c, [hl]
	inc	hl
	ld	b, [hl]
	ld	a, [bc]
	ld	hl,sp+0
	ld	[hl], a
	ld	hl, _mus_data2
	inc	[hl]
	jr	NZ,.l00336
	inc	hl
	inc	[hl]
.l00336:
;music.c:387: if(note >= MUS_FIRST_NOTE) {
	ld	hl,sp+0
	ld	a, [hl]
	sub	a, $15
	jp	C, .l00135
;music.c:388: if(note & MUS_HAS_LENGTH) {
	bit	7, [hl]
	jr	Z,.l00123
.l00337:
;music.c:389: note ^= MUS_HAS_LENGTH;
	ld	hl,sp+0
	ld	c, [hl]
	ld	b, $00
	ld	a, c
	xor	a, $80
	ld	c, a
	ld	[hl], c
;music.c:390: mus_wait2 = *mus_data2++;
	ld	hl, _mus_data2 + 1
	dec	hl
	ld	c, [hl]
	inc	hl
	ld	b, [hl]
	ld	a, [bc]
	ld	hl, _mus_wait2
	ld	[hl], a
	ld	hl, _mus_data2
	inc	[hl]
	jr	NZ,.l00124
	inc	hl
	inc	[hl]
.l00338:
	jr	.l00124
.l00123:
;music.c:393: mus_wait2 = mus_length2;
	push	hl
	ld	hl, _mus_length2
	ld	a, [hl]
	ld	hl, _mus_wait2
	ld	[hl], a
	pop	hl
.l00124:
;music.c:395: if(note == T_WAIT) {
	ld	hl,sp+0
	ld	a, [hl]
	sub	a, $22
	jr	Z,.l00340
.l00339:
	jr	.l00132
.l00340:
;music.c:396: return;
	jp	.l00192
.l00132:
;music.c:397: } else if(note == T_REST) {
	ld	hl,sp+0
	ld	a, [hl]
	sub	a, $21
	jr	Z,.l00342
.l00341:
	jr	.l00129
.l00342:
;music.c:398: mus_freq2 = 0U;
	ld	hl, _mus_freq2
	ld	[hl], $00
	inc	hl
	ld	[hl], $00
;music.c:399: NR22_REG = 0U;
	ld	hl, $FF17
	ld	[hl], $00
	jp	.l00133
.l00129:
;music.c:401: tmp_freq = freq[(mus_octave2 << 4) + note - MUS_FIRST_NOTE] + mus_po2 - 128U;
	ld	hl, _mus_octave2
	ld	c, [hl]
	ld	b, $00
	sla	c
	rl	b
	sla	c
	rl	b
	sla	c
	rl	b
	sla	c
	rl	b
	ld	hl,sp+0
	ld	a, [hl]
	inc	hl
	inc	hl
	ld	[hl], a
	inc	hl
	ld	[hl], $00
	dec	hl
	ld	a, [hl]
	inc	hl
	ld	h, [hl]
	ld	l, a
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	a, c
	add	a, $EB
	ld	c, a
	ld	a, b
	adc	a, $FF
	ld	b, a
	sla	c
	rl	b
	ld	hl, _freq
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	e, c
	ld	d, b
	ld	a,[de]
	ld	hl,sp+2
	ld	[hl], a
	inc	de
	ld	a,[de]
	inc	hl
	ld	[hl], a
	ld	hl, _mus_po2
	ld	c, [hl]
	ld	b, $00
	ld	hl,sp+2
	ld	a, [hl]
	inc	hl
	ld	h, [hl]
	ld	l, a
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	a, c
	add	a, $80
	ld	c, a
	ld	a, b
	adc	a, $FF
	ld	b, a
;music.c:402: if(mus_porta2) {
	ld	hl, _mus_porta2
	ld	a, [hl]
	or	a, a
	jr	Z,.l00126
;music.c:403: mus_target2 = tmp_freq;
	ld	hl, _mus_target2
	ld	[hl], c
	inc	hl
	ld	[hl], b
	jr	.l00127
.l00126:
;music.c:405: mus_freq2 = tmp_freq;
	ld	hl, _mus_freq2
	ld	[hl], c
	inc	hl
	ld	[hl], b
.l00127:
;music.c:407: NR22_REG = mus_volume2 | mus_env2;
	ld	hl, _mus_volume2
	ld	a, [hl]
	ld	hl, _mus_env2
	or	a, [hl]
	ld	hl, $FF17
	ld	[hl], a
.l00133:
;music.c:409: NR23_REG = (UBYTE)mus_freq2;
	ld	hl, _mus_freq2
	ld	a, [hl]
	ld	hl, $FF18
	ld	[hl], a
;music.c:410: NR24_REG = 0x80U | (mus_freq2 >> 8);
	ld	hl, _mus_freq2 + 1
	ld	c, [hl]
	ld	b, $00
	set	7, c
	ld	hl, $FF19
	ld	[hl], c
;music.c:411: return;
	jp	.l00192
.l00135:
;music.c:413: switch(note) {
	ld	a, $14
	ld	hl,sp+0
	sub	a, [hl]
	jp	C, .l00190
	ld	c, [hl]
	ld	b, $00
	ld	hl, .l00347
	add	hl, bc
	add	hl, bc
	add	hl, bc
	jp	hl
.l00347:
	jp	.l00136
	jp	.l00137
	jp	.l00138
	jp	.l00139
	jp	.l00140
	jp	.l00141
	jp	.l00142
	jp	.l00143
	jp	.l00144
	jp	.l00145
	jp	.l00149
	jp	.l00159
	jp	.l00169
	jp	.l00170
	jp	.l00176
	jp	.l00177
	jp	.l00178
	jp	.l00190
	jp	.l00190
	jp	.l00181
	jp	.l00182
;music.c:414: case T_LENGTH:
.l00136:
;music.c:415: mus_length2 = *mus_data2++;
	ld	hl, _mus_data2 + 1
	dec	hl
	ld	c, [hl]
	inc	hl
	ld	b, [hl]
	ld	a, [bc]
	ld	hl, _mus_length2
	ld	[hl], a
	ld	hl, _mus_data2
	inc	[hl]
	jp	NZ,.l00190
	inc	hl
	inc	[hl]
.l00348:
;music.c:416: break;
	jp	.l00190
;music.c:417: case T_OCTAVE:
.l00137:
;music.c:418: mus_octave2 = *mus_data2++;
	ld	hl, _mus_data2 + 1
	dec	hl
	ld	c, [hl]
	inc	hl
	ld	b, [hl]
	ld	a, [bc]
	ld	hl, _mus_octave2
	ld	[hl], a
	ld	hl, _mus_data2
	inc	[hl]
	jp	NZ,.l00190
	inc	hl
	inc	[hl]
.l00349:
;music.c:419: break;
	jp	.l00190
;music.c:420: case T_OCT_UP:
.l00138:
;music.c:421: mus_octave2++;
	ld	hl, _mus_octave2
	inc	[hl]
;music.c:422: break;
	jp	.l00190
;music.c:423: case T_OCT_DOWN:
.l00139:
;music.c:424: mus_octave2--;
	ld	hl, _mus_octave2
	dec	[hl]
;music.c:425: break;
	jp	.l00190
;music.c:426: case T_VOL:
.l00140:
;music.c:427: mus_volume2 = *mus_data2++;
	ld	hl, _mus_data2 + 1
	dec	hl
	ld	c, [hl]
	inc	hl
	ld	b, [hl]
	ld	a, [bc]
	ld	hl, _mus_volume2
	ld	[hl], a
	ld	hl, _mus_data2
	inc	[hl]
	jr	NZ,.l00350
	inc	hl
	inc	[hl]
.l00350:
;music.c:428: NR22_REG = mus_volume2 | mus_env2;
	ld	hl, _mus_volume2
	ld	a, [hl]
	ld	hl, _mus_env2
	or	a, [hl]
	ld	hl, $FF17
	ld	[hl], a
;music.c:429: break;
	jp	.l00190
;music.c:430: case T_ENV:
.l00141:
;music.c:431: mus_env2 = *mus_data2++;
	ld	hl, _mus_data2 + 1
	dec	hl
	ld	c, [hl]
	inc	hl
	ld	b, [hl]
	ld	a, [bc]
	ld	hl, _mus_env2
	ld	[hl], a
	ld	hl, _mus_data2
	inc	[hl]
	jr	NZ,.l00351
	inc	hl
	inc	[hl]
.l00351:
;music.c:432: NR22_REG = mus_volume2 | mus_env2;
	ld	hl, _mus_volume2
	ld	a, [hl]
	ld	hl, _mus_env2
	or	a, [hl]
	ld	hl, $FF17
	ld	[hl], a
;music.c:433: break;
	jp	.l00190
;music.c:434: case T_WAVEDUTY:
.l00142:
;music.c:435: mus_duty2 = *mus_data2++;
	ld	hl, _mus_data2 + 1
	dec	hl
	ld	c, [hl]
	inc	hl
	ld	b, [hl]
	ld	a, [bc]
	ld	hl, _mus_duty2
	ld	[hl], a
	ld	hl, _mus_data2
	inc	[hl]
	jr	NZ,.l00352
	inc	hl
	inc	[hl]
.l00352:
;music.c:436: NR21_REG = mus_duty2;
	ld	de, $FF16
	ld	hl, _mus_duty2
	ld	a, [hl]
	ld	[de], a
;music.c:437: break;
	jp	.l00190
;music.c:438: case T_PAN:
.l00143:
;music.c:439: mus_pan2 = *mus_data2++;
	ld	hl, _mus_data2 + 1
	dec	hl
	ld	c, [hl]
	inc	hl
	ld	b, [hl]
	ld	a, [bc]
	ld	hl, _mus_pan2
	ld	[hl], a
	ld	hl, _mus_data2
	inc	[hl]
	jr	NZ,.l00353
	inc	hl
	inc	[hl]
.l00353:
;music.c:440: NR51_REG = (NR51_REG & 0xDDU) | (mus_pan2 << 1);
	ld	de, $FF25
	ld	a,[de]
	ld	c, a
	ld	b, $00
	ld	a, c
	and	a, $DD
	ld	c, a
	ld	b, $00
	ld	hl, _mus_pan2
	ld	a, [hl]
	add	a, a
	ld	e, a
	rla
	sbc	a, a
	ld	d, a
	ld	a, c
	or	a, e
	ld	c, a
	ld	a, b
	or	a, d
	ld	hl, $FF25
	ld	[hl], c
;music.c:441: break;
	jp	.l00190
;music.c:442: case T_PORTAMENTO:
.l00144:
;music.c:443: mus_slide2 = mus_porta2 = *mus_data2++;
	ld	hl, _mus_data2 + 1
	dec	hl
	ld	c, [hl]
	inc	hl
	ld	b, [hl]
	ld	a, [bc]
	ld	c, a
	dec	hl
	inc	[hl]
	jr	NZ,.l00354
	inc	hl
	inc	[hl]
.l00354:
	ld	hl, _mus_porta2
	ld	[hl], c
	ld	hl, _mus_slide2
	ld	[hl], c
;music.c:444: break;
	jp	.l00190
;music.c:445: case T_SLIDE:
.l00145:
;music.c:446: mus_slide2 = *mus_data2++;
	ld	hl, _mus_data2 + 1
	dec	hl
	ld	c, [hl]
	inc	hl
	ld	b, [hl]
	ld	a, [bc]
	ld	hl, _mus_slide2
	ld	[hl], a
	ld	hl, _mus_data2
	inc	[hl]
	jr	NZ,.l00355
	inc	hl
	inc	[hl]
.l00355:
;music.c:447: mus_porta2 = 0U;
	ld	hl, _mus_porta2
	ld	[hl], $00
;music.c:448: if(mus_slide2 >= 128U) {
	ld	hl, _mus_slide2
	ld	a, [hl]
	sub	a, $80
	jr	C,.l00147
;music.c:449: mus_target2 = 0xFFFFU;
	ld	hl, _mus_target2
	ld	[hl], $FF
	inc	hl
	ld	[hl], $FF
;music.c:450: mus_slide2 = mus_slide2 - 128U;
	ld	hl, _mus_slide2
	ld	a, [hl]
	add	a, $80
	ld	[hl], a
	jp	.l00190
.l00147:
;music.c:452: mus_target2 = 0U;
	ld	hl, _mus_target2
	ld	[hl], $00
	inc	hl
	ld	[hl], $00
;music.c:453: mus_slide2 = 128U - mus_slide2;
	ld	a, $80
	ld	hl, _mus_slide2
	sub	a, [hl]
	ld	[hl], a
;music.c:455: break;
	jp	.l00190
;music.c:456: case T_VIBRATO:
.l00149:
;music.c:457: mus_vib_pos2 = 0U;
	ld	hl, _mus_vib_pos2
	ld	[hl], $00
;music.c:458: note = *mus_data2++;
	ld	hl, _mus_data2 + 1
	dec	hl
	ld	c, [hl]
	inc	hl
	ld	b, [hl]
	ld	a, [bc]
	ld	c, a
	dec	hl
	inc	[hl]
	jr	NZ,.l00356
	inc	hl
	inc	[hl]
.l00356:
;music.c:459: mus_vib_speed2 = note & 15U; // 0b1111
	ld	a, c
	and	a, $0F
	ld	hl, _mus_vib_speed2
	ld	[hl], a
;music.c:460: note = note >> 4;
	ld	a, c
	swap	a
	and	a, $0F
;music.c:461: if(note == 1U) mus_vib_table2 = vib1;
	cp	a, $01
	jr	Z,.l00358
.l00357:
	jr	.l00157
.l00358:
	ld	hl, _mus_vib_table2
	ld	[hl], _vib1 & $FF
	inc	hl
	ld	[hl], _vib1 >> 8
	jr	.l00158
.l00157:
;music.c:462: else if(note == 2U) mus_vib_table2 = vib2;
	cp	a, $02
	jr	Z,.l00360
.l00359:
	jr	.l00154
.l00360:
	ld	hl, _mus_vib_table2
	ld	[hl], _vib2 & $FF
	inc	hl
	ld	[hl], _vib2 >> 8
	jr	.l00158
.l00154:
;music.c:463: else if(note == 3U) mus_vib_table2 = vib3;
	sub	a, $03
	jr	Z,.l00362
.l00361:
	jr	.l00151
.l00362:
	ld	hl, _mus_vib_table2
	ld	[hl], _vib3 & $FF
	inc	hl
	ld	[hl], _vib3 >> 8
	jr	.l00158
.l00151:
;music.c:464: else mus_vib_table2 = vib4;
	ld	hl, _mus_vib_table2
	ld	[hl], _vib4 & $FF
	inc	hl
	ld	[hl], _vib4 >> 8
.l00158:
;music.c:465: mus_vib_delay2 = 0U;
	ld	hl, _mus_vib_delay2
	ld	[hl], $00
;music.c:466: break;
	jp	.l00190
;music.c:467: case T_VIBRATO_DELAY:
.l00159:
;music.c:468: mus_vib_pos2 = 0U;
	ld	hl, _mus_vib_pos2
	ld	[hl], $00
;music.c:469: note = *mus_data2++;
	ld	hl, _mus_data2 + 1
	dec	hl
	ld	c, [hl]
	inc	hl
	ld	b, [hl]
	ld	a, [bc]
	ld	c, a
	dec	hl
	inc	[hl]
	jr	NZ,.l00363
	inc	hl
	inc	[hl]
.l00363:
;music.c:470: mus_vib_speed2 = note & 15U;
	ld	a, c
	and	a, $0F
	ld	hl, _mus_vib_speed2
	ld	[hl], a
;music.c:471: note = note >> 4;
	ld	a, c
	swap	a
	and	a, $0F
;music.c:472: if(note == 1U) mus_vib_table2 = vib1;
	cp	a, $01
	jr	Z,.l00365
.l00364:
	jr	.l00167
.l00365:
	ld	hl, _mus_vib_table2
	ld	[hl], _vib1 & $FF
	inc	hl
	ld	[hl], _vib1 >> 8
	jr	.l00168
.l00167:
;music.c:473: else if(note == 2U) mus_vib_table2 = vib2;
	cp	a, $02
	jr	Z,.l00367
.l00366:
	jr	.l00164
.l00367:
	ld	hl, _mus_vib_table2
	ld	[hl], _vib2 & $FF
	inc	hl
	ld	[hl], _vib2 >> 8
	jr	.l00168
.l00164:
;music.c:474: else if(note == 3U) mus_vib_table2 = vib3;
	sub	a, $03
	jr	Z,.l00369
.l00368:
	jr	.l00161
.l00369:
	ld	hl, _mus_vib_table2
	ld	[hl], _vib3 & $FF
	inc	hl
	ld	[hl], _vib3 >> 8
	jr	.l00168
.l00161:
;music.c:475: else mus_vib_table2 = vib4;
	ld	hl, _mus_vib_table2
	ld	[hl], _vib4 & $FF
	inc	hl
	ld	[hl], _vib4 >> 8
.l00168:
;music.c:476: mus_vib_delay2 = *mus_data2++;
	ld	hl, _mus_data2 + 1
	dec	hl
	ld	c, [hl]
	inc	hl
	ld	b, [hl]
	ld	a, [bc]
	ld	hl, _mus_vib_delay2
	ld	[hl], a
	ld	hl, _mus_data2
	inc	[hl]
	jp	NZ,.l00190
	inc	hl
	inc	[hl]
.l00370:
;music.c:477: break;
	jp	.l00190
;music.c:478: case T_REP_START:
.l00169:
;music.c:479: mus_rep_depth2++;
	ld	hl, _mus_rep_depth2
	inc	[hl]
;music.c:480: mus_rep2[mus_rep_depth2] = mus_data2;
	ld	c, [hl]
	ld	b, $00
	sla	c
	rl	b
	ld	hl, _mus_rep2
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	hl, _mus_data2
	ld	a, [hl]
	ld	[bc], a
	inc	bc
	inc	hl
	ld	a, [hl]
	ld	[bc], a
;music.c:481: break;
	jp	.l00190
;music.c:482: case T_REP_END:
.l00170:
;music.c:483: note = *mus_data2++;
	ld	hl, _mus_data2 + 1
	dec	hl
	ld	c, [hl]
	inc	hl
	ld	b, [hl]
	ld	a, [bc]
	ld	hl,sp+2
	ld	[hl], a
	ld	hl, _mus_data2
	inc	[hl]
	jr	NZ,.l00373
	inc	hl
	inc	[hl]
.l00373:
;music.c:484: if(!mus_repeats2[mus_rep_depth2]) {
	ld	a, _mus_repeats2 & $FF
	ld	hl, _mus_rep_depth2
	add	a, [hl]
	ld	c, a
	ld	a, _mus_repeats2 >> 8
	adc	a, $00
	ld	b, a
	ld	a, [bc]
	or	a, a
	jr	NZ,.l00172
;music.c:485: mus_repeats2[mus_rep_depth2] = note;
	ld	hl,sp+2
	ld	a, [hl]
	ld	[bc], a
;music.c:486: mus_data2 = mus_rep2[mus_rep_depth2];
	ld	hl, _mus_rep_depth2
	ld	c, [hl]
	ld	b, $00
	sla	c
	rl	b
	ld	hl, _mus_rep2
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	e, c
	ld	d, b
	ld	a,[de]
	ld	hl, _mus_data2
	ld	[hl], a
	inc	de
	ld	a,[de]
	inc	hl
	ld	[hl], a
.l00172:
;music.c:488: mus_repeats2[mus_rep_depth2]--;
	ld	a, _mus_repeats2 & $FF
	ld	hl, _mus_rep_depth2
	add	a, [hl]
	ld	c, a
	ld	a, _mus_repeats2 >> 8
	adc	a, $00
	ld	b, a
	ld	a, [bc]
	dec	a
	ld	[bc], a
;music.c:489: if(mus_repeats2[mus_rep_depth2]) {
	ld	a, _mus_repeats2 & $FF
	add	a, [hl]
	ld	c, a
	ld	a, _mus_repeats2 >> 8
	adc	a, $00
	ld	b, a
	ld	a, [bc]
	or	a, a
	jr	Z,.l00174
;music.c:490: mus_data2 = mus_rep2[mus_rep_depth2];
	ld	c, [hl]
	ld	b, $00
	sla	c
	rl	b
	ld	hl, _mus_rep2
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	e, c
	ld	d, b
	ld	a,[de]
	ld	hl, _mus_data2
	ld	[hl], a
	inc	de
	ld	a,[de]
	inc	hl
	ld	[hl], a
	jp	.l00190
.l00174:
;music.c:492: mus_rep_depth2--;
	ld	hl, _mus_rep_depth2
	dec	[hl]
;music.c:494: break;
	jp	.l00190
;music.c:495: case T_LOOP:
.l00176:
;music.c:496: mus_loop2 = mus_data2;
	ld	hl, _mus_data2
	ld	a, [hl]
	inc	hl
	ld	e, [hl]
	ld	hl, _mus_loop2
	ld	[hl], a
	inc	hl
	ld	[hl], e
;music.c:497: break;
	jp	.l00190
;music.c:498: case T_PITCH_OFFSET:
.l00177:
;music.c:499: mus_po2 = *mus_data2++;
	ld	hl, _mus_data2 + 1
	dec	hl
	ld	c, [hl]
	inc	hl
	ld	b, [hl]
	ld	a, [bc]
	ld	hl, _mus_po2
	ld	[hl], a
	ld	hl, _mus_data2
	inc	[hl]
	jp	NZ,.l00190
	inc	hl
	inc	[hl]
.l00378:
;music.c:500: break;
	jp	.l00190
;music.c:501: case T_TEMPO:
.l00178:
;music.c:502: TMA_REG = *mus_data2++;
	ld	hl, _mus_data2 + 1
	dec	hl
	ld	c, [hl]
	inc	hl
	ld	b, [hl]
	ld	a, [bc]
	ld	c, a
	dec	hl
	inc	[hl]
	jr	NZ,.l00379
	inc	hl
	inc	[hl]
.l00379:
	ld	hl, $FF06
	ld	[hl], c
;music.c:503: break;
	jp	.l00190
;music.c:508: case T_MACRO:
.l00181:
;music.c:509: note = *mus_data2++;
	ld	hl, _mus_data2 + 1
	dec	hl
	ld	c, [hl]
	inc	hl
	ld	b, [hl]
	ld	a, [bc]
	ld	hl,sp+2
	ld	[hl], a
	ld	hl, _mus_data2
	inc	[hl]
	jr	NZ,.l00380
	inc	hl
	inc	[hl]
.l00380:
;music.c:510: mus_data2_bak = mus_data2;
	ld	hl, _mus_data2
	ld	a, [hl]
	inc	hl
	ld	e, [hl]
	ld	hl, _mus_data2_bak
	ld	[hl], a
	inc	hl
	ld	[hl], e
;music.c:511: mus_data2 = mus_song + ((UWORD*)mus_song)[5 + note];
	ld	hl, _mus_song
	ld	a, [hl]
	inc	hl
	ld	e, [hl]
	ld	hl,sp+0
	ld	[hl], a
	inc	hl
	ld	[hl], e
	inc	hl
	ld	a,[hl]
	inc	hl
	ld	[hl], $00
	dec	hl
	ld	e, [hl]
	inc	hl
	ld	d, [hl]
	ld	hl, $0005
	add	hl, de
	ld	a, l
	ld	d, h
	ld	hl,sp+2
	ld	[hl], a
	inc	hl
	ld	[hl], d
	dec	hl
	ld	c, [hl]
	inc	hl
	ld	b, [hl]
	sla	c
	rl	b
	pop	hl
	push	hl
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	e, c
	ld	d, b
	ld	a,[de]
	ld	c, a
	inc	de
	ld	a,[de]
	ld	b, a
	ld	hl, _mus_song
	ld	a, [hl]
	add	a, c
	ld	hl, _mus_data2
	ld	[hl], a
	ld	hl, _mus_song + 1
	ld	a, [hl]
	adc	a, b
	ld	hl, _mus_data2 + 1
	ld	[hl], a
;music.c:512: mus_macro2 = 1U;
	ld	hl, _mus_macro2
	ld	[hl], $01
;music.c:513: break;
	jp	.l00190
;music.c:514: case T_EOF:
.l00182:
;music.c:515: if(mus_macro2) {
	ld	hl, _mus_macro2
	ld	a, [hl]
	or	a, a
	jr	Z,.l00186
;music.c:516: mus_data2 = mus_data2_bak;
	ld	hl, _mus_data2_bak
	ld	a, [hl]
	inc	hl
	ld	e, [hl]
	ld	hl, _mus_data2
	ld	[hl], a
	inc	hl
	ld	[hl], e
;music.c:517: mus_macro2 = 0U;
	ld	hl, _mus_macro2
	ld	[hl], $00
	jp	.l00190
.l00186:
;music.c:519: mus_data2 = mus_loop2;
	ld	hl, _mus_loop2
	ld	a, [hl]
	inc	hl
	ld	e, [hl]
	ld	hl, _mus_data2
	ld	[hl], a
	inc	hl
	ld	[hl], e
;music.c:520: mus_done2 = 1U;
	ld	hl, _mus_done2
	ld	[hl], $01
;music.c:521: if(*mus_data2 == T_EOF) {
	ld	hl, _mus_data2 + 1
	dec	hl
	ld	c, [hl]
	inc	hl
	ld	b, [hl]
	ld	a, [bc]
	sub	a, $14
	jr	Z,.l00384
.l00383:
	jp	.l00190
.l00384:
;music.c:522: mus_wait2 = 255U;
	ld	hl, _mus_wait2
	ld	[hl], $FF
;music.c:523: return;
;music.c:527: }
.l00192:
;music.c:529: }
	add	sp, 4
	ret
;music.c:531: void mus_update3() {
;	---------------------------------
; Function mus_update3
; ---------------------------------
_mus_update3::
	add	sp, -5
;music.c:534: if(mus_wait3) {
	ld	hl, _mus_wait3
	ld	a, [hl]
	or	a, a
	jr	Z,.l00159
;music.c:535: mus_wait3--;
	dec	[hl]
;music.c:536: if(mus_wait3) return;
	ld	a, [hl]
	or	a, a
;music.c:539: while(1U) {
	jp	NZ,.l00151
.l00159:
.l00149:
;music.c:540: note = *mus_data3++;
	ld	hl, _mus_data3 + 1
	dec	hl
	ld	c, [hl]
	inc	hl
	ld	b, [hl]
	ld	a, [bc]
	ld	hl,sp+4
	ld	[hl], a
	ld	hl, _mus_data3
	inc	[hl]
	jr	NZ,.l00213
	inc	hl
	inc	[hl]
.l00213:
;music.c:541: if(note >= MUS_FIRST_NOTE) {
	ld	hl,sp+4
	ld	a, [hl]
	sub	a, $15
	jp	C, .l00115
;music.c:542: if(note & MUS_HAS_LENGTH) {
	bit	7, [hl]
	jr	Z,.l00106
.l00214:
;music.c:543: note ^= MUS_HAS_LENGTH;
	ld	hl,sp+4
	ld	c, [hl]
	ld	b, $00
	ld	a, c
	xor	a, $80
	ld	c, a
	ld	[hl], c
;music.c:544: mus_wait3 = *mus_data3++;
	ld	hl, _mus_data3 + 1
	dec	hl
	ld	c, [hl]
	inc	hl
	ld	b, [hl]
	ld	a, [bc]
	ld	hl, _mus_wait3
	ld	[hl], a
	ld	hl, _mus_data3
	inc	[hl]
	jr	NZ,.l00107
	inc	hl
	inc	[hl]
.l00215:
	jr	.l00107
.l00106:
;music.c:546: mus_wait3 = mus_length3;
	push	hl
	ld	hl, _mus_length3
	ld	a, [hl]
	ld	hl, _mus_wait3
	ld	[hl], a
	pop	hl
.l00107:
;music.c:548: if(note == T_WAIT) {
	ld	hl,sp+4
	ld	a, [hl]
	sub	a, $22
	jr	Z,.l00217
.l00216:
	jr	.l00112
.l00217:
;music.c:549: return;
	jp	.l00151
.l00112:
;music.c:550: } else if(note == T_REST) {
	ld	hl,sp+4
	ld	a, [hl]
	sub	a, $21
	jr	Z,.l00219
.l00218:
	jr	.l00109
.l00219:
;music.c:551: mus_freq3 = 0U;
	ld	hl, _mus_freq3
	ld	[hl], $00
	inc	hl
	ld	[hl], $00
;music.c:552: NR32_REG = 0U;
	ld	hl, $FF1C
	ld	[hl], $00
	jp	.l00113
.l00109:
;music.c:554: mus_freq3 = freq[(mus_octave3 << 4) + note - MUS_FIRST_NOTE] + mus_po3 - 128U;
	ld	hl, _mus_octave3
	ld	c, [hl]
	ld	b, $00
	sla	c
	rl	b
	sla	c
	rl	b
	sla	c
	rl	b
	sla	c
	rl	b
	ld	hl,sp+4
	ld	a, [hl]
	ld	hl,sp+0
	ld	[hl], a
	inc	hl
	ld	[hl], $00
	pop	hl
	push	hl
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	a, c
	add	a, $EB
	ld	c, a
	ld	a, b
	adc	a, $FF
	ld	b, a
	sla	c
	rl	b
	ld	hl, _freq
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	e, c
	ld	d, b
	ld	a,[de]
	ld	hl,sp+0
	ld	[hl], a
	inc	de
	ld	a,[de]
	inc	hl
	ld	[hl], a
	ld	hl, _mus_po3
	ld	c, [hl]
	ld	b, $00
	pop	hl
	push	hl
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	a, c
	add	a, $80
	ld	hl, _mus_freq3
	ld	[hl], a
	ld	a, b
	adc	a, $FF
	inc	hl
	ld	[hl], a
;music.c:555: NR32_REG = mus_volume3;
	ld	de, $FF1C
	ld	hl, _mus_volume3
	ld	a, [hl]
	ld	[de], a
.l00113:
;music.c:557: NR30_REG = 0x0U;
	ld	hl, $FF1A
	ld	[hl], $00
;music.c:558: NR30_REG = 0x80U;
	ld	l, $1A
	ld	[hl], $80
;music.c:559: NR33_REG = (UBYTE)mus_freq3;
	ld	hl, _mus_freq3
	ld	a, [hl]
	ld	hl, $FF1D
	ld	[hl], a
;music.c:560: NR34_REG = 0x80U | (mus_freq3 >> 8);
	ld	hl, _mus_freq3 + 1
	ld	c, [hl]
	ld	b, $00
	set	7, c
	ld	hl, $FF1E
	ld	[hl], c
;music.c:561: return;
	jp	.l00151
.l00115:
;music.c:563: switch(note) {
	ld	a, $14
	ld	hl,sp+4
	sub	a, [hl]
	jp	C, .l00149
	ld	c, [hl]
	ld	b, $00
	ld	hl, .l00224
	add	hl, bc
	add	hl, bc
	add	hl, bc
	jp	hl
.l00224:
	jp	.l00116
	jp	.l00117
	jp	.l00118
	jp	.l00119
	jp	.l00120
	jp	.l00149
	jp	.l00149
	jp	.l00123
	jp	.l00149
	jp	.l00149
	jp	.l00149
	jp	.l00149
	jp	.l00128
	jp	.l00129
	jp	.l00135
	jp	.l00136
	jp	.l00137
	jp	.l00149
	jp	.l00139
	jp	.l00140
	jp	.l00141
;music.c:564: case T_LENGTH:
.l00116:
;music.c:565: mus_length3 = *mus_data3++;
	ld	hl, _mus_data3 + 1
	dec	hl
	ld	c, [hl]
	inc	hl
	ld	b, [hl]
	ld	a, [bc]
	ld	hl, _mus_length3
	ld	[hl], a
	ld	hl, _mus_data3
	inc	[hl]
	jp	NZ,.l00149
	inc	hl
	inc	[hl]
.l00225:
;music.c:566: break;
	jp	.l00149
;music.c:567: case T_OCTAVE:
.l00117:
;music.c:568: mus_octave3 = *mus_data3++;
	ld	hl, _mus_data3 + 1
	dec	hl
	ld	c, [hl]
	inc	hl
	ld	b, [hl]
	ld	a, [bc]
	ld	hl, _mus_octave3
	ld	[hl], a
	ld	hl, _mus_data3
	inc	[hl]
	jp	NZ,.l00149
	inc	hl
	inc	[hl]
.l00226:
;music.c:569: break;
	jp	.l00149
;music.c:570: case T_OCT_UP:
.l00118:
;music.c:571: mus_octave3++;
	ld	hl, _mus_octave3
	inc	[hl]
;music.c:572: break;
	jp	.l00149
;music.c:573: case T_OCT_DOWN:
.l00119:
;music.c:574: mus_octave3--;
	ld	hl, _mus_octave3
	dec	[hl]
;music.c:575: break;
	jp	.l00149
;music.c:576: case T_VOL:
.l00120:
;music.c:577: mus_volume3 = *mus_data3++;
	ld	hl, _mus_data3 + 1
	dec	hl
	ld	c, [hl]
	inc	hl
	ld	b, [hl]
	ld	a, [bc]
	ld	hl, _mus_volume3
	ld	[hl], a
	ld	hl, _mus_data3
	inc	[hl]
	jp	NZ,.l00149
	inc	hl
	inc	[hl]
.l00227:
;music.c:578: break;
	jp	.l00149
;music.c:583: case T_PAN:
.l00123:
;music.c:584: mus_pan3 = *mus_data3++;
	ld	hl, _mus_data3 + 1
	dec	hl
	ld	c, [hl]
	inc	hl
	ld	b, [hl]
	ld	a, [bc]
	ld	hl, _mus_pan3
	ld	[hl], a
	ld	hl, _mus_data3
	inc	[hl]
	jr	NZ,.l00228
	inc	hl
	inc	[hl]
.l00228:
;music.c:585: NR51_REG = (NR51_REG & 0xBBU) | (mus_pan3 << 2);
	ld	de, $FF25
	ld	a,[de]
	ld	c, a
	ld	b, $00
	ld	a, c
	and	a, $BB
	ld	hl,sp+0
	ld	[hl], a
	inc	hl
	ld	[hl], $00
	push	hl
	ld	hl, _mus_pan3
	ld	a, [hl]
	ld	hl,sp+6
	ld	[hl], a
	pop	hl
	ld	hl,sp+4
	sla	[hl]
	sla	[hl]
	ld	a, [hl]
	dec	hl
	dec	hl
	ld	[hl], a
	rla
	sbc	a, a
	inc	hl
	ld	[hl], a
	dec	hl
	ld	a, [hl]
	dec	hl
	dec	hl
	or	a, [hl]
	inc	hl
	inc	hl
	ld	[hl], a
	inc	hl
	ld	a, [hl]
	dec	hl
	dec	hl
	or	a, [hl]
	inc	hl
	inc	hl
	ld	[hl], a
	dec	hl
	ld	a, [hl]
	ld	hl, $FF25
	ld	[hl], a
;music.c:586: break;
	jp	.l00149
;music.c:595: case T_REP_START:
.l00128:
;music.c:596: mus_rep_depth3++;
	ld	hl, _mus_rep_depth3
	inc	[hl]
;music.c:597: mus_rep3[mus_rep_depth3] = mus_data3;
	ld	a, [hl]
	ld	hl,sp+2
	ld	[hl], a
	inc	hl
	ld	[hl], $00
	dec	hl
	sla	[hl]
	inc	hl
	rl	[hl]
	dec	hl
	ld	e, [hl]
	inc	hl
	ld	d, [hl]
	ld	hl, _mus_rep3
	add	hl, de
	ld	a, l
	ld	d, h
	ld	hl,sp+2
	ld	[hl], a
	inc	hl
	ld	[hl], d
	pop	bc
	pop	de
	push	de
	push	bc
	ld	hl, _mus_data3
	ld	a, [hl]
	ld	[de], a
	inc	de
	inc	hl
	ld	a, [hl]
	ld	[de], a
;music.c:598: break;
	jp	.l00149
;music.c:599: case T_REP_END:
.l00129:
;music.c:600: note = *mus_data3++;
	ld	hl, _mus_data3 + 1
	dec	hl
	ld	c, [hl]
	inc	hl
	ld	b, [hl]
	ld	a, [bc]
	ld	hl,sp+2
	ld	[hl], a
	ld	hl, _mus_data3
	inc	[hl]
	jr	NZ,.l00231
	inc	hl
	inc	[hl]
.l00231:
;music.c:601: if(!mus_repeats3[mus_rep_depth3]) {
	ld	a, _mus_repeats3 & $FF
	ld	hl, _mus_rep_depth3
	add	a, [hl]
	ld	c, a
	ld	a, _mus_repeats3 >> 8
	adc	a, $00
	ld	b, a
	ld	a, [bc]
	or	a, a
	jr	NZ,.l00131
;music.c:602: mus_repeats3[mus_rep_depth3] = note;
	ld	hl,sp+2
	ld	a, [hl]
	ld	[bc], a
;music.c:603: mus_data3 = mus_rep3[mus_rep_depth3];
	ld	hl, _mus_rep_depth3
	ld	c, [hl]
	ld	b, $00
	sla	c
	rl	b
	ld	hl, _mus_rep3
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	e, c
	ld	d, b
	ld	a,[de]
	ld	hl, _mus_data3
	ld	[hl], a
	inc	de
	ld	a,[de]
	inc	hl
	ld	[hl], a
.l00131:
;music.c:605: mus_repeats3[mus_rep_depth3]--;
	ld	a, _mus_repeats3 & $FF
	ld	hl, _mus_rep_depth3
	add	a, [hl]
	ld	c, a
	ld	a, _mus_repeats3 >> 8
	adc	a, $00
	ld	b, a
	ld	a, [bc]
	dec	a
	ld	[bc], a
;music.c:606: if(mus_repeats3[mus_rep_depth3]) {
	ld	a, _mus_repeats3 & $FF
	add	a, [hl]
	ld	c, a
	ld	a, _mus_repeats3 >> 8
	adc	a, $00
	ld	b, a
	ld	a, [bc]
	or	a, a
	jr	Z,.l00133
;music.c:607: mus_data3 = mus_rep3[mus_rep_depth3];
	ld	c, [hl]
	ld	b, $00
	sla	c
	rl	b
	ld	hl, _mus_rep3
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	e, c
	ld	d, b
	ld	a,[de]
	ld	hl, _mus_data3
	ld	[hl], a
	inc	de
	ld	a,[de]
	inc	hl
	ld	[hl], a
	jp	.l00149
.l00133:
;music.c:609: mus_rep_depth3--;
	ld	hl, _mus_rep_depth3
	dec	[hl]
;music.c:611: break;
	jp	.l00149
;music.c:612: case T_LOOP:
.l00135:
;music.c:613: mus_loop3 = mus_data3;
	ld	hl, _mus_data3
	ld	a, [hl]
	inc	hl
	ld	e, [hl]
	ld	hl, _mus_loop3
	ld	[hl], a
	inc	hl
	ld	[hl], e
;music.c:614: break;
	jp	.l00149
;music.c:615: case T_PITCH_OFFSET:
.l00136:
;music.c:616: mus_po3 = *mus_data3++;
	ld	hl, _mus_data3 + 1
	dec	hl
	ld	c, [hl]
	inc	hl
	ld	b, [hl]
	ld	a, [bc]
	ld	hl, _mus_po3
	ld	[hl], a
	ld	hl, _mus_data3
	inc	[hl]
	jp	NZ,.l00149
	inc	hl
	inc	[hl]
.l00236:
;music.c:617: break;
	jp	.l00149
;music.c:618: case T_TEMPO:
.l00137:
;music.c:619: TMA_REG = *mus_data3++;
	ld	hl, _mus_data3 + 1
	dec	hl
	ld	c, [hl]
	inc	hl
	ld	b, [hl]
	ld	a, [bc]
	ld	c, a
	dec	hl
	inc	[hl]
	jr	NZ,.l00237
	inc	hl
	inc	[hl]
.l00237:
	ld	hl, $FF06
	ld	[hl], c
;music.c:620: break;
	jp	.l00149
;music.c:623: case T_WAVE:
.l00139:
;music.c:624: note = *mus_data3++;
	ld	hl, _mus_data3 + 1
	dec	hl
	ld	c, [hl]
	inc	hl
	ld	b, [hl]
	ld	a, [bc]
	ld	c, a
	dec	hl
	inc	[hl]
	jr	NZ,.l00238
	inc	hl
	inc	[hl]
.l00238:
;music.c:625: NR30_REG = 0x0U;
	ld	hl, $FF1A
	ld	[hl], $00
;music.c:626: memcpy(0xFF30, mus_wave + (note << 4), 16U);
	ld	hl,sp+2
	ld	[hl], c
	inc	hl
	ld	[hl], $00
	ld	a, $04+1
	jr	.l00240
.l00239:
	dec	hl
	sla	[hl]
	inc	hl
	rl	[hl]
.l00240:
	dec	a
	jr	NZ,.l00239
	dec	hl
	ld	e, [hl]
	inc	hl
	ld	d, [hl]
	ld	hl, _mus_wave
	ld	a, [hl]
	inc	hl
	ld	h, [hl]
	ld	l, a
	add	hl, de
	ld	a, l
	ld	d, h
	ld	hl,sp+2
	ld	[hl], a
	inc	hl
	ld	[hl], d
	dec	hl
	ld	c, [hl]
	inc	hl
	ld	b, [hl]
	ld	hl, $0010
	push	hl
	push	bc
	ld	hl, $FF30
	push	hl
	call	_memcpy
	add	sp, 6
;music.c:627: NR30_REG = 0x80U;
	ld	hl, $FF1A
	ld	[hl], $80
;music.c:628: break;
	jp	.l00149
;music.c:629: case T_MACRO:
.l00140:
;music.c:630: note = *mus_data3++;
	ld	hl, _mus_data3 + 1
	dec	hl
	ld	c, [hl]
	inc	hl
	ld	b, [hl]
	ld	a, [bc]
	ld	hl,sp+2
	ld	[hl], a
	ld	hl, _mus_data3
	inc	[hl]
	jr	NZ,.l00241
	inc	hl
	inc	[hl]
.l00241:
;music.c:631: mus_data3_bak = mus_data3;
	ld	hl, _mus_data3
	ld	a, [hl]
	inc	hl
	ld	e, [hl]
	ld	hl, _mus_data3_bak
	ld	[hl], a
	inc	hl
	ld	[hl], e
;music.c:632: mus_data3 = mus_song + ((UWORD*)mus_song)[5 + note];
	ld	hl, _mus_song
	ld	a, [hl]
	inc	hl
	ld	e, [hl]
	ld	hl,sp+0
	ld	[hl], a
	inc	hl
	ld	[hl], e
	inc	hl
	ld	a,[hl]
	inc	hl
	ld	[hl], $00
	dec	hl
	ld	e, [hl]
	inc	hl
	ld	d, [hl]
	ld	hl, $0005
	add	hl, de
	ld	a, l
	ld	d, h
	ld	hl,sp+2
	ld	[hl], a
	inc	hl
	ld	[hl], d
	dec	hl
	ld	c, [hl]
	inc	hl
	ld	b, [hl]
	sla	c
	rl	b
	pop	hl
	push	hl
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	e, c
	ld	d, b
	ld	a,[de]
	ld	c, a
	inc	de
	ld	a,[de]
	ld	b, a
	ld	hl, _mus_song
	ld	a, [hl]
	add	a, c
	ld	hl, _mus_data3
	ld	[hl], a
	ld	hl, _mus_song + 1
	ld	a, [hl]
	adc	a, b
	ld	hl, _mus_data3 + 1
	ld	[hl], a
;music.c:633: mus_macro3 = 1U;
	ld	hl, _mus_macro3
	ld	[hl], $01
;music.c:634: break;
	jp	.l00149
;music.c:635: case T_EOF:
.l00141:
;music.c:636: if(mus_macro3) {
	ld	hl, _mus_macro3
	ld	a, [hl]
	or	a, a
	jr	Z,.l00145
;music.c:637: mus_data3 = mus_data3_bak;
	ld	hl, _mus_data3_bak
	ld	a, [hl]
	inc	hl
	ld	e, [hl]
	ld	hl, _mus_data3
	ld	[hl], a
	inc	hl
	ld	[hl], e
;music.c:638: mus_macro3 = 0U;
	ld	hl, _mus_macro3
	ld	[hl], $00
	jp	.l00149
.l00145:
;music.c:640: mus_data3 = mus_loop3;
	ld	hl, _mus_loop3
	ld	a, [hl]
	inc	hl
	ld	e, [hl]
	ld	hl, _mus_data3
	ld	[hl], a
	inc	hl
	ld	[hl], e
;music.c:641: mus_done3 = 1U;
	ld	hl, _mus_done3
	ld	[hl], $01
;music.c:642: if(*mus_data3 == T_EOF) {
	ld	hl, _mus_data3 + 1
	dec	hl
	ld	c, [hl]
	inc	hl
	ld	b, [hl]
	ld	a, [bc]
	sub	a, $14
	jr	Z,.l00245
.l00244:
	jp	.l00149
.l00245:
;music.c:643: mus_wait3 = 255U;
	ld	hl, _mus_wait3
	ld	[hl], $FF
;music.c:644: return;
;music.c:648: }
.l00151:
;music.c:650: }
	add	sp, 5
	ret
;music.c:652: void mus_update4() {
;	---------------------------------
; Function mus_update4
; ---------------------------------
_mus_update4::
	add	sp, -6
;music.c:655: if(mus_slide4 && !(mus_step & 3U)) {
	ld	hl, _mus_slide4
	ld	a, [hl]
	or	a, a
	jp	Z, .l00113
	ld	hl, _mus_step
	ld	a, [hl]
	and	a, $03
	jr	Z,.l00328
.l00327:
	jp	.l00113
.l00328:
;music.c:656: if(mus_target4 > mus_freq4) {
	ld	hl, _mus_freq4
	ld	a, [hl]
	ld	hl, _mus_target4
	sub	a, [hl]
	jr	NC,.l00108
;music.c:657: mus_freq4 += mus_slide4;
	ld	hl, _mus_freq4
	ld	a, [hl]
	ld	hl, _mus_slide4
	add	a, [hl]
	ld	hl, _mus_freq4
	ld	[hl], a
;music.c:658: if(mus_freq4 > mus_target4) {
	ld	hl, _mus_target4
	ld	a, [hl]
	ld	hl, _mus_freq4
	sub	a, [hl]
	jr	NC,.l00109
;music.c:659: mus_freq4 = mus_target4;
	push	hl
	ld	hl, _mus_target4
	ld	a, [hl]
	ld	hl, _mus_freq4
	ld	[hl], a
	pop	hl
	jr	.l00109
.l00108:
;music.c:662: else if(mus_target4 < mus_freq4) {
	ld	hl, _mus_target4
	ld	a, [hl]
	ld	hl, _mus_freq4
	sub	a, [hl]
	jr	NC,.l00109
;music.c:663: mus_freq4 -= mus_slide4;
	ld	a, [hl]
	ld	hl, _mus_slide4
	sub	a, [hl]
	ld	hl, _mus_freq4
;music.c:664: if(mus_freq4 < mus_target4) {
	ld	[hl],a
	ld	hl, _mus_target4
	sub	a, [hl]
	jr	NC,.l00109
;music.c:665: mus_freq4 = mus_target4;
	push	hl
	ld	a, [hl]
	ld	hl, _mus_freq4
	ld	[hl], a
	pop	hl
.l00109:
;music.c:668: if(mus_enabled4) NR43_REG = mus_freq4 | mus_noise_step;
	ld	hl, _mus_enabled4
	ld	a, [hl]
	or	a, a
	jr	Z,.l00113
	ld	hl, _mus_freq4
	ld	a, [hl]
	ld	hl, _mus_noise_step
	or	a, [hl]
	ld	hl, $FF22
	ld	[hl], a
.l00113:
;music.c:671: if(mus_wait4) {
	ld	hl, _mus_wait4
	ld	a, [hl]
	or	a, a
	jr	Z,.l00205
;music.c:672: mus_wait4--;
	dec	[hl]
;music.c:673: if(mus_wait4) return;
	ld	a, [hl]
	or	a, a
;music.c:676: while(1U) {
	jp	NZ,.l00185
.l00205:
.l00183:
;music.c:677: note = *mus_data4++;
	ld	hl, _mus_data4 + 1
	dec	hl
	ld	c, [hl]
	inc	hl
	ld	b, [hl]
	ld	a, [bc]
	ld	hl,sp+0
	ld	[hl], a
	ld	hl, _mus_data4
	inc	[hl]
	jr	NZ,.l00329
	inc	hl
	inc	[hl]
.l00329:
;music.c:678: if(note >= MUS_FIRST_NOTE) {
	ld	hl,sp+0
	ld	a, [hl]
	sub	a, $15
	jp	C, .l00140
;music.c:679: if(note & MUS_HAS_LENGTH) {
	bit	7, [hl]
	jr	Z,.l00120
.l00330:
;music.c:680: note ^= MUS_HAS_LENGTH;
	ld	hl,sp+0
	ld	c, [hl]
	ld	b, $00
	ld	a, c
	xor	a, $80
	ld	c, a
	ld	[hl], c
;music.c:681: mus_wait4 = *mus_data4++;
	ld	hl, _mus_data4 + 1
	dec	hl
	ld	c, [hl]
	inc	hl
	ld	b, [hl]
	ld	a, [bc]
	ld	hl, _mus_wait4
	ld	[hl], a
	ld	hl, _mus_data4
	inc	[hl]
	jr	NZ,.l00121
	inc	hl
	inc	[hl]
.l00331:
	jr	.l00121
.l00120:
;music.c:683: mus_wait4 = mus_length4;
	push	hl
	ld	hl, _mus_length4
	ld	a, [hl]
	ld	hl, _mus_wait4
	ld	[hl], a
	pop	hl
.l00121:
;music.c:685: if(note == T_WAIT) {
	ld	hl,sp+0
	ld	a, [hl]
	sub	a, $22
	jr	Z,.l00333
.l00332:
	jr	.l00133
.l00333:
;music.c:686: return;
	jp	.l00185
.l00133:
;music.c:687: } else if(note == T_REST) {
	ld	hl,sp+0
	ld	a, [hl]
	sub	a, $21
	jr	Z,.l00335
.l00334:
	jr	.l00130
.l00335:
;music.c:688: mus_freq4 = 0U;
	ld	hl, _mus_freq4
	ld	[hl], $00
;music.c:689: if(mus_enabled4) NR42_REG = 0U;
	ld	hl, _mus_enabled4
	ld	a, [hl]
	or	a, a
	jp	Z, .l00134
	ld	hl, $FF21
	ld	[hl], $00
	jp	.l00134
.l00130:
;music.c:691: tmp_freq = noise_freq[((mus_octave4-MUS_NOISE_FIRST_OCTAVE) << 4) + note - MUS_FIRST_NOTE];
	ld	hl, _mus_octave4
	ld	c, [hl]
	ld	b, $00
	dec	bc
	sla	c
	rl	b
	sla	c
	rl	b
	sla	c
	rl	b
	sla	c
	rl	b
	ld	hl,sp+0
	ld	e, [hl]
	ld	d, $00
	inc	hl
	ld	[hl], e
	inc	hl
	ld	[hl], d
	dec	hl
	ld	a, [hl]
	inc	hl
	ld	h, [hl]
	ld	l, a
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	a, c
	add	a, $EB
	ld	c, a
	ld	a, b
	adc	a, $FF
	ld	b, a
	ld	hl, _noise_freq
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	a, [bc]
	ld	c, a
;music.c:692: if(mus_porta4) {
	ld	hl, _mus_porta4
	ld	a, [hl]
	or	a, a
	jr	Z,.l00125
;music.c:693: mus_target4 = tmp_freq;
	ld	hl, _mus_target4
	ld	[hl], c
	jr	.l00126
.l00125:
;music.c:695: mus_freq4 = tmp_freq;
	ld	hl, _mus_freq4
	ld	[hl], c
.l00126:
;music.c:697: if(mus_enabled4) NR42_REG = mus_volume4 | mus_env4;
	ld	hl, _mus_enabled4
	ld	a, [hl]
	or	a, a
	jr	Z,.l00134
	ld	hl, _mus_volume4
	ld	a, [hl]
	ld	hl, _mus_env4
	or	a, [hl]
	ld	hl, $FF21
	ld	[hl], a
.l00134:
;music.c:699: if(mus_enabled4) {
	ld	hl, _mus_enabled4
	ld	a, [hl]
	or	a, a
	jr	Z,.l00138
;music.c:700: if(mus_enabled4 == 2U) {
	ld	a, [hl]
	sub	a, $02
	jr	Z,.l00339
.l00338:
	jr	.l00136
.l00339:
;music.c:701: mus_enabled4--;
	ld	hl, _mus_enabled4
	dec	[hl]
;music.c:702: NR42_REG = mus_volume4 | mus_env4;
	ld	hl, _mus_volume4
	ld	a, [hl]
	ld	hl, _mus_env4
	or	a, [hl]
	ld	hl, $FF21
	ld	[hl], a
.l00136:
;music.c:704: NR43_REG = mus_freq4 | mus_noise_step;
	ld	hl, _mus_freq4
	ld	a, [hl]
	ld	hl, _mus_noise_step
	or	a, [hl]
	ld	hl, $FF22
	ld	[hl], a
;music.c:705: NR44_REG = 0x80U;
	ld	l, $23
	ld	[hl], $80
.l00138:
;music.c:707: return;
	jp	.l00185
.l00140:
;music.c:709: switch(note) {
	ld	a, $14
	ld	hl,sp+0
	sub	a, [hl]
	jp	C, .l00183
	ld	c, [hl]
	ld	b, $00
	ld	hl, .l00340
	add	hl, bc
	add	hl, bc
	add	hl, bc
	jp	hl
.l00340:
	jp	.l00141
	jp	.l00142
	jp	.l00143
	jp	.l00144
	jp	.l00145
	jp	.l00148
	jp	.l00183
	jp	.l00152
	jp	.l00155
	jp	.l00156
	jp	.l00183
	jp	.l00183
	jp	.l00162
	jp	.l00163
	jp	.l00169
	jp	.l00183
	jp	.l00171
	jp	.l00172
	jp	.l00183
	jp	.l00174
	jp	.l00175
;music.c:710: case T_LENGTH:
.l00141:
;music.c:711: mus_length4 = *mus_data4++;
	ld	hl, _mus_data4 + 1
	dec	hl
	ld	c, [hl]
	inc	hl
	ld	b, [hl]
	ld	a, [bc]
	ld	hl, _mus_length4
	ld	[hl], a
	ld	hl, _mus_data4
	inc	[hl]
	jp	NZ,.l00183
	inc	hl
	inc	[hl]
.l00341:
;music.c:712: break;
	jp	.l00183
;music.c:713: case T_OCTAVE:
.l00142:
;music.c:714: mus_octave4 = *mus_data4++;
	ld	hl, _mus_data4 + 1
	dec	hl
	ld	c, [hl]
	inc	hl
	ld	b, [hl]
	ld	a, [bc]
	ld	hl, _mus_octave4
	ld	[hl], a
	ld	hl, _mus_data4
	inc	[hl]
	jp	NZ,.l00183
	inc	hl
	inc	[hl]
.l00342:
;music.c:715: break;
	jp	.l00183
;music.c:716: case T_OCT_UP:
.l00143:
;music.c:717: mus_octave4++;
	ld	hl, _mus_octave4
	inc	[hl]
;music.c:718: break;
	jp	.l00183
;music.c:719: case T_OCT_DOWN:
.l00144:
;music.c:720: mus_octave4--;
	ld	hl, _mus_octave4
	dec	[hl]
;music.c:721: break;
	jp	.l00183
;music.c:722: case T_VOL:
.l00145:
;music.c:723: mus_volume4 = *mus_data4++;
	ld	hl, _mus_data4 + 1
	dec	hl
	ld	c, [hl]
	inc	hl
	ld	b, [hl]
	ld	a, [bc]
	ld	hl, _mus_volume4
	ld	[hl], a
	ld	hl, _mus_data4
	inc	[hl]
	jr	NZ,.l00343
	inc	hl
	inc	[hl]
.l00343:
;music.c:724: if(mus_enabled4) NR42_REG = mus_volume4 | mus_env4;
	ld	hl, _mus_enabled4
	ld	a, [hl]
	or	a, a
	jp	Z, .l00183
	ld	hl, _mus_volume4
	ld	a, [hl]
	ld	hl, _mus_env4
	or	a, [hl]
	ld	hl, $FF21
	ld	[hl], a
;music.c:725: break;
	jp	.l00183
;music.c:726: case T_ENV:
.l00148:
;music.c:727: mus_env4 = *mus_data4++;
	ld	hl, _mus_data4 + 1
	dec	hl
	ld	c, [hl]
	inc	hl
	ld	b, [hl]
	ld	a, [bc]
	ld	hl, _mus_env4
	ld	[hl], a
	ld	hl, _mus_data4
	inc	[hl]
	jr	NZ,.l00344
	inc	hl
	inc	[hl]
.l00344:
;music.c:728: if(mus_enabled4) NR42_REG = mus_volume4 | mus_env4;
	ld	hl, _mus_enabled4
	ld	a, [hl]
	or	a, a
	jp	Z, .l00183
	ld	hl, _mus_volume4
	ld	a, [hl]
	ld	hl, _mus_env4
	or	a, [hl]
	ld	hl, $FF21
	ld	[hl], a
;music.c:729: break;
	jp	.l00183
;music.c:732: case T_PAN:
.l00152:
;music.c:733: mus_pan4 = *mus_data4++;
	ld	hl, _mus_data4 + 1
	dec	hl
	ld	c, [hl]
	inc	hl
	ld	b, [hl]
	ld	a, [bc]
	ld	hl, _mus_pan4
	ld	[hl], a
	ld	hl, _mus_data4
	inc	[hl]
	jr	NZ,.l00345
	inc	hl
	inc	[hl]
.l00345:
;music.c:734: if(mus_enabled4) NR51_REG = (NR51_REG & 0x77U) | (mus_pan4 << 3);
	ld	hl, _mus_enabled4
	ld	a, [hl]
	or	a, a
	jp	Z, .l00183
	ld	de, $FF25
	ld	a,[de]
	ld	c, a
	ld	b, $00
	ld	a, c
	and	a, $77
	ld	c, a
	ld	b, $00
	ld	hl, _mus_pan4
	ld	a, [hl]
	add	a, a
	add	a, a
	add	a, a
	ld	e, a
	rla
	sbc	a, a
	ld	d, a
	ld	a, c
	or	a, e
	ld	c, a
	ld	a, b
	or	a, d
	ld	hl, $FF25
	ld	[hl], c
;music.c:735: break;
	jp	.l00183
;music.c:736: case T_PORTAMENTO:
.l00155:
;music.c:737: mus_slide4 = mus_porta4 = *mus_data4++;
	ld	hl, _mus_data4 + 1
	dec	hl
	ld	c, [hl]
	inc	hl
	ld	b, [hl]
	ld	a, [bc]
	ld	c, a
	dec	hl
	inc	[hl]
	jr	NZ,.l00346
	inc	hl
	inc	[hl]
.l00346:
	ld	hl, _mus_porta4
	ld	[hl], c
	ld	hl, _mus_slide4
	ld	[hl], c
;music.c:738: break;
	jp	.l00183
;music.c:739: case T_SLIDE:
.l00156:
;music.c:740: mus_slide4 = *mus_data4++;
	ld	hl, _mus_data4 + 1
	dec	hl
	ld	c, [hl]
	inc	hl
	ld	b, [hl]
	ld	a, [bc]
	ld	hl, _mus_slide4
	ld	[hl], a
	ld	hl, _mus_data4
	inc	[hl]
	jr	NZ,.l00347
	inc	hl
	inc	[hl]
.l00347:
;music.c:741: mus_porta4 = 0U;
	ld	hl, _mus_porta4
	ld	[hl], $00
;music.c:742: if(mus_slide4 >= 128U) {
	ld	hl, _mus_slide4
	ld	a, [hl]
	sub	a, $80
	jr	C,.l00158
;music.c:743: mus_target4 = 0xFFU;
	ld	hl, _mus_target4
	ld	[hl], $FF
;music.c:744: mus_slide4 = mus_slide4 - 128U;
	ld	hl, _mus_slide4
	ld	a, [hl]
	add	a, $80
	ld	[hl], a
	jp	.l00183
.l00158:
;music.c:746: mus_target4 = 0U;
	ld	hl, _mus_target4
	ld	[hl], $00
;music.c:747: mus_slide4 = 128U - mus_slide4;
	ld	a, $80
	ld	hl, _mus_slide4
	sub	a, [hl]
	ld	[hl], a
;music.c:749: break;
	jp	.l00183
;music.c:754: case T_REP_START:
.l00162:
;music.c:755: mus_rep_depth4++;
	ld	hl, _mus_rep_depth4
	inc	[hl]
;music.c:756: mus_rep4[mus_rep_depth4] = mus_data4;
	ld	c, [hl]
	ld	b, $00
	sla	c
	rl	b
	ld	hl, _mus_rep4
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	hl, _mus_data4
	ld	a, [hl]
	ld	[bc], a
	inc	bc
	inc	hl
	ld	a, [hl]
	ld	[bc], a
;music.c:757: break;
	jp	.l00183
;music.c:758: case T_REP_END:
.l00163:
;music.c:759: note = *mus_data4++;
	ld	hl, _mus_data4 + 1
	dec	hl
	ld	c, [hl]
	inc	hl
	ld	b, [hl]
	ld	a, [bc]
	ld	hl,sp+3
	ld	[hl], a
	ld	hl, _mus_data4
	inc	[hl]
	jr	NZ,.l00350
	inc	hl
	inc	[hl]
.l00350:
;music.c:760: if(!mus_repeats4[mus_rep_depth4]) {
	ld	a, _mus_repeats4 & $FF
	ld	hl, _mus_rep_depth4
	add	a, [hl]
	ld	c, a
	ld	a, _mus_repeats4 >> 8
	adc	a, $00
	ld	b, a
	ld	a, [bc]
	or	a, a
	jr	NZ,.l00165
;music.c:761: mus_repeats4[mus_rep_depth4] = note;
	ld	hl,sp+3
	ld	a, [hl]
	ld	[bc], a
;music.c:762: mus_data4 = mus_rep4[mus_rep_depth4];
	ld	hl, _mus_rep_depth4
	ld	c, [hl]
	ld	b, $00
	sla	c
	rl	b
	ld	hl, _mus_rep4
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	e, c
	ld	d, b
	ld	a,[de]
	ld	hl, _mus_data4
	ld	[hl], a
	inc	de
	ld	a,[de]
	inc	hl
	ld	[hl], a
.l00165:
;music.c:764: mus_repeats4[mus_rep_depth4]--;
	ld	a, _mus_repeats4 & $FF
	ld	hl, _mus_rep_depth4
	add	a, [hl]
	ld	c, a
	ld	a, _mus_repeats4 >> 8
	adc	a, $00
	ld	b, a
	ld	a, [bc]
	dec	a
	ld	[bc], a
;music.c:765: if(mus_repeats4[mus_rep_depth4]) {
	ld	a, _mus_repeats4 & $FF
	add	a, [hl]
	ld	c, a
	ld	a, _mus_repeats4 >> 8
	adc	a, $00
	ld	b, a
	ld	a, [bc]
	or	a, a
	jr	Z,.l00167
;music.c:766: mus_data4 = mus_rep4[mus_rep_depth4];
	ld	c, [hl]
	ld	b, $00
	sla	c
	rl	b
	ld	hl, _mus_rep4
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	e, c
	ld	d, b
	ld	a,[de]
	ld	hl, _mus_data4
	ld	[hl], a
	inc	de
	ld	a,[de]
	inc	hl
	ld	[hl], a
	jp	.l00183
.l00167:
;music.c:768: mus_rep_depth4--;
	ld	hl, _mus_rep_depth4
	dec	[hl]
;music.c:770: break;
	jp	.l00183
;music.c:771: case T_LOOP:
.l00169:
;music.c:772: mus_loop4 = mus_data4;
	ld	hl, _mus_data4
	ld	a, [hl]
	inc	hl
	ld	e, [hl]
	ld	hl, _mus_loop4
	ld	[hl], a
	inc	hl
	ld	[hl], e
;music.c:773: break;
	jp	.l00183
;music.c:776: case T_TEMPO:
.l00171:
;music.c:777: TMA_REG = *mus_data4++;
	ld	hl, _mus_data4 + 1
	dec	hl
	ld	c, [hl]
	inc	hl
	ld	b, [hl]
	ld	a, [bc]
	ld	c, a
	dec	hl
	inc	[hl]
	jr	NZ,.l00355
	inc	hl
	inc	[hl]
.l00355:
	ld	hl, $FF06
	ld	[hl], c
;music.c:778: break;
	jp	.l00183
;music.c:779: case T_NOISE_STEP:
.l00172:
;music.c:780: mus_noise_step = (*mus_data4++) << 3;
	ld	hl, _mus_data4 + 1
	dec	hl
	ld	c, [hl]
	inc	hl
	ld	b, [hl]
	ld	a, [bc]
	ld	c, a
	dec	hl
	inc	[hl]
	jr	NZ,.l00356
	inc	hl
	inc	[hl]
.l00356:
	ld	a, c
	add	a, a
	add	a, a
	add	a, a
	ld	hl, _mus_noise_step
	ld	[hl], a
;music.c:781: break;
	jp	.l00183
;music.c:784: case T_MACRO:
.l00174:
;music.c:785: note = *mus_data4++;
	ld	hl, _mus_data4 + 1
	dec	hl
	ld	c, [hl]
	inc	hl
	ld	b, [hl]
	ld	a, [bc]
	ld	hl,sp+1
	ld	[hl], a
	ld	hl, _mus_data4
	inc	[hl]
	jr	NZ,.l00357
	inc	hl
	inc	[hl]
.l00357:
;music.c:786: mus_data4_bak = mus_data4;
	ld	hl, _mus_data4
	ld	a, [hl]
	inc	hl
	ld	e, [hl]
	ld	hl, _mus_data4_bak
	ld	[hl], a
	inc	hl
	ld	[hl], e
;music.c:787: mus_data4 = mus_song + ((UWORD*)mus_song)[5 + note];
	ld	hl, _mus_song
	ld	a, [hl]
	inc	hl
	ld	e, [hl]
	ld	hl,sp+4
	ld	[hl], a
	inc	hl
	ld	[hl], e
	ld	hl,sp+1
	ld	a,[hl]
	inc	hl
	ld	[hl], $00
	dec	hl
	ld	e, [hl]
	inc	hl
	ld	d, [hl]
	ld	hl, $0005
	add	hl, de
	ld	a, l
	ld	d, h
	ld	hl,sp+1
	ld	[hl], a
	inc	hl
	ld	[hl], d
	dec	hl
	ld	c, [hl]
	inc	hl
	ld	b, [hl]
	sla	c
	rl	b
	inc	hl
	inc	hl
	ld	a, [hl]
	inc	hl
	ld	h, [hl]
	ld	l, a
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	e, c
	ld	d, b
	ld	a,[de]
	ld	c, a
	inc	de
	ld	a,[de]
	ld	b, a
	ld	hl, _mus_song
	ld	a, [hl]
	add	a, c
	ld	hl, _mus_data4
	ld	[hl], a
	ld	hl, _mus_song + 1
	ld	a, [hl]
	adc	a, b
	ld	hl, _mus_data4 + 1
	ld	[hl], a
;music.c:788: mus_macro4 = 1U;
	ld	hl, _mus_macro4
	ld	[hl], $01
;music.c:789: break;
	jp	.l00183
;music.c:790: case T_EOF:
.l00175:
;music.c:791: if(mus_macro4) {
	ld	hl, _mus_macro4
	ld	a, [hl]
	or	a, a
	jr	Z,.l00179
;music.c:792: mus_data4 = mus_data4_bak;
	ld	hl, _mus_data4_bak
	ld	a, [hl]
	inc	hl
	ld	e, [hl]
	ld	hl, _mus_data4
	ld	[hl], a
	inc	hl
	ld	[hl], e
;music.c:793: mus_macro4 = 0U;
	ld	hl, _mus_macro4
	ld	[hl], $00
	jp	.l00183
.l00179:
;music.c:795: mus_data4 = mus_loop4;
	ld	hl, _mus_loop4
	ld	a, [hl]
	inc	hl
	ld	e, [hl]
	ld	hl, _mus_data4
	ld	[hl], a
	inc	hl
	ld	[hl], e
;music.c:796: mus_done4 = 1U;
	ld	hl, _mus_done4
	ld	[hl], $01
;music.c:797: if(*mus_data4 == T_EOF) {
	ld	hl, _mus_data4 + 1
	dec	hl
	ld	c, [hl]
	inc	hl
	ld	b, [hl]
	ld	a, [bc]
	sub	a, $14
	jr	Z,.l00361
.l00360:
	jp	.l00183
.l00361:
;music.c:798: mus_wait4 = 255U;
	ld	hl, _mus_wait4
	ld	[hl], $FF
;music.c:799: return;
;music.c:803: }
.l00185:
;music.c:805: }
	add	sp, 6
	ret
	; SECTION "music.c_ROMX",ROMX
	; SECTION "CABS (ABS)",ROMX
