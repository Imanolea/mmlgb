;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (Linux)
;--------------------------------------------------------
	.module music
; 	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _memcpy
	.globl _mus_rep_depth4
	.globl _mus_rep_depth3
	.globl _mus_rep_depth2
	.globl _mus_rep_depth1
	.globl _mus_repeats4
	.globl _mus_repeats3
	.globl _mus_repeats2
	.globl _mus_repeats1
	.globl _mus_rep4
	.globl _mus_rep3
	.globl _mus_rep2
	.globl _mus_rep1
	.globl _mus_macro4
	.globl _mus_macro3
	.globl _mus_macro2
	.globl _mus_macro1
	.globl _mus_po3
	.globl _mus_po2
	.globl _mus_po1
	.globl _mus_noise_step
	.globl _mus_vib_delay2
	.globl _mus_vib_delay1
	.globl _mus_vib_pos2
	.globl _mus_vib_pos1
	.globl _mus_vib_table2
	.globl _mus_vib_table1
	.globl _mus_vib_speed2
	.globl _mus_vib_speed1
	.globl _mus_porta4
	.globl _mus_porta2
	.globl _mus_porta1
	.globl _mus_slide4
	.globl _mus_slide2
	.globl _mus_slide1
	.globl _mus_target4
	.globl _mus_target2
	.globl _mus_target1
	.globl _mus_wait4
	.globl _mus_wait3
	.globl _mus_wait2
	.globl _mus_wait1
	.globl _mus_duty2
	.globl _mus_duty1
	.globl _mus_pan4
	.globl _mus_pan3
	.globl _mus_pan2
	.globl _mus_pan1
	.globl _mus_env4
	.globl _mus_env2
	.globl _mus_env1
	.globl _mus_volume4
	.globl _mus_volume3
	.globl _mus_volume2
	.globl _mus_volume1
	.globl _mus_length4
	.globl _mus_length3
	.globl _mus_length2
	.globl _mus_length1
	.globl _mus_octave4
	.globl _mus_octave3
	.globl _mus_octave2
	.globl _mus_octave1
	.globl _mus_loop4
	.globl _mus_loop3
	.globl _mus_loop2
	.globl _mus_loop1
	.globl _mus_wave
	.globl _mus_data4_bak
	.globl _mus_data3_bak
	.globl _mus_data2_bak
	.globl _mus_data1_bak
	.globl _mus_data4
	.globl _mus_data3
	.globl _mus_data2
	.globl _mus_data1
	.globl _mus_freq4
	.globl _mus_freq3
	.globl _mus_freq2
	.globl _mus_freq1
	.globl _mus_done4
	.globl _mus_done3
	.globl _mus_done2
	.globl _mus_done1
	.globl _mus_enabled4
	.globl _mus_enabled1
	.globl _mus_song
	.globl _mus_step
	.globl _mus_paused
	.globl _mus_init
	.globl _mus_setPaused
	.globl _mus_togglePaused
	.globl _mus_disable1
	.globl _mus_disable4
	.globl _mus_restore1
	.globl _mus_restore4
	.globl _mus_is_done
	.globl _mus_update
	.globl _mus_update1
	.globl _mus_update2
	.globl _mus_update3
	.globl _mus_update4
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_mus_paused::
	.ds 1
_mus_step::
	.ds 1
_mus_song::
	.ds 2
_mus_enabled1::
	.ds 1
_mus_enabled4::
	.ds 1
_mus_done1::
	.ds 1
_mus_done2::
	.ds 1
_mus_done3::
	.ds 1
_mus_done4::
	.ds 1
_mus_freq1::
	.ds 2
_mus_freq2::
	.ds 2
_mus_freq3::
	.ds 2
_mus_freq4::
	.ds 1
_mus_data1::
	.ds 2
_mus_data2::
	.ds 2
_mus_data3::
	.ds 2
_mus_data4::
	.ds 2
_mus_data1_bak::
	.ds 2
_mus_data2_bak::
	.ds 2
_mus_data3_bak::
	.ds 2
_mus_data4_bak::
	.ds 2
_mus_wave::
	.ds 2
_mus_loop1::
	.ds 2
_mus_loop2::
	.ds 2
_mus_loop3::
	.ds 2
_mus_loop4::
	.ds 2
_mus_octave1::
	.ds 1
_mus_octave2::
	.ds 1
_mus_octave3::
	.ds 1
_mus_octave4::
	.ds 1
_mus_length1::
	.ds 1
_mus_length2::
	.ds 1
_mus_length3::
	.ds 1
_mus_length4::
	.ds 1
_mus_volume1::
	.ds 1
_mus_volume2::
	.ds 1
_mus_volume3::
	.ds 1
_mus_volume4::
	.ds 1
_mus_env1::
	.ds 1
_mus_env2::
	.ds 1
_mus_env4::
	.ds 1
_mus_pan1::
	.ds 1
_mus_pan2::
	.ds 1
_mus_pan3::
	.ds 1
_mus_pan4::
	.ds 1
_mus_duty1::
	.ds 1
_mus_duty2::
	.ds 1
_mus_wait1::
	.ds 1
_mus_wait2::
	.ds 1
_mus_wait3::
	.ds 1
_mus_wait4::
	.ds 1
_mus_target1::
	.ds 2
_mus_target2::
	.ds 2
_mus_target4::
	.ds 1
_mus_slide1::
	.ds 1
_mus_slide2::
	.ds 1
_mus_slide4::
	.ds 1
_mus_porta1::
	.ds 1
_mus_porta2::
	.ds 1
_mus_porta4::
	.ds 1
_mus_vib_speed1::
	.ds 1
_mus_vib_speed2::
	.ds 1
_mus_vib_table1::
	.ds 2
_mus_vib_table2::
	.ds 2
_mus_vib_pos1::
	.ds 1
_mus_vib_pos2::
	.ds 1
_mus_vib_delay1::
	.ds 1
_mus_vib_delay2::
	.ds 1
_mus_noise_step::
	.ds 1
_mus_po1::
	.ds 1
_mus_po2::
	.ds 1
_mus_po3::
	.ds 1
_mus_macro1::
	.ds 1
_mus_macro2::
	.ds 1
_mus_macro3::
	.ds 1
_mus_macro4::
	.ds 1
_mus_rep1::
	.ds 8
_mus_rep2::
	.ds 8
_mus_rep3::
	.ds 8
_mus_rep4::
	.ds 8
_mus_repeats1::
	.ds 4
_mus_repeats2::
	.ds 4
_mus_repeats3::
	.ds 4
_mus_repeats4::
	.ds 4
_mus_rep_depth1::
	.ds 1
_mus_rep_depth2::
	.ds 1
_mus_rep_depth3::
	.ds 1
_mus_rep_depth4::
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
;music.c:46: void mus_init(UBYTE *song_data) {
;	---------------------------------
; Function mus_init
; ---------------------------------
_mus_init::
	add	sp, #-3
;music.c:49: NR52_REG = 0x80U; // Enable sound
	ld	hl, #0xff26
	ld	(hl), #0x80
;music.c:50: NR51_REG = 0xFFU;
	ld	l, #0x25
	ld	(hl), #0xff
;music.c:51: NR50_REG = 0xFFU;
	ld	l, #0x24
	ld	(hl), #0xff
;music.c:54: NR10_REG = 0U;
	ld	l, #0x10
	ld	(hl), #0x00
;music.c:55: NR12_REG = 0U;
	ld	l, #0x12
	ld	(hl), #0x00
;music.c:56: NR22_REG = 0U;
	ld	l, #0x17
	ld	(hl), #0x00
;music.c:57: NR30_REG = 0U;
	ld	l, #0x1a
	ld	(hl), #0x00
;music.c:58: NR32_REG = 0U;
	ld	l, #0x1c
	ld	(hl), #0x00
;music.c:59: NR42_REG = 0U;
	ld	l, #0x21
	ld	(hl), #0x00
;music.c:62: TAC_REG = 0x04U; // TAC clock = 4096 Hz
	ld	l, #0x07
	ld	(hl), #0x04
;music.c:63: TMA_REG = 255U - 51U; // Default to ~150 bpm
	ld	l, #0x06
	ld	(hl), #0xcc
;music.c:66: mus_paused = 0U;
	ld	hl, #_mus_paused
	ld	(hl), #0x00
;music.c:67: mus_step = 0U;
	ld	hl, #_mus_step
	ld	(hl), #0x00
;music.c:69: mus_song = song_data;
	ldhl	sp,#5
	ld	a, (hl+)
	ld	e, (hl)
	ld	hl, #_mus_song
	ld	(hl+), a
	ld	(hl), e
;music.c:70: mus_data1 = mus_loop1 = song_data + ((UWORD*)song_data)[0];
	ldhl	sp,#5
	ld	a, (hl+)
	ld	e, (hl)
	ldhl	sp,#0
	ld	(hl+), a
	ld	(hl), e
	pop	de
	push	de
	ld	a,(de)
	ld	c, a
	inc	de
	ld	a,(de)
	ld	b, a
	ldhl	sp,#5
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	hl, #_mus_loop1
	ld	(hl), c
	inc	hl
	ld	(hl), b
	ld	hl, #_mus_data1
	ld	(hl), c
	inc	hl
	ld	(hl), b
;music.c:71: mus_data2 = mus_loop2 = song_data + ((UWORD*)song_data)[1];
	pop	bc
	push	bc
	inc	bc
	inc	bc
	ld	e, c
	ld	d, b
	ld	a,(de)
	ld	c, a
	inc	de
	ld	a,(de)
	ld	b, a
	ldhl	sp,#5
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	hl, #_mus_loop2
	ld	(hl), c
	inc	hl
	ld	(hl), b
	ld	hl, #_mus_data2
	ld	(hl), c
	inc	hl
	ld	(hl), b
;music.c:72: mus_data3 = mus_loop3 = song_data + ((UWORD*)song_data)[2];
	pop	de
	push	de
	ld	hl, #0x0004
	add	hl, de
	ld	c, l
	ld	b, h
	ld	e, c
	ld	d, b
	ld	a,(de)
	ld	c, a
	inc	de
	ld	a,(de)
	ld	b, a
	ldhl	sp,#5
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	hl, #_mus_loop3
	ld	(hl), c
	inc	hl
	ld	(hl), b
	ld	hl, #_mus_data3
	ld	(hl), c
	inc	hl
	ld	(hl), b
;music.c:73: mus_data4 = mus_loop4 = song_data + ((UWORD*)song_data)[3];
	pop	de
	push	de
	ld	hl, #0x0006
	add	hl, de
	ld	c, l
	ld	b, h
	ld	e, c
	ld	d, b
	ld	a,(de)
	ld	c, a
	inc	de
	ld	a,(de)
	ld	b, a
	ldhl	sp,#5
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	hl, #_mus_loop4
	ld	(hl), c
	inc	hl
	ld	(hl), b
	ld	hl, #_mus_data4
	ld	(hl), c
	inc	hl
	ld	(hl), b
;music.c:74: mus_wave = song_data + ((UWORD*)song_data)[4];
	pop	de
	push	de
	ld	hl, #0x0008
	add	hl, de
	ld	c, l
	ld	b, h
	ld	e, c
	ld	d, b
	ld	a,(de)
	ld	c, a
	inc	de
	ld	a,(de)
	ld	b, a
	ldhl	sp,#5
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, bc
	ld	a, l
	ld	d, h
	ld	hl, #_mus_wave
	ld	(hl+), a
	ld	(hl), d
;music.c:76: mus_enabled1 = mus_enabled4 = 1U;
	ld	hl, #_mus_enabled4
	ld	(hl), #0x01
	ld	hl, #_mus_enabled1
	ld	(hl), #0x01
;music.c:77: mus_done1 = mus_done2 = mus_done3 = mus_done4 = 0U;
	ld	hl, #_mus_done4
	ld	(hl), #0x00
	ld	hl, #_mus_done3
	ld	(hl), #0x00
	ld	hl, #_mus_done2
	ld	(hl), #0x00
	ld	hl, #_mus_done1
	ld	(hl), #0x00
;music.c:78: mus_wait1 = mus_wait2 = mus_wait3 = mus_wait4 = 0U;
	ld	hl, #_mus_wait4
	ld	(hl), #0x00
	ld	hl, #_mus_wait3
	ld	(hl), #0x00
	ld	hl, #_mus_wait2
	ld	(hl), #0x00
	ld	hl, #_mus_wait1
	ld	(hl), #0x00
;music.c:79: mus_octave1 = mus_octave2 = mus_octave3 = mus_octave4 = 4U;
	ld	hl, #_mus_octave4
	ld	(hl), #0x04
	ld	hl, #_mus_octave3
	ld	(hl), #0x04
	ld	hl, #_mus_octave2
	ld	(hl), #0x04
	ld	hl, #_mus_octave1
	ld	(hl), #0x04
;music.c:80: mus_length1 = mus_length2 = mus_length3 = mus_length4 = 48U;
	ld	hl, #_mus_length4
	ld	(hl), #0x30
	ld	hl, #_mus_length3
	ld	(hl), #0x30
	ld	hl, #_mus_length2
	ld	(hl), #0x30
	ld	hl, #_mus_length1
	ld	(hl), #0x30
;music.c:81: mus_volume1 = mus_volume2 = mus_volume4 = 0xF0U;
	ld	hl, #_mus_volume4
	ld	(hl), #0xf0
	ld	hl, #_mus_volume2
	ld	(hl), #0xf0
	ld	hl, #_mus_volume1
	ld	(hl), #0xf0
;music.c:82: mus_volume3 = 32U;
	ld	hl, #_mus_volume3
	ld	(hl), #0x20
;music.c:83: mus_env1 = mus_env2 = mus_env4 = 3U;
	ld	hl, #_mus_env4
	ld	(hl), #0x03
	ld	hl, #_mus_env2
	ld	(hl), #0x03
	ld	hl, #_mus_env1
	ld	(hl), #0x03
;music.c:84: mus_rep_depth1 = mus_rep_depth2 = mus_rep_depth3 = mus_rep_depth4 = 255U;
	ld	hl, #_mus_rep_depth4
	ld	(hl), #0xff
	ld	hl, #_mus_rep_depth3
	ld	(hl), #0xff
	ld	hl, #_mus_rep_depth2
	ld	(hl), #0xff
	ld	hl, #_mus_rep_depth1
	ld	(hl), #0xff
;music.c:85: mus_slide1 = mus_slide2 = mus_slide4 = 0U;
	ld	hl, #_mus_slide4
	ld	(hl), #0x00
	ld	hl, #_mus_slide2
	ld	(hl), #0x00
	ld	hl, #_mus_slide1
	ld	(hl), #0x00
;music.c:86: mus_porta1 = mus_porta2 = mus_porta4 = 0U;
	ld	hl, #_mus_porta4
	ld	(hl), #0x00
	ld	hl, #_mus_porta2
	ld	(hl), #0x00
	ld	hl, #_mus_porta1
	ld	(hl), #0x00
;music.c:87: mus_vib_speed1 = mus_vib_speed2 = 0U;
	ld	hl, #_mus_vib_speed2
	ld	(hl), #0x00
	ld	hl, #_mus_vib_speed1
	ld	(hl), #0x00
;music.c:88: mus_noise_step = 0U;
	ld	hl, #_mus_noise_step
	ld	(hl), #0x00
;music.c:89: mus_po1 = mus_po2 = mus_po3 = 128U;
	ld	hl, #_mus_po3
	ld	(hl), #0x80
	ld	hl, #_mus_po2
	ld	(hl), #0x80
	ld	hl, #_mus_po1
	ld	(hl), #0x80
;music.c:90: mus_pan1 = mus_pan2 = mus_pan3 = mus_pan4 = 0x11U;
	ld	hl, #_mus_pan4
	ld	(hl), #0x11
	ld	hl, #_mus_pan3
	ld	(hl), #0x11
	ld	hl, #_mus_pan2
	ld	(hl), #0x11
	ld	hl, #_mus_pan1
	ld	(hl), #0x11
;music.c:91: mus_macro1 = mus_macro2 = mus_macro3 = mus_macro4 = 0U;
	ld	hl, #_mus_macro4
	ld	(hl), #0x00
	ld	hl, #_mus_macro3
	ld	(hl), #0x00
	ld	hl, #_mus_macro2
	ld	(hl), #0x00
	ld	hl, #_mus_macro1
	ld	(hl), #0x00
;music.c:93: for(i = 0U; i != MAX_REPEATS; ++i) {
	ldhl	sp,#2
	ld	(hl), #0x00
00102$:
;music.c:94: mus_repeats1[i] = 0U;
	ld	de, #_mus_repeats1
	ldhl	sp,#2
	ld	l, (hl)
	ld	h, #0x00
	add	hl, de
	ld	c, l
	ld	b, h
	xor	a, a
	ld	(bc), a
;music.c:95: mus_repeats2[i] = 0U;
	ld	de, #_mus_repeats2
	ldhl	sp,#2
	ld	l, (hl)
	ld	h, #0x00
	add	hl, de
	ld	c, l
	ld	b, h
	xor	a, a
	ld	(bc), a
;music.c:96: mus_repeats3[i] = 0U;
	ld	de, #_mus_repeats3
	ldhl	sp,#2
	ld	l, (hl)
	ld	h, #0x00
	add	hl, de
	ld	c, l
	ld	b, h
	xor	a, a
	ld	(bc), a
;music.c:97: mus_repeats4[i] = 0U;
	ld	de, #_mus_repeats4
	ldhl	sp,#2
	ld	l, (hl)
	ld	h, #0x00
	add	hl, de
	ld	c, l
	ld	b, h
	xor	a, a
	ld	(bc), a
;music.c:93: for(i = 0U; i != MAX_REPEATS; ++i) {
	ldhl	sp,#2
	inc	(hl)
	ld	a, (hl)
	sub	a, #0x04
	jp	NZ,00102$
;music.c:99: }
	add	sp, #3
	ret
;music.c:101: void mus_setPaused(UBYTE p) {
;	---------------------------------
; Function mus_setPaused
; ---------------------------------
_mus_setPaused::
;music.c:102: mus_paused = p;
	push	hl
	ldhl	sp,#4
	ld	a, (hl)
	ld	hl, #_mus_paused
	ld	(hl), a
	pop	hl
;music.c:104: if(mus_paused) {
	ld	hl, #_mus_paused
	ld	a, (hl)
	or	a, a
	ret	Z
;music.c:105: NR12_REG = NR22_REG = NR32_REG = NR42_REG = 0U;
	ld	hl, #0xff21
	ld	(hl), #0x00
	ld	l, #0x1c
	ld	(hl), #0x00
	ld	l, #0x17
	ld	(hl), #0x00
	ld	l, #0x12
	ld	(hl), #0x00
;music.c:106: NR14_REG = NR24_REG = NR34_REG = NR44_REG = 0x80U;
	ld	l, #0x23
	ld	(hl), #0x80
	ld	l, #0x1e
	ld	(hl), #0x80
	ld	l, #0x19
	ld	(hl), #0x80
	ld	l, #0x14
	ld	(hl), #0x80
;music.c:108: }
	ret
;music.c:110: void mus_togglePaused() {
;	---------------------------------
; Function mus_togglePaused
; ---------------------------------
_mus_togglePaused::
;music.c:111: mus_setPaused(mus_paused ^ 1U);
	ld	hl, #_mus_paused
	ld	c, (hl)
	ld	b, #0x00
	ld	a, c
	xor	a, #0x01
	ld	d, a
	push	de
	inc	sp
	call	_mus_setPaused
	inc	sp
;music.c:112: }
	ret
;music.c:114: void mus_disable1() {
;	---------------------------------
; Function mus_disable1
; ---------------------------------
_mus_disable1::
;music.c:115: mus_enabled1 = 0U;
	ld	hl, #_mus_enabled1
	ld	(hl), #0x00
;music.c:116: NR13_REG = 0U;
	ld	hl, #0xff13
	ld	(hl), #0x00
;music.c:117: NR14_REG = 0x80U;
	ld	l, #0x14
	ld	(hl), #0x80
;music.c:118: }
	ret
;music.c:120: void mus_disable4() {
;	---------------------------------
; Function mus_disable4
; ---------------------------------
_mus_disable4::
;music.c:121: mus_enabled4 = 0U;
	ld	hl, #_mus_enabled4
	ld	(hl), #0x00
;music.c:122: NR43_REG = 0U;
	ld	hl, #0xff22
	ld	(hl), #0x00
;music.c:123: NR44_REG = 0x80U;
	ld	l, #0x23
	ld	(hl), #0x80
;music.c:124: }
	ret
;music.c:126: void mus_restore1() {
;	---------------------------------
; Function mus_restore1
; ---------------------------------
_mus_restore1::
;music.c:127: mus_enabled1 = 2U;
	ld	hl, #_mus_enabled1
	ld	(hl), #0x02
;music.c:128: NR51_REG = (NR51_REG & 0xEEU) | mus_pan1;
	ld	de, #0xff25
	ld	a,(de)
	ld	c, a
	ld	b, #0x00
	ld	a, c
	and	a, #0xee
	ld	c, a
	ld	b, #0x00
	ld	hl, #_mus_pan1
	ld	e, (hl)
	ld	d, #0x00
	ld	a, c
	or	a, e
	ld	c, a
	ld	a, b
	or	a, d
	ld	hl, #0xff25
	ld	(hl), c
;music.c:129: NR11_REG = mus_duty1;
	ld	de, #0xff11
	ld	hl, #_mus_duty1
	ld	a, (hl)
	ld	(de), a
;music.c:130: NR12_REG = 0U;
	ld	hl, #0xff12
	ld	(hl), #0x00
;music.c:131: NR14_REG = 0x80U;
	ld	l, #0x14
	ld	(hl), #0x80
;music.c:132: }
	ret
;music.c:134: void mus_restore4() {
;	---------------------------------
; Function mus_restore4
; ---------------------------------
_mus_restore4::
;music.c:135: mus_enabled4 = 2U;
	ld	hl, #_mus_enabled4
	ld	(hl), #0x02
;music.c:136: NR51_REG = (NR51_REG & 0x77U) | (mus_pan4 << 3);
	ld	de, #0xff25
	ld	a,(de)
	ld	c, a
	ld	b, #0x00
	ld	a, c
	and	a, #0x77
	ld	c, a
	ld	b, #0x00
	ld	hl, #_mus_pan4
	ld	a, (hl)
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
	ld	hl, #0xff25
	ld	(hl), c
;music.c:137: NR42_REG = 0U;
	ld	l, #0x21
	ld	(hl), #0x00
;music.c:138: NR44_REG = 0x80U;
	ld	l, #0x23
	ld	(hl), #0x80
;music.c:139: }
	ret
;music.c:141: UBYTE mus_is_done() {
;	---------------------------------
; Function mus_is_done
; ---------------------------------
_mus_is_done::
;music.c:142: return mus_paused || (mus_done1 && mus_done2 && mus_done3 && mus_done4);
	ld	hl, #_mus_paused
	ld	a, (hl)
	or	a, a
	jr	NZ,00104$
	ld	hl, #_mus_done1
	ld	a, (hl)
	or	a, a
	jr	Z,00103$
	ld	hl, #_mus_done2
	ld	a, (hl)
	or	a, a
	jr	Z,00103$
	ld	hl, #_mus_done3
	ld	a, (hl)
	or	a, a
	jr	Z,00103$
	ld	hl, #_mus_done4
	ld	a, (hl)
	or	a, a
	jr	NZ,00104$
00103$:
	xor	a, a
	jr	00105$
00104$:
	ld	a, #0x01
00105$:
	ld	e, a
;music.c:143: }
	ret
;music.c:145: void mus_update() {
;	---------------------------------
; Function mus_update
; ---------------------------------
_mus_update::
;music.c:146: if(mus_paused) return;
	ld	hl, #_mus_paused
	ld	a, (hl)
	or	a, a
	ret	NZ
;music.c:148: mus_update1();
	call	_mus_update1
;music.c:149: mus_update2();
	call	_mus_update2
;music.c:150: mus_update3();
	call	_mus_update3
;music.c:151: mus_update4();
	call	_mus_update4
;music.c:152: mus_step++;
	ld	hl, #_mus_step
	inc	(hl)
;music.c:153: }
	ret
;music.c:155: void mus_update1() {
;	---------------------------------
; Function mus_update1
; ---------------------------------
_mus_update1::
	add	sp, #-4
;music.c:159: if(mus_slide1 && !(mus_step & 3U)) {
	ld	hl, #_mus_slide1
	ld	a, (hl)
	or	a, a
	jp	Z, 00113$
	ld	hl, #_mus_step
	ld	a, (hl)
	and	a, #0x03
	jp	NZ,00113$
;music.c:160: if(mus_target1 > mus_freq1) {
	ld	hl, #_mus_freq1
	ld	d, h
	ld	e, l
	ld	hl, #_mus_target1
	ld	a, (de)
	sub	a, (hl)
	inc	hl
	inc	de
	ld	a, (de)
	sbc	a, (hl)
	jp	NC, 00108$
;music.c:161: mus_freq1 += mus_slide1;
	ld	hl, #_mus_slide1
	ld	c, (hl)
	ld	b, #0x00
	ld	hl, #_mus_freq1
	ld	a, (hl)
	add	a, c
	ld	(hl+), a
	ld	a, (hl)
	adc	a, b
	ld	(hl), a
;music.c:162: if(mus_freq1 > mus_target1) {
	ld	hl, #_mus_target1
	ld	d, h
	ld	e, l
	ld	hl, #_mus_freq1
	ld	a, (de)
	sub	a, (hl)
	inc	hl
	inc	de
	ld	a, (de)
	sbc	a, (hl)
	jp	NC, 00109$
;music.c:163: mus_freq1 = mus_target1;
	ld	hl, #_mus_target1
	ld	a, (hl+)
	ld	e, (hl)
	ld	hl, #_mus_freq1
	ld	(hl+), a
	ld	(hl), e
	jp	00109$
00108$:
;music.c:166: else if(mus_target1 < mus_freq1) {
	ld	hl, #_mus_target1
	ld	d, h
	ld	e, l
	ld	hl, #_mus_freq1
	ld	a, (de)
	sub	a, (hl)
	inc	hl
	inc	de
	ld	a, (de)
	sbc	a, (hl)
	jr	NC,00109$
;music.c:167: mus_freq1 -= mus_slide1;
	ld	hl, #_mus_slide1
	ld	c, (hl)
	ld	b, #0x00
	ld	hl, #_mus_freq1
	ld	a, (hl)
	sub	a, c
	ld	(hl+), a
	ld	a, (hl)
	sbc	a, b
;music.c:168: if(mus_freq1 < mus_target1) {
	ld	(hl-), a
	ld	d, h
	ld	e, l
	ld	hl, #_mus_target1
	ld	a, (de)
	sub	a, (hl)
	inc	hl
	inc	de
	ld	a, (de)
	sbc	a, (hl)
	jr	NC,00109$
;music.c:169: mus_freq1 = mus_target1;
	ld	hl, #_mus_target1
	ld	a, (hl+)
	ld	e, (hl)
	ld	hl, #_mus_freq1
	ld	(hl+), a
	ld	(hl), e
00109$:
;music.c:172: if(mus_enabled1) {
	ld	hl, #_mus_enabled1
	ld	a, (hl)
	or	a, a
	jr	Z,00113$
;music.c:173: NR13_REG = (UBYTE)mus_freq1;
	ld	hl, #_mus_freq1
	ld	a, (hl)
	ld	hl, #0xff13
	ld	(hl), a
;music.c:174: NR14_REG = mus_freq1 >> 8;
	ld	hl, #_mus_freq1 + 1
	ld	c, (hl)
	ld	b, #0x00
	ld	hl, #0xff14
	ld	(hl), c
00113$:
;music.c:178: if(mus_vib_delay1) {
	ld	hl, #_mus_vib_delay1
	ld	a, (hl)
	or	a, a
	jr	Z,00120$
;music.c:179: mus_vib_delay1--;
	dec	(hl)
	jp	00121$
00120$:
;music.c:181: else if(mus_vib_speed1) {
	ld	hl, #_mus_vib_speed1
	ld	a, (hl)
	or	a, a
	jp	Z, 00121$
;music.c:182: mus_vib_pos1 = (mus_vib_pos1 + mus_vib_speed1) & 63U;
	ld	hl, #_mus_vib_pos1
	ld	a, (hl)
	ld	hl, #_mus_vib_speed1
	add	a, (hl)
	and	a, #0x3f
	ld	hl, #_mus_vib_pos1
	ld	(hl), a
;music.c:183: tmp_freq = mus_freq1 - *mus_vib_table1 + mus_vib_table1[mus_vib_pos1];
	ld	hl, #_mus_vib_table1 + 1
	dec	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, (bc)
	ld	c, a
	ld	b, #0x00
	ld	hl, #_mus_freq1 + 1
	dec	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, e
	sub	a, c
	ld	e, a
	ld	a, d
	sbc	a, b
	ldhl	sp,#3
	ld	(hl-), a
	ld	(hl), e
	ld	hl, #_mus_vib_table1
	ld	a, (hl)
	ld	hl, #_mus_vib_pos1
	add	a, (hl)
	ld	c, a
	ld	hl, #_mus_vib_table1 + 1
	ld	a, (hl)
	adc	a, #0x00
	ld	b, a
	ld	a, (bc)
	ld	c, a
	ld	b, #0x00
	ldhl	sp,#2
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, bc
	ld	c, l
	ld	b, h
;music.c:185: if(mus_enabled1) {
	ld	hl, #_mus_enabled1
	ld	a, (hl)
	or	a, a
	jr	Z,00121$
;music.c:186: NR13_REG = (UBYTE)tmp_freq;
	ld	a, c
	ld	hl, #0xff13
	ld	(hl), a
;music.c:187: NR14_REG = tmp_freq >> 8;
	ld	c, #0x00
	ld	l, #0x14
	ld	(hl), b
00121$:
;music.c:191: if(mus_wait1) {
	ld	hl, #_mus_wait1
	ld	a, (hl)
	or	a, a
	jr	Z,00235$
;music.c:192: mus_wait1--;
	dec	(hl)
;music.c:193: if(mus_wait1) return;
	ld	a, (hl)
	or	a, a
;music.c:196: while(1U) {
	jp	NZ,00212$
00235$:
00210$:
;music.c:197: note = *mus_data1++;
	ld	hl, #_mus_data1 + 1
	dec	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, (bc)
	ldhl	sp,#2
	ld	(hl), a
	ld	hl, #_mus_data1
	inc	(hl)
	jr	NZ,00406$
	inc	hl
	inc	(hl)
00406$:
;music.c:198: if(note >= MUS_FIRST_NOTE) {
	ldhl	sp,#2
	ld	a, (hl)
	sub	a, #0x15
	jp	C, 00147$
;music.c:199: if(note & MUS_HAS_LENGTH) {
	bit	7, (hl)
	jr	Z,00127$
;music.c:200: note ^= MUS_HAS_LENGTH;
	ldhl	sp,#2
	ld	c, (hl)
	ld	b, #0x00
	ld	a, c
	xor	a, #0x80
	ld	c, a
	ld	(hl), c
;music.c:201: mus_wait1 = *mus_data1++;
	ld	hl, #_mus_data1 + 1
	dec	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, (bc)
	ld	hl, #_mus_wait1
	ld	(hl), a
	ld	hl, #_mus_data1
	inc	(hl)
	jr	NZ,00128$
	inc	hl
	inc	(hl)
	jr	00128$
00127$:
;music.c:204: mus_wait1 = mus_length1;
	push	hl
	ld	hl, #_mus_length1
	ld	a, (hl)
	ld	hl, #_mus_wait1
	ld	(hl), a
	pop	hl
00128$:
;music.c:206: if(note == T_WAIT) {
	ldhl	sp,#2
	ld	a, (hl)
	sub	a, #0x22
	jp	Z,00212$
	jr	00140$
;music.c:207: return;
	jp	00212$
00140$:
;music.c:208: } else if(note == T_REST) {
	ldhl	sp,#2
	ld	a, (hl)
	sub	a, #0x21
	jr	NZ,00137$
;music.c:209: mus_freq1 = 0U;
	ld	hl, #_mus_freq1
	ld	(hl), #0x00
	inc	hl
	ld	(hl), #0x00
;music.c:210: if(mus_enabled1) NR12_REG = 0U;
	ld	hl, #_mus_enabled1
	ld	a, (hl)
	or	a, a
	jp	Z, 00141$
	ld	hl, #0xff12
	ld	(hl), #0x00
	jp	00141$
00137$:
;music.c:212: tmp_freq = freq[(mus_octave1 << 4) + note - MUS_FIRST_NOTE] + mus_po1 - 128U;
	ld	hl, #_mus_octave1
	ld	c, (hl)
	ld	b, #0x00
	sla	c
	rl	b
	sla	c
	rl	b
	sla	c
	rl	b
	sla	c
	rl	b
	ldhl	sp,#2
	ld	a, (hl-)
	dec	hl
	ld	(hl+), a
	ld	(hl), #0x00
	pop	hl
	push	hl
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	a, c
	add	a, #0xeb
	ld	c, a
	ld	a, b
	adc	a, #0xff
	ld	b, a
	sla	c
	rl	b
	ld	hl, #_freq
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	e, c
	ld	d, b
	ld	a,(de)
	ldhl	sp,#0
	ld	(hl+), a
	inc	de
	ld	a, (de)
	ld	(hl), a
	ld	hl, #_mus_po1
	ld	c, (hl)
	ld	b, #0x00
	pop	hl
	push	hl
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	a, c
	add	a, #0x80
	ld	c, a
	ld	a, b
	adc	a, #0xff
	ld	b, a
;music.c:213: if(mus_porta1) {
	ld	hl, #_mus_porta1
	ld	a, (hl)
	or	a, a
	jr	Z,00132$
;music.c:214: mus_target1 = tmp_freq;
	ld	hl, #_mus_target1
	ld	(hl), c
	inc	hl
	ld	(hl), b
	jr	00133$
00132$:
;music.c:216: mus_freq1 = tmp_freq;
	ld	hl, #_mus_freq1
	ld	(hl), c
	inc	hl
	ld	(hl), b
00133$:
;music.c:218: if(mus_enabled1) NR12_REG = mus_volume1 | mus_env1;
	ld	hl, #_mus_enabled1
	ld	a, (hl)
	or	a, a
	jr	Z,00141$
	ld	hl, #_mus_volume1
	ld	a, (hl)
	ld	hl, #_mus_env1
	or	a, (hl)
	ld	hl, #0xff12
	ld	(hl), a
00141$:
;music.c:220: if(mus_enabled1) {
	ld	hl, #_mus_enabled1
	ld	a, (hl)
	or	a, a
	jp	Z,00212$
;music.c:221: if(mus_enabled1 == 2U) {
	ld	a, (hl)
	sub	a, #0x02
	jr	NZ,00143$
;music.c:222: mus_enabled1--;
	ld	hl, #_mus_enabled1
	dec	(hl)
;music.c:223: NR12_REG = mus_volume1 | mus_env1;
	ld	hl, #_mus_volume1
	ld	a, (hl)
	ld	hl, #_mus_env1
	or	a, (hl)
	ld	hl, #0xff12
	ld	(hl), a
00143$:
;music.c:225: NR13_REG = (UBYTE)mus_freq1;
	ld	hl, #_mus_freq1
	ld	a, (hl)
	ld	hl, #0xff13
	ld	(hl), a
;music.c:226: NR14_REG = (mus_freq1 >> 8) | 0x80U;
	ld	hl, #_mus_freq1 + 1
	ld	c, (hl)
	ld	b, #0x00
	set	7, c
	ld	hl, #0xff14
	ld	(hl), c
;music.c:228: return;
	jp	00212$
00147$:
;music.c:230: switch(note) {
	ld	a, #0x14
	ldhl	sp,#2
	sub	a, (hl)
	jp	C, 00210$
	ld	c, (hl)
	ld	b, #0x00
	ld	hl, #00419$
	add	hl, bc
	add	hl, bc
	add	hl, bc
	jp	(hl)
00419$:
	jp	00148$
	jp	00149$
	jp	00150$
	jp	00151$
	jp	00152$
	jp	00155$
	jp	00158$
	jp	00161$
	jp	00164$
	jp	00165$
	jp	00169$
	jp	00179$
	jp	00189$
	jp	00190$
	jp	00196$
	jp	00197$
	jp	00198$
	jp	00210$
	jp	00210$
	jp	00201$
	jp	00202$
;music.c:231: case T_LENGTH:
00148$:
;music.c:232: mus_length1 = *mus_data1++;
	ld	hl, #_mus_data1 + 1
	dec	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, (bc)
	ld	hl, #_mus_length1
	ld	(hl), a
	ld	hl, #_mus_data1
	inc	(hl)
	jp	NZ,00210$
	inc	hl
	inc	(hl)
;music.c:233: break;
	jp	00210$
;music.c:234: case T_OCTAVE:
00149$:
;music.c:235: mus_octave1 = *mus_data1++;
	ld	hl, #_mus_data1 + 1
	dec	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, (bc)
	ld	hl, #_mus_octave1
	ld	(hl), a
	ld	hl, #_mus_data1
	inc	(hl)
	jp	NZ,00210$
	inc	hl
	inc	(hl)
;music.c:236: break;
	jp	00210$
;music.c:237: case T_OCT_UP:
00150$:
;music.c:238: mus_octave1++;
	ld	hl, #_mus_octave1
	inc	(hl)
;music.c:239: break;
	jp	00210$
;music.c:240: case T_OCT_DOWN:
00151$:
;music.c:241: mus_octave1--;
	ld	hl, #_mus_octave1
	dec	(hl)
;music.c:242: break;
	jp	00210$
;music.c:243: case T_VOL:
00152$:
;music.c:244: mus_volume1 = *mus_data1++;
	ld	hl, #_mus_data1 + 1
	dec	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, (bc)
	ld	hl, #_mus_volume1
	ld	(hl), a
	ld	hl, #_mus_data1
	inc	(hl)
	jr	NZ,00422$
	inc	hl
	inc	(hl)
00422$:
;music.c:245: if(mus_enabled1) NR12_REG = mus_volume1 | mus_env1;
	ld	hl, #_mus_enabled1
	ld	a, (hl)
	or	a, a
	jp	Z, 00210$
	ld	hl, #_mus_volume1
	ld	a, (hl)
	ld	hl, #_mus_env1
	or	a, (hl)
	ld	hl, #0xff12
	ld	(hl), a
;music.c:246: break;
	jp	00210$
;music.c:247: case T_ENV:
00155$:
;music.c:248: mus_env1 = *mus_data1++;
	ld	hl, #_mus_data1 + 1
	dec	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, (bc)
	ld	hl, #_mus_env1
	ld	(hl), a
	ld	hl, #_mus_data1
	inc	(hl)
	jr	NZ,00423$
	inc	hl
	inc	(hl)
00423$:
;music.c:249: if(mus_enabled1) NR12_REG = mus_volume1 | mus_env1;
	ld	hl, #_mus_enabled1
	ld	a, (hl)
	or	a, a
	jp	Z, 00210$
	ld	hl, #_mus_volume1
	ld	a, (hl)
	ld	hl, #_mus_env1
	or	a, (hl)
	ld	hl, #0xff12
	ld	(hl), a
;music.c:250: break;
	jp	00210$
;music.c:251: case T_WAVEDUTY:
00158$:
;music.c:252: mus_duty1 = *mus_data1++;
	ld	hl, #_mus_data1 + 1
	dec	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, (bc)
	ld	hl, #_mus_duty1
	ld	(hl), a
	ld	hl, #_mus_data1
	inc	(hl)
	jr	NZ,00424$
	inc	hl
	inc	(hl)
00424$:
;music.c:253: if(mus_enabled1) NR11_REG = mus_duty1;
	ld	hl, #_mus_enabled1
	ld	a, (hl)
	or	a, a
	jp	Z, 00210$
	ld	de, #0xff11
	ld	hl, #_mus_duty1
	ld	a, (hl)
	ld	(de), a
;music.c:254: break;
	jp	00210$
;music.c:255: case T_PAN:
00161$:
;music.c:256: mus_pan1 = *mus_data1++;
	ld	hl, #_mus_data1 + 1
	dec	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, (bc)
	ld	hl, #_mus_pan1
	ld	(hl), a
	ld	hl, #_mus_data1
	inc	(hl)
	jr	NZ,00425$
	inc	hl
	inc	(hl)
00425$:
;music.c:257: if(mus_enabled1) NR51_REG = (NR51_REG & 0xEEU) | mus_pan1;
	ld	hl, #_mus_enabled1
	ld	a, (hl)
	or	a, a
	jp	Z, 00210$
	ld	de, #0xff25
	ld	a,(de)
	ld	c, a
	ld	b, #0x00
	ld	a, c
	and	a, #0xee
	ld	c, a
	ld	b, #0x00
	ld	hl, #_mus_pan1
	ld	e, (hl)
	ld	d, #0x00
	ld	a, c
	or	a, e
	ld	c, a
	ld	a, b
	or	a, d
	ld	hl, #0xff25
	ld	(hl), c
;music.c:258: break;
	jp	00210$
;music.c:259: case T_PORTAMENTO:
00164$:
;music.c:260: mus_slide1 = mus_porta1 = *mus_data1++;
	ld	hl, #_mus_data1 + 1
	dec	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, (bc)
	ld	c, a
	dec	hl
	inc	(hl)
	jr	NZ,00426$
	inc	hl
	inc	(hl)
00426$:
	ld	hl, #_mus_porta1
	ld	(hl), c
	ld	hl, #_mus_slide1
	ld	(hl), c
;music.c:261: break;
	jp	00210$
;music.c:262: case T_SLIDE:
00165$:
;music.c:263: mus_slide1 = *mus_data1++;
	ld	hl, #_mus_data1 + 1
	dec	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, (bc)
	ld	hl, #_mus_slide1
	ld	(hl), a
	ld	hl, #_mus_data1
	inc	(hl)
	jr	NZ,00427$
	inc	hl
	inc	(hl)
00427$:
;music.c:264: mus_porta1 = 0U;
	ld	hl, #_mus_porta1
	ld	(hl), #0x00
;music.c:265: if(mus_slide1 >= 128U) {
	ld	hl, #_mus_slide1
	ld	a, (hl)
	sub	a, #0x80
	jr	C,00167$
;music.c:266: mus_target1 = 0xFFFFU;
	ld	hl, #_mus_target1
	ld	(hl), #0xff
	inc	hl
	ld	(hl), #0xff
;music.c:267: mus_slide1 = mus_slide1 - 128U;
	ld	hl, #_mus_slide1
	ld	a, (hl)
	add	a, #0x80
	ld	(hl), a
	jp	00210$
00167$:
;music.c:269: mus_target1 = 0U;
	ld	hl, #_mus_target1
	ld	(hl), #0x00
	inc	hl
	ld	(hl), #0x00
;music.c:270: mus_slide1 = 128U - mus_slide1;
	ld	a, #0x80
	ld	hl, #_mus_slide1
	sub	a, (hl)
	ld	(hl), a
;music.c:272: break;
	jp	00210$
;music.c:273: case T_VIBRATO:
00169$:
;music.c:274: mus_vib_pos1 = 0U;
	ld	hl, #_mus_vib_pos1
	ld	(hl), #0x00
;music.c:275: note = *mus_data1++;
	ld	hl, #_mus_data1 + 1
	dec	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, (bc)
	ld	c, a
	dec	hl
	inc	(hl)
	jr	NZ,00428$
	inc	hl
	inc	(hl)
00428$:
;music.c:276: mus_vib_speed1 = note & 15U;
	ld	a, c
	and	a, #0x0f
	ld	hl, #_mus_vib_speed1
	ld	(hl), a
;music.c:277: note = note >> 4;
	ld	a, c
	swap	a
	and	a, #0x0f
;music.c:278: if(note == 1U) mus_vib_table1 = vib1;
	cp	a, #0x01
	jr	NZ,00177$
	ld	hl, #_mus_vib_table1
	ld	(hl), #<(_vib1)
	inc	hl
	ld	(hl), #>(_vib1)
	jr	00178$
00177$:
;music.c:279: else if(note == 2U) mus_vib_table1 = vib2;
	cp	a, #0x02
	jr	NZ,00174$
	ld	hl, #_mus_vib_table1
	ld	(hl), #<(_vib2)
	inc	hl
	ld	(hl), #>(_vib2)
	jr	00178$
00174$:
;music.c:280: else if(note == 3U) mus_vib_table1 = vib3;
	sub	a, #0x03
	jr	NZ,00171$
	ld	hl, #_mus_vib_table1
	ld	(hl), #<(_vib3)
	inc	hl
	ld	(hl), #>(_vib3)
	jr	00178$
00171$:
;music.c:281: else mus_vib_table1 = vib4;
	ld	hl, #_mus_vib_table1
	ld	(hl), #<(_vib4)
	inc	hl
	ld	(hl), #>(_vib4)
00178$:
;music.c:282: mus_vib_delay1 = 0U;
	ld	hl, #_mus_vib_delay1
	ld	(hl), #0x00
;music.c:283: break;
	jp	00210$
;music.c:284: case T_VIBRATO_DELAY:
00179$:
;music.c:285: mus_vib_pos1 = 0U;
	ld	hl, #_mus_vib_pos1
	ld	(hl), #0x00
;music.c:286: note = *mus_data1++;
	ld	hl, #_mus_data1 + 1
	dec	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, (bc)
	ld	c, a
	dec	hl
	inc	(hl)
	jr	NZ,00435$
	inc	hl
	inc	(hl)
00435$:
;music.c:287: mus_vib_speed1 = note & 15U;
	ld	a, c
	and	a, #0x0f
	ld	hl, #_mus_vib_speed1
	ld	(hl), a
;music.c:288: note = note >> 4;
	ld	a, c
	swap	a
	and	a, #0x0f
;music.c:289: if(note == 1U) mus_vib_table1 = vib1;
	cp	a, #0x01
	jr	NZ,00187$
	ld	hl, #_mus_vib_table1
	ld	(hl), #<(_vib1)
	inc	hl
	ld	(hl), #>(_vib1)
	jr	00188$
00187$:
;music.c:290: else if(note == 2U) mus_vib_table1 = vib2;
	cp	a, #0x02
	jr	NZ,00184$
	ld	hl, #_mus_vib_table1
	ld	(hl), #<(_vib2)
	inc	hl
	ld	(hl), #>(_vib2)
	jr	00188$
00184$:
;music.c:291: else if(note == 3U) mus_vib_table1 = vib3;
	sub	a, #0x03
	jr	NZ,00181$
	ld	hl, #_mus_vib_table1
	ld	(hl), #<(_vib3)
	inc	hl
	ld	(hl), #>(_vib3)
	jr	00188$
00181$:
;music.c:292: else mus_vib_table1 = vib4;
	ld	hl, #_mus_vib_table1
	ld	(hl), #<(_vib4)
	inc	hl
	ld	(hl), #>(_vib4)
00188$:
;music.c:293: mus_vib_delay1 = *mus_data1++;
	ld	hl, #_mus_data1 + 1
	dec	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, (bc)
	ld	hl, #_mus_vib_delay1
	ld	(hl), a
	ld	hl, #_mus_data1
	inc	(hl)
	jp	NZ,00210$
	inc	hl
	inc	(hl)
;music.c:294: break;
	jp	00210$
;music.c:295: case T_REP_START:
00189$:
;music.c:296: mus_rep_depth1++;
	ld	hl, #_mus_rep_depth1
	inc	(hl)
;music.c:297: mus_rep1[mus_rep_depth1] = mus_data1;
	ld	c, (hl)
	ld	b, #0x00
	sla	c
	rl	b
	ld	hl, #_mus_rep1
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	hl, #_mus_data1
	ld	a, (hl+)
	ld	(bc), a
	inc	bc
	ld	a, (hl)
	ld	(bc), a
;music.c:298: break;
	jp	00210$
;music.c:299: case T_REP_END:
00190$:
;music.c:300: note = *mus_data1++;
	ld	hl, #_mus_data1 + 1
	dec	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, (bc)
	ldhl	sp,#0
	ld	(hl), a
	ld	hl, #_mus_data1
	inc	(hl)
	jr	NZ,00445$
	inc	hl
	inc	(hl)
00445$:
;music.c:301: if(!mus_repeats1[mus_rep_depth1]) {
	ld	a, #<(_mus_repeats1)
	ld	hl, #_mus_rep_depth1
	add	a, (hl)
	ld	c, a
	ld	a, #>(_mus_repeats1)
	adc	a, #0x00
	ld	b, a
	ld	a, (bc)
	or	a, a
	jr	NZ,00192$
;music.c:302: mus_repeats1[mus_rep_depth1] = note;
	ldhl	sp,#0
	ld	a, (hl)
	ld	(bc), a
;music.c:303: mus_data1 = mus_rep1[mus_rep_depth1];
	ld	hl, #_mus_rep_depth1
	ld	c, (hl)
	ld	b, #0x00
	sla	c
	rl	b
	ld	hl, #_mus_rep1
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	e, c
	ld	d, b
	ld	a,(de)
	ld	hl, #_mus_data1
	ld	(hl+), a
	inc	de
	ld	a, (de)
	ld	(hl), a
00192$:
;music.c:305: mus_repeats1[mus_rep_depth1]--;
	ld	a, #<(_mus_repeats1)
	ld	hl, #_mus_rep_depth1
	add	a, (hl)
	ld	c, a
	ld	a, #>(_mus_repeats1)
	adc	a, #0x00
	ld	b, a
	ld	a, (bc)
	dec	a
	ld	(bc), a
;music.c:306: if(mus_repeats1[mus_rep_depth1]) {
	ld	a, #<(_mus_repeats1)
	add	a, (hl)
	ld	c, a
	ld	a, #>(_mus_repeats1)
	adc	a, #0x00
	ld	b, a
	ld	a, (bc)
	or	a, a
	jr	Z,00194$
;music.c:307: mus_data1 = mus_rep1[mus_rep_depth1];
	ld	c, (hl)
	ld	b, #0x00
	sla	c
	rl	b
	ld	hl, #_mus_rep1
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	e, c
	ld	d, b
	ld	a,(de)
	ld	hl, #_mus_data1
	ld	(hl+), a
	inc	de
	ld	a, (de)
	ld	(hl), a
	jp	00210$
00194$:
;music.c:309: mus_rep_depth1--;
	ld	hl, #_mus_rep_depth1
	dec	(hl)
;music.c:311: break;
	jp	00210$
;music.c:312: case T_LOOP:
00196$:
;music.c:313: mus_loop1 = mus_data1;
	ld	hl, #_mus_data1
	ld	a, (hl+)
	ld	e, (hl)
	ld	hl, #_mus_loop1
	ld	(hl+), a
	ld	(hl), e
;music.c:314: break;
	jp	00210$
;music.c:315: case T_PITCH_OFFSET:
00197$:
;music.c:316: mus_po1 = *mus_data1++;
	ld	hl, #_mus_data1 + 1
	dec	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, (bc)
	ld	hl, #_mus_po1
	ld	(hl), a
	ld	hl, #_mus_data1
	inc	(hl)
	jp	NZ,00210$
	inc	hl
	inc	(hl)
;music.c:317: break;
	jp	00210$
;music.c:318: case T_TEMPO:
00198$:
;music.c:319: TMA_REG = *mus_data1++;
	ld	hl, #_mus_data1 + 1
	dec	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, (bc)
	ld	c, a
	dec	hl
	inc	(hl)
	jr	NZ,00451$
	inc	hl
	inc	(hl)
00451$:
	ld	hl, #0xff06
	ld	(hl), c
;music.c:320: break;
	jp	00210$
;music.c:325: case T_MACRO:
00201$:
;music.c:326: note = *mus_data1++;
	ld	hl, #_mus_data1 + 1
	dec	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, (bc)
	ldhl	sp,#0
	ld	(hl), a
	ld	hl, #_mus_data1
	inc	(hl)
	jr	NZ,00452$
	inc	hl
	inc	(hl)
00452$:
;music.c:327: mus_data1_bak = mus_data1;
	ld	hl, #_mus_data1
	ld	a, (hl+)
	ld	e, (hl)
	ld	hl, #_mus_data1_bak
	ld	(hl+), a
	ld	(hl), e
;music.c:328: mus_data1 = mus_song + ((UWORD*)mus_song)[5 + note];
	ld	hl, #_mus_song
	ld	a, (hl+)
	ld	e, (hl)
	ldhl	sp,#2
	ld	(hl+), a
	ld	(hl), e
	ldhl	sp,#0
	ld	a, (hl)
	ld	(hl+), a
	ld	(hl), #0x00
	pop	de
	push	de
	ld	hl, #0x0005
	add	hl, de
	inc	sp
	inc	sp
	push	hl
	pop	bc
	push	bc
	sla	c
	rl	b
	ldhl	sp,#2
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	e, c
	ld	d, b
	ld	a,(de)
	ld	c, a
	inc	de
	ld	a,(de)
	ld	b, a
	ld	hl, #_mus_song
	ld	a, (hl)
	add	a, c
	ld	hl, #_mus_data1
	ld	(hl), a
	ld	hl, #_mus_song + 1
	ld	a, (hl)
	adc	a, b
	ld	hl, #_mus_data1 + 1
	ld	(hl), a
;music.c:329: mus_macro1 = 1U;
	ld	hl, #_mus_macro1
	ld	(hl), #0x01
;music.c:330: break;
	jp	00210$
;music.c:331: case T_EOF:
00202$:
;music.c:332: if(mus_macro1) {
	ld	hl, #_mus_macro1
	ld	a, (hl)
	or	a, a
	jr	Z,00206$
;music.c:333: mus_data1 = mus_data1_bak;
	ld	hl, #_mus_data1_bak
	ld	a, (hl+)
	ld	e, (hl)
	ld	hl, #_mus_data1
	ld	(hl+), a
	ld	(hl), e
;music.c:334: mus_macro1 = 0U;
	ld	hl, #_mus_macro1
	ld	(hl), #0x00
	jp	00210$
00206$:
;music.c:336: mus_data1 = mus_loop1;
	ld	hl, #_mus_loop1
	ld	a, (hl+)
	ld	e, (hl)
	ld	hl, #_mus_data1
	ld	(hl+), a
	ld	(hl), e
;music.c:337: mus_done1 = 1U;
	ld	hl, #_mus_done1
	ld	(hl), #0x01
;music.c:338: if(*mus_data1 == T_EOF) {
	ld	hl, #_mus_data1 + 1
	dec	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, (bc)
	sub	a, #0x14
	jp	NZ,00210$
;music.c:339: mus_wait1 = 255U;
	ld	hl, #_mus_wait1
	ld	(hl), #0xff
;music.c:340: return;
;music.c:344: }
00212$:
;music.c:346: }
	add	sp, #4
	ret
;music.c:348: void mus_update2() {
;	---------------------------------
; Function mus_update2
; ---------------------------------
_mus_update2::
	add	sp, #-4
;music.c:352: if(mus_slide2 && !(mus_step & 3U)) {
	ld	hl, #_mus_slide2
	ld	a, (hl)
	or	a, a
	jp	Z, 00111$
	ld	hl, #_mus_step
	ld	a, (hl)
	and	a, #0x03
	jp	NZ,00111$
;music.c:353: if(mus_target2 > mus_freq2) {
	ld	hl, #_mus_freq2
	ld	d, h
	ld	e, l
	ld	hl, #_mus_target2
	ld	a, (de)
	sub	a, (hl)
	inc	hl
	inc	de
	ld	a, (de)
	sbc	a, (hl)
	jp	NC, 00108$
;music.c:354: mus_freq2 += mus_slide2;
	ld	hl, #_mus_slide2
	ld	c, (hl)
	ld	b, #0x00
	ld	hl, #_mus_freq2
	ld	a, (hl)
	add	a, c
	ld	(hl+), a
	ld	a, (hl)
	adc	a, b
	ld	(hl), a
;music.c:355: if(mus_freq2 > mus_target2) {
	ld	hl, #_mus_target2
	ld	d, h
	ld	e, l
	ld	hl, #_mus_freq2
	ld	a, (de)
	sub	a, (hl)
	inc	hl
	inc	de
	ld	a, (de)
	sbc	a, (hl)
	jp	NC, 00109$
;music.c:356: mus_freq2 = mus_target2;
	ld	hl, #_mus_target2
	ld	a, (hl+)
	ld	e, (hl)
	ld	hl, #_mus_freq2
	ld	(hl+), a
	ld	(hl), e
	jp	00109$
00108$:
;music.c:359: else if(mus_target2 < mus_freq2) {
	ld	hl, #_mus_target2
	ld	d, h
	ld	e, l
	ld	hl, #_mus_freq2
	ld	a, (de)
	sub	a, (hl)
	inc	hl
	inc	de
	ld	a, (de)
	sbc	a, (hl)
	jr	NC,00109$
;music.c:360: mus_freq2 -= mus_slide2;
	ld	hl, #_mus_slide2
	ld	c, (hl)
	ld	b, #0x00
	ld	hl, #_mus_freq2
	ld	a, (hl)
	sub	a, c
	ld	(hl+), a
	ld	a, (hl)
	sbc	a, b
;music.c:361: if(mus_freq2 < mus_target2) {
	ld	(hl-), a
	ld	d, h
	ld	e, l
	ld	hl, #_mus_target2
	ld	a, (de)
	sub	a, (hl)
	inc	hl
	inc	de
	ld	a, (de)
	sbc	a, (hl)
	jr	NC,00109$
;music.c:362: mus_freq2 = mus_target2;
	ld	hl, #_mus_target2
	ld	a, (hl+)
	ld	e, (hl)
	ld	hl, #_mus_freq2
	ld	(hl+), a
	ld	(hl), e
00109$:
;music.c:365: NR23_REG = (UBYTE)mus_freq2;
	ld	hl, #_mus_freq2
	ld	a, (hl)
	ld	hl, #0xff18
	ld	(hl), a
;music.c:366: NR24_REG = mus_freq2 >> 8;
	ld	hl, #_mus_freq2 + 1
	ld	c, (hl)
	ld	b, #0x00
	ld	hl, #0xff19
	ld	(hl), c
00111$:
;music.c:369: if(mus_vib_delay2) {
	ld	hl, #_mus_vib_delay2
	ld	a, (hl)
	or	a, a
	jr	Z,00116$
;music.c:370: mus_vib_delay2--;
	dec	(hl)
	jp	00117$
00116$:
;music.c:372: else if(mus_vib_speed2) {
	ld	hl, #_mus_vib_speed2
	ld	a, (hl)
	or	a, a
	jp	Z, 00117$
;music.c:373: mus_vib_pos2 = (mus_vib_pos2 + mus_vib_speed2) & 63U;
	ld	hl, #_mus_vib_pos2
	ld	a, (hl)
	ld	hl, #_mus_vib_speed2
	add	a, (hl)
	and	a, #0x3f
	ld	hl, #_mus_vib_pos2
	ld	(hl), a
;music.c:374: tmp_freq = mus_freq2 - *mus_vib_table2 + mus_vib_table2[mus_vib_pos2];
	ld	hl, #_mus_vib_table2 + 1
	dec	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, (bc)
	ld	c, a
	ld	b, #0x00
	ld	hl, #_mus_freq2 + 1
	dec	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, e
	sub	a, c
	ld	e, a
	ld	a, d
	sbc	a, b
	ldhl	sp,#1
	ld	(hl-), a
	ld	(hl), e
	ld	hl, #_mus_vib_table2
	ld	a, (hl)
	ld	hl, #_mus_vib_pos2
	add	a, (hl)
	ld	c, a
	ld	hl, #_mus_vib_table2 + 1
	ld	a, (hl)
	adc	a, #0x00
	ld	b, a
	ld	a, (bc)
	ld	c, a
	ld	b, #0x00
	pop	hl
	push	hl
	add	hl, bc
	ld	c, l
	ld	b, h
;music.c:376: NR23_REG = (UBYTE)tmp_freq;
	ld	a, c
	ld	hl, #0xff18
	ld	(hl), a
;music.c:377: NR24_REG = tmp_freq >> 8;
	ld	c, #0x00
	ld	l, #0x19
	ld	(hl), b
00117$:
;music.c:380: if(mus_wait2) {
	ld	hl, #_mus_wait2
	ld	a, (hl)
	or	a, a
	jr	Z,00209$
;music.c:381: mus_wait2--;
	dec	(hl)
;music.c:382: if(mus_wait2) return;
	ld	a, (hl)
	or	a, a
;music.c:385: while(1U) {
	jp	NZ,00192$
00209$:
00190$:
;music.c:386: note = *mus_data2++;
	ld	hl, #_mus_data2 + 1
	dec	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, (bc)
	ldhl	sp,#0
	ld	(hl), a
	ld	hl, #_mus_data2
	inc	(hl)
	jr	NZ,00336$
	inc	hl
	inc	(hl)
00336$:
;music.c:387: if(note >= MUS_FIRST_NOTE) {
	ldhl	sp,#0
	ld	a, (hl)
	sub	a, #0x15
	jp	C, 00135$
;music.c:388: if(note & MUS_HAS_LENGTH) {
	bit	7, (hl)
	jr	Z,00123$
;music.c:389: note ^= MUS_HAS_LENGTH;
	ldhl	sp,#0
	ld	c, (hl)
	ld	b, #0x00
	ld	a, c
	xor	a, #0x80
	ld	c, a
	ld	(hl), c
;music.c:390: mus_wait2 = *mus_data2++;
	ld	hl, #_mus_data2 + 1
	dec	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, (bc)
	ld	hl, #_mus_wait2
	ld	(hl), a
	ld	hl, #_mus_data2
	inc	(hl)
	jr	NZ,00124$
	inc	hl
	inc	(hl)
	jr	00124$
00123$:
;music.c:393: mus_wait2 = mus_length2;
	push	hl
	ld	hl, #_mus_length2
	ld	a, (hl)
	ld	hl, #_mus_wait2
	ld	(hl), a
	pop	hl
00124$:
;music.c:395: if(note == T_WAIT) {
	ldhl	sp,#0
	ld	a, (hl)
	sub	a, #0x22
	jp	Z,00192$
	jr	00132$
;music.c:396: return;
	jp	00192$
00132$:
;music.c:397: } else if(note == T_REST) {
	ldhl	sp,#0
	ld	a, (hl)
	sub	a, #0x21
	jr	NZ,00129$
;music.c:398: mus_freq2 = 0U;
	ld	hl, #_mus_freq2
	ld	(hl), #0x00
	inc	hl
	ld	(hl), #0x00
;music.c:399: NR22_REG = 0U;
	ld	hl, #0xff17
	ld	(hl), #0x00
	jp	00133$
00129$:
;music.c:401: tmp_freq = freq[(mus_octave2 << 4) + note - MUS_FIRST_NOTE] + mus_po2 - 128U;
	ld	hl, #_mus_octave2
	ld	c, (hl)
	ld	b, #0x00
	sla	c
	rl	b
	sla	c
	rl	b
	sla	c
	rl	b
	sla	c
	rl	b
	ldhl	sp,#0
	ld	a, (hl+)
	inc	hl
	ld	(hl+), a
	ld	(hl), #0x00
	dec	hl
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	a, c
	add	a, #0xeb
	ld	c, a
	ld	a, b
	adc	a, #0xff
	ld	b, a
	sla	c
	rl	b
	ld	hl, #_freq
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	e, c
	ld	d, b
	ld	a,(de)
	ldhl	sp,#2
	ld	(hl+), a
	inc	de
	ld	a, (de)
	ld	(hl), a
	ld	hl, #_mus_po2
	ld	c, (hl)
	ld	b, #0x00
	ldhl	sp,#2
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	a, c
	add	a, #0x80
	ld	c, a
	ld	a, b
	adc	a, #0xff
	ld	b, a
;music.c:402: if(mus_porta2) {
	ld	hl, #_mus_porta2
	ld	a, (hl)
	or	a, a
	jr	Z,00126$
;music.c:403: mus_target2 = tmp_freq;
	ld	hl, #_mus_target2
	ld	(hl), c
	inc	hl
	ld	(hl), b
	jr	00127$
00126$:
;music.c:405: mus_freq2 = tmp_freq;
	ld	hl, #_mus_freq2
	ld	(hl), c
	inc	hl
	ld	(hl), b
00127$:
;music.c:407: NR22_REG = mus_volume2 | mus_env2;
	ld	hl, #_mus_volume2
	ld	a, (hl)
	ld	hl, #_mus_env2
	or	a, (hl)
	ld	hl, #0xff17
	ld	(hl), a
00133$:
;music.c:409: NR23_REG = (UBYTE)mus_freq2;
	ld	hl, #_mus_freq2
	ld	a, (hl)
	ld	hl, #0xff18
	ld	(hl), a
;music.c:410: NR24_REG = 0x80U | (mus_freq2 >> 8);
	ld	hl, #_mus_freq2 + 1
	ld	c, (hl)
	ld	b, #0x00
	set	7, c
	ld	hl, #0xff19
	ld	(hl), c
;music.c:411: return;
	jp	00192$
00135$:
;music.c:413: switch(note) {
	ld	a, #0x14
	ldhl	sp,#0
	sub	a, (hl)
	jp	C, 00190$
	ld	c, (hl)
	ld	b, #0x00
	ld	hl, #00347$
	add	hl, bc
	add	hl, bc
	add	hl, bc
	jp	(hl)
00347$:
	jp	00136$
	jp	00137$
	jp	00138$
	jp	00139$
	jp	00140$
	jp	00141$
	jp	00142$
	jp	00143$
	jp	00144$
	jp	00145$
	jp	00149$
	jp	00159$
	jp	00169$
	jp	00170$
	jp	00176$
	jp	00177$
	jp	00178$
	jp	00190$
	jp	00190$
	jp	00181$
	jp	00182$
;music.c:414: case T_LENGTH:
00136$:
;music.c:415: mus_length2 = *mus_data2++;
	ld	hl, #_mus_data2 + 1
	dec	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, (bc)
	ld	hl, #_mus_length2
	ld	(hl), a
	ld	hl, #_mus_data2
	inc	(hl)
	jp	NZ,00190$
	inc	hl
	inc	(hl)
;music.c:416: break;
	jp	00190$
;music.c:417: case T_OCTAVE:
00137$:
;music.c:418: mus_octave2 = *mus_data2++;
	ld	hl, #_mus_data2 + 1
	dec	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, (bc)
	ld	hl, #_mus_octave2
	ld	(hl), a
	ld	hl, #_mus_data2
	inc	(hl)
	jp	NZ,00190$
	inc	hl
	inc	(hl)
;music.c:419: break;
	jp	00190$
;music.c:420: case T_OCT_UP:
00138$:
;music.c:421: mus_octave2++;
	ld	hl, #_mus_octave2
	inc	(hl)
;music.c:422: break;
	jp	00190$
;music.c:423: case T_OCT_DOWN:
00139$:
;music.c:424: mus_octave2--;
	ld	hl, #_mus_octave2
	dec	(hl)
;music.c:425: break;
	jp	00190$
;music.c:426: case T_VOL:
00140$:
;music.c:427: mus_volume2 = *mus_data2++;
	ld	hl, #_mus_data2 + 1
	dec	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, (bc)
	ld	hl, #_mus_volume2
	ld	(hl), a
	ld	hl, #_mus_data2
	inc	(hl)
	jr	NZ,00350$
	inc	hl
	inc	(hl)
00350$:
;music.c:428: NR22_REG = mus_volume2 | mus_env2;
	ld	hl, #_mus_volume2
	ld	a, (hl)
	ld	hl, #_mus_env2
	or	a, (hl)
	ld	hl, #0xff17
	ld	(hl), a
;music.c:429: break;
	jp	00190$
;music.c:430: case T_ENV:
00141$:
;music.c:431: mus_env2 = *mus_data2++;
	ld	hl, #_mus_data2 + 1
	dec	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, (bc)
	ld	hl, #_mus_env2
	ld	(hl), a
	ld	hl, #_mus_data2
	inc	(hl)
	jr	NZ,00351$
	inc	hl
	inc	(hl)
00351$:
;music.c:432: NR22_REG = mus_volume2 | mus_env2;
	ld	hl, #_mus_volume2
	ld	a, (hl)
	ld	hl, #_mus_env2
	or	a, (hl)
	ld	hl, #0xff17
	ld	(hl), a
;music.c:433: break;
	jp	00190$
;music.c:434: case T_WAVEDUTY:
00142$:
;music.c:435: mus_duty2 = *mus_data2++;
	ld	hl, #_mus_data2 + 1
	dec	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, (bc)
	ld	hl, #_mus_duty2
	ld	(hl), a
	ld	hl, #_mus_data2
	inc	(hl)
	jr	NZ,00352$
	inc	hl
	inc	(hl)
00352$:
;music.c:436: NR21_REG = mus_duty2;
	ld	de, #0xff16
	ld	hl, #_mus_duty2
	ld	a, (hl)
	ld	(de), a
;music.c:437: break;
	jp	00190$
;music.c:438: case T_PAN:
00143$:
;music.c:439: mus_pan2 = *mus_data2++;
	ld	hl, #_mus_data2 + 1
	dec	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, (bc)
	ld	hl, #_mus_pan2
	ld	(hl), a
	ld	hl, #_mus_data2
	inc	(hl)
	jr	NZ,00353$
	inc	hl
	inc	(hl)
00353$:
;music.c:440: NR51_REG = (NR51_REG & 0xDDU) | (mus_pan2 << 1);
	ld	de, #0xff25
	ld	a,(de)
	ld	c, a
	ld	b, #0x00
	ld	a, c
	and	a, #0xdd
	ld	c, a
	ld	b, #0x00
	ld	hl, #_mus_pan2
	ld	a, (hl)
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
	ld	hl, #0xff25
	ld	(hl), c
;music.c:441: break;
	jp	00190$
;music.c:442: case T_PORTAMENTO:
00144$:
;music.c:443: mus_slide2 = mus_porta2 = *mus_data2++;
	ld	hl, #_mus_data2 + 1
	dec	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, (bc)
	ld	c, a
	dec	hl
	inc	(hl)
	jr	NZ,00354$
	inc	hl
	inc	(hl)
00354$:
	ld	hl, #_mus_porta2
	ld	(hl), c
	ld	hl, #_mus_slide2
	ld	(hl), c
;music.c:444: break;
	jp	00190$
;music.c:445: case T_SLIDE:
00145$:
;music.c:446: mus_slide2 = *mus_data2++;
	ld	hl, #_mus_data2 + 1
	dec	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, (bc)
	ld	hl, #_mus_slide2
	ld	(hl), a
	ld	hl, #_mus_data2
	inc	(hl)
	jr	NZ,00355$
	inc	hl
	inc	(hl)
00355$:
;music.c:447: mus_porta2 = 0U;
	ld	hl, #_mus_porta2
	ld	(hl), #0x00
;music.c:448: if(mus_slide2 >= 128U) {
	ld	hl, #_mus_slide2
	ld	a, (hl)
	sub	a, #0x80
	jr	C,00147$
;music.c:449: mus_target2 = 0xFFFFU;
	ld	hl, #_mus_target2
	ld	(hl), #0xff
	inc	hl
	ld	(hl), #0xff
;music.c:450: mus_slide2 = mus_slide2 - 128U;
	ld	hl, #_mus_slide2
	ld	a, (hl)
	add	a, #0x80
	ld	(hl), a
	jp	00190$
00147$:
;music.c:452: mus_target2 = 0U;
	ld	hl, #_mus_target2
	ld	(hl), #0x00
	inc	hl
	ld	(hl), #0x00
;music.c:453: mus_slide2 = 128U - mus_slide2;
	ld	a, #0x80
	ld	hl, #_mus_slide2
	sub	a, (hl)
	ld	(hl), a
;music.c:455: break;
	jp	00190$
;music.c:456: case T_VIBRATO:
00149$:
;music.c:457: mus_vib_pos2 = 0U;
	ld	hl, #_mus_vib_pos2
	ld	(hl), #0x00
;music.c:458: note = *mus_data2++;
	ld	hl, #_mus_data2 + 1
	dec	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, (bc)
	ld	c, a
	dec	hl
	inc	(hl)
	jr	NZ,00356$
	inc	hl
	inc	(hl)
00356$:
;music.c:459: mus_vib_speed2 = note & 15U; // 0b1111
	ld	a, c
	and	a, #0x0f
	ld	hl, #_mus_vib_speed2
	ld	(hl), a
;music.c:460: note = note >> 4;
	ld	a, c
	swap	a
	and	a, #0x0f
;music.c:461: if(note == 1U) mus_vib_table2 = vib1;
	cp	a, #0x01
	jr	NZ,00157$
	ld	hl, #_mus_vib_table2
	ld	(hl), #<(_vib1)
	inc	hl
	ld	(hl), #>(_vib1)
	jr	00158$
00157$:
;music.c:462: else if(note == 2U) mus_vib_table2 = vib2;
	cp	a, #0x02
	jr	NZ,00154$
	ld	hl, #_mus_vib_table2
	ld	(hl), #<(_vib2)
	inc	hl
	ld	(hl), #>(_vib2)
	jr	00158$
00154$:
;music.c:463: else if(note == 3U) mus_vib_table2 = vib3;
	sub	a, #0x03
	jr	NZ,00151$
	ld	hl, #_mus_vib_table2
	ld	(hl), #<(_vib3)
	inc	hl
	ld	(hl), #>(_vib3)
	jr	00158$
00151$:
;music.c:464: else mus_vib_table2 = vib4;
	ld	hl, #_mus_vib_table2
	ld	(hl), #<(_vib4)
	inc	hl
	ld	(hl), #>(_vib4)
00158$:
;music.c:465: mus_vib_delay2 = 0U;
	ld	hl, #_mus_vib_delay2
	ld	(hl), #0x00
;music.c:466: break;
	jp	00190$
;music.c:467: case T_VIBRATO_DELAY:
00159$:
;music.c:468: mus_vib_pos2 = 0U;
	ld	hl, #_mus_vib_pos2
	ld	(hl), #0x00
;music.c:469: note = *mus_data2++;
	ld	hl, #_mus_data2 + 1
	dec	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, (bc)
	ld	c, a
	dec	hl
	inc	(hl)
	jr	NZ,00363$
	inc	hl
	inc	(hl)
00363$:
;music.c:470: mus_vib_speed2 = note & 15U;
	ld	a, c
	and	a, #0x0f
	ld	hl, #_mus_vib_speed2
	ld	(hl), a
;music.c:471: note = note >> 4;
	ld	a, c
	swap	a
	and	a, #0x0f
;music.c:472: if(note == 1U) mus_vib_table2 = vib1;
	cp	a, #0x01
	jr	NZ,00167$
	ld	hl, #_mus_vib_table2
	ld	(hl), #<(_vib1)
	inc	hl
	ld	(hl), #>(_vib1)
	jr	00168$
00167$:
;music.c:473: else if(note == 2U) mus_vib_table2 = vib2;
	cp	a, #0x02
	jr	NZ,00164$
	ld	hl, #_mus_vib_table2
	ld	(hl), #<(_vib2)
	inc	hl
	ld	(hl), #>(_vib2)
	jr	00168$
00164$:
;music.c:474: else if(note == 3U) mus_vib_table2 = vib3;
	sub	a, #0x03
	jr	NZ,00161$
	ld	hl, #_mus_vib_table2
	ld	(hl), #<(_vib3)
	inc	hl
	ld	(hl), #>(_vib3)
	jr	00168$
00161$:
;music.c:475: else mus_vib_table2 = vib4;
	ld	hl, #_mus_vib_table2
	ld	(hl), #<(_vib4)
	inc	hl
	ld	(hl), #>(_vib4)
00168$:
;music.c:476: mus_vib_delay2 = *mus_data2++;
	ld	hl, #_mus_data2 + 1
	dec	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, (bc)
	ld	hl, #_mus_vib_delay2
	ld	(hl), a
	ld	hl, #_mus_data2
	inc	(hl)
	jp	NZ,00190$
	inc	hl
	inc	(hl)
;music.c:477: break;
	jp	00190$
;music.c:478: case T_REP_START:
00169$:
;music.c:479: mus_rep_depth2++;
	ld	hl, #_mus_rep_depth2
	inc	(hl)
;music.c:480: mus_rep2[mus_rep_depth2] = mus_data2;
	ld	c, (hl)
	ld	b, #0x00
	sla	c
	rl	b
	ld	hl, #_mus_rep2
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	hl, #_mus_data2
	ld	a, (hl+)
	ld	(bc), a
	inc	bc
	ld	a, (hl)
	ld	(bc), a
;music.c:481: break;
	jp	00190$
;music.c:482: case T_REP_END:
00170$:
;music.c:483: note = *mus_data2++;
	ld	hl, #_mus_data2 + 1
	dec	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, (bc)
	ldhl	sp,#2
	ld	(hl), a
	ld	hl, #_mus_data2
	inc	(hl)
	jr	NZ,00373$
	inc	hl
	inc	(hl)
00373$:
;music.c:484: if(!mus_repeats2[mus_rep_depth2]) {
	ld	a, #<(_mus_repeats2)
	ld	hl, #_mus_rep_depth2
	add	a, (hl)
	ld	c, a
	ld	a, #>(_mus_repeats2)
	adc	a, #0x00
	ld	b, a
	ld	a, (bc)
	or	a, a
	jr	NZ,00172$
;music.c:485: mus_repeats2[mus_rep_depth2] = note;
	ldhl	sp,#2
	ld	a, (hl)
	ld	(bc), a
;music.c:486: mus_data2 = mus_rep2[mus_rep_depth2];
	ld	hl, #_mus_rep_depth2
	ld	c, (hl)
	ld	b, #0x00
	sla	c
	rl	b
	ld	hl, #_mus_rep2
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	e, c
	ld	d, b
	ld	a,(de)
	ld	hl, #_mus_data2
	ld	(hl+), a
	inc	de
	ld	a, (de)
	ld	(hl), a
00172$:
;music.c:488: mus_repeats2[mus_rep_depth2]--;
	ld	a, #<(_mus_repeats2)
	ld	hl, #_mus_rep_depth2
	add	a, (hl)
	ld	c, a
	ld	a, #>(_mus_repeats2)
	adc	a, #0x00
	ld	b, a
	ld	a, (bc)
	dec	a
	ld	(bc), a
;music.c:489: if(mus_repeats2[mus_rep_depth2]) {
	ld	a, #<(_mus_repeats2)
	add	a, (hl)
	ld	c, a
	ld	a, #>(_mus_repeats2)
	adc	a, #0x00
	ld	b, a
	ld	a, (bc)
	or	a, a
	jr	Z,00174$
;music.c:490: mus_data2 = mus_rep2[mus_rep_depth2];
	ld	c, (hl)
	ld	b, #0x00
	sla	c
	rl	b
	ld	hl, #_mus_rep2
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	e, c
	ld	d, b
	ld	a,(de)
	ld	hl, #_mus_data2
	ld	(hl+), a
	inc	de
	ld	a, (de)
	ld	(hl), a
	jp	00190$
00174$:
;music.c:492: mus_rep_depth2--;
	ld	hl, #_mus_rep_depth2
	dec	(hl)
;music.c:494: break;
	jp	00190$
;music.c:495: case T_LOOP:
00176$:
;music.c:496: mus_loop2 = mus_data2;
	ld	hl, #_mus_data2
	ld	a, (hl+)
	ld	e, (hl)
	ld	hl, #_mus_loop2
	ld	(hl+), a
	ld	(hl), e
;music.c:497: break;
	jp	00190$
;music.c:498: case T_PITCH_OFFSET:
00177$:
;music.c:499: mus_po2 = *mus_data2++;
	ld	hl, #_mus_data2 + 1
	dec	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, (bc)
	ld	hl, #_mus_po2
	ld	(hl), a
	ld	hl, #_mus_data2
	inc	(hl)
	jp	NZ,00190$
	inc	hl
	inc	(hl)
;music.c:500: break;
	jp	00190$
;music.c:501: case T_TEMPO:
00178$:
;music.c:502: TMA_REG = *mus_data2++;
	ld	hl, #_mus_data2 + 1
	dec	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, (bc)
	ld	c, a
	dec	hl
	inc	(hl)
	jr	NZ,00379$
	inc	hl
	inc	(hl)
00379$:
	ld	hl, #0xff06
	ld	(hl), c
;music.c:503: break;
	jp	00190$
;music.c:508: case T_MACRO:
00181$:
;music.c:509: note = *mus_data2++;
	ld	hl, #_mus_data2 + 1
	dec	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, (bc)
	ldhl	sp,#2
	ld	(hl), a
	ld	hl, #_mus_data2
	inc	(hl)
	jr	NZ,00380$
	inc	hl
	inc	(hl)
00380$:
;music.c:510: mus_data2_bak = mus_data2;
	ld	hl, #_mus_data2
	ld	a, (hl+)
	ld	e, (hl)
	ld	hl, #_mus_data2_bak
	ld	(hl+), a
	ld	(hl), e
;music.c:511: mus_data2 = mus_song + ((UWORD*)mus_song)[5 + note];
	ld	hl, #_mus_song
	ld	a, (hl+)
	ld	e, (hl)
	ldhl	sp,#0
	ld	(hl+), a
	ld	(hl), e
	inc	hl
	ld	a, (hl)
	ld	(hl+), a
	ld	(hl), #0x00
	dec	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x0005
	add	hl, de
	ld	a, l
	ld	d, h
	ldhl	sp,#2
	ld	(hl+), a
	ld	(hl), d
	dec	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	sla	c
	rl	b
	pop	hl
	push	hl
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	e, c
	ld	d, b
	ld	a,(de)
	ld	c, a
	inc	de
	ld	a,(de)
	ld	b, a
	ld	hl, #_mus_song
	ld	a, (hl)
	add	a, c
	ld	hl, #_mus_data2
	ld	(hl), a
	ld	hl, #_mus_song + 1
	ld	a, (hl)
	adc	a, b
	ld	hl, #_mus_data2 + 1
	ld	(hl), a
;music.c:512: mus_macro2 = 1U;
	ld	hl, #_mus_macro2
	ld	(hl), #0x01
;music.c:513: break;
	jp	00190$
;music.c:514: case T_EOF:
00182$:
;music.c:515: if(mus_macro2) {
	ld	hl, #_mus_macro2
	ld	a, (hl)
	or	a, a
	jr	Z,00186$
;music.c:516: mus_data2 = mus_data2_bak;
	ld	hl, #_mus_data2_bak
	ld	a, (hl+)
	ld	e, (hl)
	ld	hl, #_mus_data2
	ld	(hl+), a
	ld	(hl), e
;music.c:517: mus_macro2 = 0U;
	ld	hl, #_mus_macro2
	ld	(hl), #0x00
	jp	00190$
00186$:
;music.c:519: mus_data2 = mus_loop2;
	ld	hl, #_mus_loop2
	ld	a, (hl+)
	ld	e, (hl)
	ld	hl, #_mus_data2
	ld	(hl+), a
	ld	(hl), e
;music.c:520: mus_done2 = 1U;
	ld	hl, #_mus_done2
	ld	(hl), #0x01
;music.c:521: if(*mus_data2 == T_EOF) {
	ld	hl, #_mus_data2 + 1
	dec	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, (bc)
	sub	a, #0x14
	jp	NZ,00190$
;music.c:522: mus_wait2 = 255U;
	ld	hl, #_mus_wait2
	ld	(hl), #0xff
;music.c:523: return;
;music.c:527: }
00192$:
;music.c:529: }
	add	sp, #4
	ret
;music.c:531: void mus_update3() {
;	---------------------------------
; Function mus_update3
; ---------------------------------
_mus_update3::
	add	sp, #-5
;music.c:534: if(mus_wait3) {
	ld	hl, #_mus_wait3
	ld	a, (hl)
	or	a, a
	jr	Z,00159$
;music.c:535: mus_wait3--;
	dec	(hl)
;music.c:536: if(mus_wait3) return;
	ld	a, (hl)
	or	a, a
;music.c:539: while(1U) {
	jp	NZ,00151$
00159$:
00149$:
;music.c:540: note = *mus_data3++;
	ld	hl, #_mus_data3 + 1
	dec	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, (bc)
	ldhl	sp,#2
	ld	(hl), a
	ld	hl, #_mus_data3
	inc	(hl)
	jr	NZ,00213$
	inc	hl
	inc	(hl)
00213$:
;music.c:541: if(note >= MUS_FIRST_NOTE) {
	ldhl	sp,#2
	ld	a, (hl)
	sub	a, #0x15
	jp	C, 00115$
;music.c:542: if(note & MUS_HAS_LENGTH) {
	bit	7, (hl)
	jr	Z,00106$
;music.c:543: note ^= MUS_HAS_LENGTH;
	ldhl	sp,#2
	ld	c, (hl)
	ld	b, #0x00
	ld	a, c
	xor	a, #0x80
	ld	c, a
	ld	(hl), c
;music.c:544: mus_wait3 = *mus_data3++;
	ld	hl, #_mus_data3 + 1
	dec	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, (bc)
	ld	hl, #_mus_wait3
	ld	(hl), a
	ld	hl, #_mus_data3
	inc	(hl)
	jr	NZ,00107$
	inc	hl
	inc	(hl)
	jr	00107$
00106$:
;music.c:546: mus_wait3 = mus_length3;
	push	hl
	ld	hl, #_mus_length3
	ld	a, (hl)
	ld	hl, #_mus_wait3
	ld	(hl), a
	pop	hl
00107$:
;music.c:548: if(note == T_WAIT) {
	ldhl	sp,#2
	ld	a, (hl)
	sub	a, #0x22
	jp	Z,00151$
	jr	00112$
;music.c:549: return;
	jp	00151$
00112$:
;music.c:550: } else if(note == T_REST) {
	ldhl	sp,#2
	ld	a, (hl)
	sub	a, #0x21
	jr	NZ,00109$
;music.c:551: mus_freq3 = 0U;
	ld	hl, #_mus_freq3
	ld	(hl), #0x00
	inc	hl
	ld	(hl), #0x00
;music.c:552: NR32_REG = 0U;
	ld	hl, #0xff1c
	ld	(hl), #0x00
	jp	00113$
00109$:
;music.c:554: mus_freq3 = freq[(mus_octave3 << 4) + note - MUS_FIRST_NOTE] + mus_po3 - 128U;
	ld	hl, #_mus_octave3
	ld	c, (hl)
	ld	b, #0x00
	sla	c
	rl	b
	sla	c
	rl	b
	sla	c
	rl	b
	sla	c
	rl	b
	ldhl	sp,#2
	ld	a, (hl+)
	ld	(hl+), a
	ld	(hl), #0x00
	dec	hl
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	a, c
	add	a, #0xeb
	ld	c, a
	ld	a, b
	adc	a, #0xff
	ld	b, a
	sla	c
	rl	b
	ld	hl, #_freq
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	e, c
	ld	d, b
	ld	a,(de)
	ldhl	sp,#3
	ld	(hl+), a
	inc	de
	ld	a, (de)
	ld	(hl), a
	ld	hl, #_mus_po3
	ld	c, (hl)
	ld	b, #0x00
	ldhl	sp,#3
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	a, c
	add	a, #0x80
	ld	hl, #_mus_freq3
	ld	(hl), a
	ld	a, b
	adc	a, #0xff
	inc	hl
	ld	(hl), a
;music.c:555: NR32_REG = mus_volume3;
	ld	de, #0xff1c
	ld	hl, #_mus_volume3
	ld	a, (hl)
	ld	(de), a
00113$:
;music.c:557: NR30_REG = 0x0U;
	ld	hl, #0xff1a
	ld	(hl), #0x00
;music.c:558: NR30_REG = 0x80U;
	ld	l, #0x1a
	ld	(hl), #0x80
;music.c:559: NR33_REG = (UBYTE)mus_freq3;
	ld	hl, #_mus_freq3
	ld	a, (hl)
	ld	hl, #0xff1d
	ld	(hl), a
;music.c:560: NR34_REG = 0x80U | (mus_freq3 >> 8);
	ld	hl, #_mus_freq3 + 1
	ld	c, (hl)
	ld	b, #0x00
	set	7, c
	ld	hl, #0xff1e
	ld	(hl), c
;music.c:561: return;
	jp	00151$
00115$:
;music.c:563: switch(note) {
	ld	a, #0x14
	ldhl	sp,#2
	sub	a, (hl)
	jp	C, 00149$
	ld	c, (hl)
	ld	b, #0x00
	ld	hl, #00224$
	add	hl, bc
	add	hl, bc
	add	hl, bc
	jp	(hl)
00224$:
	jp	00116$
	jp	00117$
	jp	00118$
	jp	00119$
	jp	00120$
	jp	00149$
	jp	00149$
	jp	00123$
	jp	00149$
	jp	00149$
	jp	00149$
	jp	00149$
	jp	00128$
	jp	00129$
	jp	00135$
	jp	00136$
	jp	00137$
	jp	00149$
	jp	00139$
	jp	00140$
	jp	00141$
;music.c:564: case T_LENGTH:
00116$:
;music.c:565: mus_length3 = *mus_data3++;
	ld	hl, #_mus_data3 + 1
	dec	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, (bc)
	ld	hl, #_mus_length3
	ld	(hl), a
	ld	hl, #_mus_data3
	inc	(hl)
	jp	NZ,00149$
	inc	hl
	inc	(hl)
;music.c:566: break;
	jp	00149$
;music.c:567: case T_OCTAVE:
00117$:
;music.c:568: mus_octave3 = *mus_data3++;
	ld	hl, #_mus_data3 + 1
	dec	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, (bc)
	ld	hl, #_mus_octave3
	ld	(hl), a
	ld	hl, #_mus_data3
	inc	(hl)
	jp	NZ,00149$
	inc	hl
	inc	(hl)
;music.c:569: break;
	jp	00149$
;music.c:570: case T_OCT_UP:
00118$:
;music.c:571: mus_octave3++;
	ld	hl, #_mus_octave3
	inc	(hl)
;music.c:572: break;
	jp	00149$
;music.c:573: case T_OCT_DOWN:
00119$:
;music.c:574: mus_octave3--;
	ld	hl, #_mus_octave3
	dec	(hl)
;music.c:575: break;
	jp	00149$
;music.c:576: case T_VOL:
00120$:
;music.c:577: mus_volume3 = *mus_data3++;
	ld	hl, #_mus_data3 + 1
	dec	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, (bc)
	ld	hl, #_mus_volume3
	ld	(hl), a
	ld	hl, #_mus_data3
	inc	(hl)
	jp	NZ,00149$
	inc	hl
	inc	(hl)
;music.c:578: break;
	jp	00149$
;music.c:583: case T_PAN:
00123$:
;music.c:584: mus_pan3 = *mus_data3++;
	ld	hl, #_mus_data3 + 1
	dec	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, (bc)
	ld	hl, #_mus_pan3
	ld	(hl), a
	ld	hl, #_mus_data3
	inc	(hl)
	jr	NZ,00228$
	inc	hl
	inc	(hl)
00228$:
;music.c:585: NR51_REG = (NR51_REG & 0xBBU) | (mus_pan3 << 2);
	ld	de, #0xff25
	ld	a,(de)
	ld	c, a
	ld	b, #0x00
	ld	a, c
	and	a, #0xbb
	ldhl	sp,#3
	ld	(hl+), a
	ld	(hl), #0x00
	push	hl
	ld	hl, #_mus_pan3
	ld	a, (hl)
	ldhl	sp,#4
	ld	(hl), a
	pop	hl
	ldhl	sp,#2
	sla	(hl)
	sla	(hl)
	ld	a, (hl-)
	dec	hl
	ld	(hl), a
	rla
	sbc	a, a
	inc	hl
	ld	(hl-), a
	ld	a, (hl)
	ldhl	sp,#3
	or	a, (hl)
	ldhl	sp,#0
	ld	(hl+), a
	ld	a, (hl)
	ldhl	sp,#4
	or	a, (hl)
	ldhl	sp,#1
	ld	(hl-), a
	ld	a, (hl)
	ld	hl, #0xff25
	ld	(hl), a
;music.c:586: break;
	jp	00149$
;music.c:595: case T_REP_START:
00128$:
;music.c:596: mus_rep_depth3++;
	ld	hl, #_mus_rep_depth3
	inc	(hl)
;music.c:597: mus_rep3[mus_rep_depth3] = mus_data3;
	ld	a, (hl)
	ldhl	sp,#0
	ld	(hl+), a
	ld	(hl), #0x00
	dec	hl
	sla	(hl)
	inc	hl
	rl	(hl)
	pop	de
	push	de
	ld	hl, #_mus_rep3
	add	hl, de
	inc	sp
	inc	sp
	push	hl
	pop	de
	push	de
	ld	hl, #_mus_data3
	ld	a, (hl)
	ld	(de), a
	inc	de
	inc	hl
	ld	a, (hl)
	ld	(de), a
;music.c:598: break;
	jp	00149$
;music.c:599: case T_REP_END:
00129$:
;music.c:600: note = *mus_data3++;
	ld	hl, #_mus_data3 + 1
	dec	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, (bc)
	ldhl	sp,#0
	ld	(hl), a
	ld	hl, #_mus_data3
	inc	(hl)
	jr	NZ,00231$
	inc	hl
	inc	(hl)
00231$:
;music.c:601: if(!mus_repeats3[mus_rep_depth3]) {
	ld	a, #<(_mus_repeats3)
	ld	hl, #_mus_rep_depth3
	add	a, (hl)
	ld	c, a
	ld	a, #>(_mus_repeats3)
	adc	a, #0x00
	ld	b, a
	ld	a, (bc)
	or	a, a
	jr	NZ,00131$
;music.c:602: mus_repeats3[mus_rep_depth3] = note;
	ldhl	sp,#0
	ld	a, (hl)
	ld	(bc), a
;music.c:603: mus_data3 = mus_rep3[mus_rep_depth3];
	ld	hl, #_mus_rep_depth3
	ld	c, (hl)
	ld	b, #0x00
	sla	c
	rl	b
	ld	hl, #_mus_rep3
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	e, c
	ld	d, b
	ld	a,(de)
	ld	hl, #_mus_data3
	ld	(hl+), a
	inc	de
	ld	a, (de)
	ld	(hl), a
00131$:
;music.c:605: mus_repeats3[mus_rep_depth3]--;
	ld	a, #<(_mus_repeats3)
	ld	hl, #_mus_rep_depth3
	add	a, (hl)
	ld	c, a
	ld	a, #>(_mus_repeats3)
	adc	a, #0x00
	ld	b, a
	ld	a, (bc)
	dec	a
	ld	(bc), a
;music.c:606: if(mus_repeats3[mus_rep_depth3]) {
	ld	a, #<(_mus_repeats3)
	add	a, (hl)
	ld	c, a
	ld	a, #>(_mus_repeats3)
	adc	a, #0x00
	ld	b, a
	ld	a, (bc)
	or	a, a
	jr	Z,00133$
;music.c:607: mus_data3 = mus_rep3[mus_rep_depth3];
	ld	c, (hl)
	ld	b, #0x00
	sla	c
	rl	b
	ld	hl, #_mus_rep3
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	e, c
	ld	d, b
	ld	a,(de)
	ld	hl, #_mus_data3
	ld	(hl+), a
	inc	de
	ld	a, (de)
	ld	(hl), a
	jp	00149$
00133$:
;music.c:609: mus_rep_depth3--;
	ld	hl, #_mus_rep_depth3
	dec	(hl)
;music.c:611: break;
	jp	00149$
;music.c:612: case T_LOOP:
00135$:
;music.c:613: mus_loop3 = mus_data3;
	ld	hl, #_mus_data3
	ld	a, (hl+)
	ld	e, (hl)
	ld	hl, #_mus_loop3
	ld	(hl+), a
	ld	(hl), e
;music.c:614: break;
	jp	00149$
;music.c:615: case T_PITCH_OFFSET:
00136$:
;music.c:616: mus_po3 = *mus_data3++;
	ld	hl, #_mus_data3 + 1
	dec	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, (bc)
	ld	hl, #_mus_po3
	ld	(hl), a
	ld	hl, #_mus_data3
	inc	(hl)
	jp	NZ,00149$
	inc	hl
	inc	(hl)
;music.c:617: break;
	jp	00149$
;music.c:618: case T_TEMPO:
00137$:
;music.c:619: TMA_REG = *mus_data3++;
	ld	hl, #_mus_data3 + 1
	dec	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, (bc)
	ld	c, a
	dec	hl
	inc	(hl)
	jr	NZ,00237$
	inc	hl
	inc	(hl)
00237$:
	ld	hl, #0xff06
	ld	(hl), c
;music.c:620: break;
	jp	00149$
;music.c:623: case T_WAVE:
00139$:
;music.c:624: note = *mus_data3++;
	ld	hl, #_mus_data3 + 1
	dec	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, (bc)
	ld	c, a
	dec	hl
	inc	(hl)
	jr	NZ,00238$
	inc	hl
	inc	(hl)
00238$:
;music.c:625: NR30_REG = 0x0U;
	ld	hl, #0xff1a
	ld	(hl), #0x00
;music.c:626: memcpy(0xFF30, mus_wave + (note << 4), 16U);
	ldhl	sp,#0
	ld	(hl), c
	inc	hl
	ld	(hl), #0x00
	ld	a, #0x04+1
	jr	00240$
00239$:
	dec	hl
	sla	(hl)
	inc	hl
	rl	(hl)
00240$:
	dec	a
	jr	NZ,00239$
	pop	de
	push	de
	ld	hl, #_mus_wave
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, de
	inc	sp
	inc	sp
	push	hl
	pop	bc
	push	bc
	ld	hl, #0x0010
	push	hl
	push	bc
	ld	hl, #0xff30
	push	hl
	call	_memcpy
	add	sp, #6
;music.c:627: NR30_REG = 0x80U;
	ld	hl, #0xff1a
	ld	(hl), #0x80
;music.c:628: break;
	jp	00149$
;music.c:629: case T_MACRO:
00140$:
;music.c:630: note = *mus_data3++;
	ld	hl, #_mus_data3 + 1
	dec	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, (bc)
	ldhl	sp,#0
	ld	(hl), a
	ld	hl, #_mus_data3
	inc	(hl)
	jr	NZ,00241$
	inc	hl
	inc	(hl)
00241$:
;music.c:631: mus_data3_bak = mus_data3;
	ld	hl, #_mus_data3
	ld	a, (hl+)
	ld	e, (hl)
	ld	hl, #_mus_data3_bak
	ld	(hl+), a
	ld	(hl), e
;music.c:632: mus_data3 = mus_song + ((UWORD*)mus_song)[5 + note];
	ld	hl, #_mus_song
	ld	a, (hl+)
	ld	e, (hl)
	ldhl	sp,#3
	ld	(hl+), a
	ld	(hl), e
	ldhl	sp,#0
	ld	a, (hl)
	ld	(hl+), a
	ld	(hl), #0x00
	pop	de
	push	de
	ld	hl, #0x0005
	add	hl, de
	inc	sp
	inc	sp
	push	hl
	pop	bc
	push	bc
	sla	c
	rl	b
	ldhl	sp,#3
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	e, c
	ld	d, b
	ld	a,(de)
	ld	c, a
	inc	de
	ld	a,(de)
	ld	b, a
	ld	hl, #_mus_song
	ld	a, (hl)
	add	a, c
	ld	hl, #_mus_data3
	ld	(hl), a
	ld	hl, #_mus_song + 1
	ld	a, (hl)
	adc	a, b
	ld	hl, #_mus_data3 + 1
	ld	(hl), a
;music.c:633: mus_macro3 = 1U;
	ld	hl, #_mus_macro3
	ld	(hl), #0x01
;music.c:634: break;
	jp	00149$
;music.c:635: case T_EOF:
00141$:
;music.c:636: if(mus_macro3) {
	ld	hl, #_mus_macro3
	ld	a, (hl)
	or	a, a
	jr	Z,00145$
;music.c:637: mus_data3 = mus_data3_bak;
	ld	hl, #_mus_data3_bak
	ld	a, (hl+)
	ld	e, (hl)
	ld	hl, #_mus_data3
	ld	(hl+), a
	ld	(hl), e
;music.c:638: mus_macro3 = 0U;
	ld	hl, #_mus_macro3
	ld	(hl), #0x00
	jp	00149$
00145$:
;music.c:640: mus_data3 = mus_loop3;
	ld	hl, #_mus_loop3
	ld	a, (hl+)
	ld	e, (hl)
	ld	hl, #_mus_data3
	ld	(hl+), a
	ld	(hl), e
;music.c:641: mus_done3 = 1U;
	ld	hl, #_mus_done3
	ld	(hl), #0x01
;music.c:642: if(*mus_data3 == T_EOF) {
	ld	hl, #_mus_data3 + 1
	dec	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, (bc)
	sub	a, #0x14
	jp	NZ,00149$
;music.c:643: mus_wait3 = 255U;
	ld	hl, #_mus_wait3
	ld	(hl), #0xff
;music.c:644: return;
;music.c:648: }
00151$:
;music.c:650: }
	add	sp, #5
	ret
;music.c:652: void mus_update4() {
;	---------------------------------
; Function mus_update4
; ---------------------------------
_mus_update4::
	add	sp, #-6
;music.c:655: if(mus_slide4 && !(mus_step & 3U)) {
	ld	hl, #_mus_slide4
	ld	a, (hl)
	or	a, a
	jp	Z, 00113$
	ld	hl, #_mus_step
	ld	a, (hl)
	and	a, #0x03
	jp	NZ,00113$
;music.c:656: if(mus_target4 > mus_freq4) {
	ld	hl, #_mus_freq4
	ld	a, (hl)
	ld	hl, #_mus_target4
	sub	a, (hl)
	jr	NC,00108$
;music.c:657: mus_freq4 += mus_slide4;
	ld	hl, #_mus_freq4
	ld	a, (hl)
	ld	hl, #_mus_slide4
	add	a, (hl)
	ld	hl, #_mus_freq4
	ld	(hl), a
;music.c:658: if(mus_freq4 > mus_target4) {
	ld	hl, #_mus_target4
	ld	a, (hl)
	ld	hl, #_mus_freq4
	sub	a, (hl)
	jr	NC,00109$
;music.c:659: mus_freq4 = mus_target4;
	push	hl
	ld	hl, #_mus_target4
	ld	a, (hl)
	ld	hl, #_mus_freq4
	ld	(hl), a
	pop	hl
	jr	00109$
00108$:
;music.c:662: else if(mus_target4 < mus_freq4) {
	ld	hl, #_mus_target4
	ld	a, (hl)
	ld	hl, #_mus_freq4
	sub	a, (hl)
	jr	NC,00109$
;music.c:663: mus_freq4 -= mus_slide4;
	ld	a, (hl)
	ld	hl, #_mus_slide4
	sub	a, (hl)
	ld	hl, #_mus_freq4
	ld	(hl), a
;music.c:664: if(mus_freq4 < mus_target4) {
	ld	a, (hl)
	ld	hl, #_mus_target4
	sub	a, (hl)
	jr	NC,00109$
;music.c:665: mus_freq4 = mus_target4;
	push	hl
	ld	a, (hl)
	ld	hl, #_mus_freq4
	ld	(hl), a
	pop	hl
00109$:
;music.c:668: if(mus_enabled4) NR43_REG = mus_freq4 | mus_noise_step;
	ld	hl, #_mus_enabled4
	ld	a, (hl)
	or	a, a
	jr	Z,00113$
	ld	hl, #_mus_freq4
	ld	a, (hl)
	ld	hl, #_mus_noise_step
	or	a, (hl)
	ld	hl, #0xff22
	ld	(hl), a
00113$:
;music.c:671: if(mus_wait4) {
	ld	hl, #_mus_wait4
	ld	a, (hl)
	or	a, a
	jr	Z,00205$
;music.c:672: mus_wait4--;
	dec	(hl)
;music.c:673: if(mus_wait4) return;
	ld	a, (hl)
	or	a, a
;music.c:676: while(1U) {
	jp	NZ,00185$
00205$:
00183$:
;music.c:677: note = *mus_data4++;
	ld	hl, #_mus_data4 + 1
	dec	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, (bc)
	ldhl	sp,#2
	ld	(hl), a
	ld	hl, #_mus_data4
	inc	(hl)
	jr	NZ,00329$
	inc	hl
	inc	(hl)
00329$:
;music.c:678: if(note >= MUS_FIRST_NOTE) {
	ldhl	sp,#2
	ld	a, (hl)
	sub	a, #0x15
	jp	C, 00140$
;music.c:679: if(note & MUS_HAS_LENGTH) {
	bit	7, (hl)
	jr	Z,00120$
;music.c:680: note ^= MUS_HAS_LENGTH;
	ldhl	sp,#2
	ld	c, (hl)
	ld	b, #0x00
	ld	a, c
	xor	a, #0x80
	ld	c, a
	ld	(hl), c
;music.c:681: mus_wait4 = *mus_data4++;
	ld	hl, #_mus_data4 + 1
	dec	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, (bc)
	ld	hl, #_mus_wait4
	ld	(hl), a
	ld	hl, #_mus_data4
	inc	(hl)
	jr	NZ,00121$
	inc	hl
	inc	(hl)
	jr	00121$
00120$:
;music.c:683: mus_wait4 = mus_length4;
	push	hl
	ld	hl, #_mus_length4
	ld	a, (hl)
	ld	hl, #_mus_wait4
	ld	(hl), a
	pop	hl
00121$:
;music.c:685: if(note == T_WAIT) {
	ldhl	sp,#2
	ld	a, (hl)
	sub	a, #0x22
	jp	Z,00185$
	jr	00133$
;music.c:686: return;
	jp	00185$
00133$:
;music.c:687: } else if(note == T_REST) {
	ldhl	sp,#2
	ld	a, (hl)
	sub	a, #0x21
	jr	NZ,00130$
;music.c:688: mus_freq4 = 0U;
	ld	hl, #_mus_freq4
	ld	(hl), #0x00
;music.c:689: if(mus_enabled4) NR42_REG = 0U;
	ld	hl, #_mus_enabled4
	ld	a, (hl)
	or	a, a
	jp	Z, 00134$
	ld	hl, #0xff21
	ld	(hl), #0x00
	jp	00134$
00130$:
;music.c:691: tmp_freq = noise_freq[((mus_octave4-MUS_NOISE_FIRST_OCTAVE) << 4) + note - MUS_FIRST_NOTE];
	ld	hl, #_mus_octave4
	ld	c, (hl)
	ld	b, #0x00
	dec	bc
	sla	c
	rl	b
	sla	c
	rl	b
	sla	c
	rl	b
	sla	c
	rl	b
	ldhl	sp,#2
	ld	e, (hl)
	ld	d, #0x00
	inc	sp
	inc	sp
	push	de
	pop	hl
	push	hl
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	a, c
	add	a, #0xeb
	ld	c, a
	ld	a, b
	adc	a, #0xff
	ld	b, a
	ld	hl, #_noise_freq
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	a, (bc)
	ld	c, a
;music.c:692: if(mus_porta4) {
	ld	hl, #_mus_porta4
	ld	a, (hl)
	or	a, a
	jr	Z,00125$
;music.c:693: mus_target4 = tmp_freq;
	ld	hl, #_mus_target4
	ld	(hl), c
	jr	00126$
00125$:
;music.c:695: mus_freq4 = tmp_freq;
	ld	hl, #_mus_freq4
	ld	(hl), c
00126$:
;music.c:697: if(mus_enabled4) NR42_REG = mus_volume4 | mus_env4;
	ld	hl, #_mus_enabled4
	ld	a, (hl)
	or	a, a
	jr	Z,00134$
	ld	hl, #_mus_volume4
	ld	a, (hl)
	ld	hl, #_mus_env4
	or	a, (hl)
	ld	hl, #0xff21
	ld	(hl), a
00134$:
;music.c:699: if(mus_enabled4) {
	ld	hl, #_mus_enabled4
	ld	a, (hl)
	or	a, a
	jp	Z,00185$
;music.c:700: if(mus_enabled4 == 2U) {
	ld	a, (hl)
	sub	a, #0x02
	jr	NZ,00136$
;music.c:701: mus_enabled4--;
	ld	hl, #_mus_enabled4
	dec	(hl)
;music.c:702: NR42_REG = mus_volume4 | mus_env4;
	ld	hl, #_mus_volume4
	ld	a, (hl)
	ld	hl, #_mus_env4
	or	a, (hl)
	ld	hl, #0xff21
	ld	(hl), a
00136$:
;music.c:704: NR43_REG = mus_freq4 | mus_noise_step;
	ld	hl, #_mus_freq4
	ld	a, (hl)
	ld	hl, #_mus_noise_step
	or	a, (hl)
	ld	hl, #0xff22
	ld	(hl), a
;music.c:705: NR44_REG = 0x80U;
	ld	l, #0x23
	ld	(hl), #0x80
;music.c:707: return;
	jp	00185$
00140$:
;music.c:709: switch(note) {
	ld	a, #0x14
	ldhl	sp,#2
	sub	a, (hl)
	jp	C, 00183$
	ld	c, (hl)
	ld	b, #0x00
	ld	hl, #00340$
	add	hl, bc
	add	hl, bc
	add	hl, bc
	jp	(hl)
00340$:
	jp	00141$
	jp	00142$
	jp	00143$
	jp	00144$
	jp	00145$
	jp	00148$
	jp	00183$
	jp	00152$
	jp	00155$
	jp	00156$
	jp	00183$
	jp	00183$
	jp	00162$
	jp	00163$
	jp	00169$
	jp	00183$
	jp	00171$
	jp	00172$
	jp	00183$
	jp	00174$
	jp	00175$
;music.c:710: case T_LENGTH:
00141$:
;music.c:711: mus_length4 = *mus_data4++;
	ld	hl, #_mus_data4 + 1
	dec	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, (bc)
	ld	hl, #_mus_length4
	ld	(hl), a
	ld	hl, #_mus_data4
	inc	(hl)
	jp	NZ,00183$
	inc	hl
	inc	(hl)
;music.c:712: break;
	jp	00183$
;music.c:713: case T_OCTAVE:
00142$:
;music.c:714: mus_octave4 = *mus_data4++;
	ld	hl, #_mus_data4 + 1
	dec	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, (bc)
	ld	hl, #_mus_octave4
	ld	(hl), a
	ld	hl, #_mus_data4
	inc	(hl)
	jp	NZ,00183$
	inc	hl
	inc	(hl)
;music.c:715: break;
	jp	00183$
;music.c:716: case T_OCT_UP:
00143$:
;music.c:717: mus_octave4++;
	ld	hl, #_mus_octave4
	inc	(hl)
;music.c:718: break;
	jp	00183$
;music.c:719: case T_OCT_DOWN:
00144$:
;music.c:720: mus_octave4--;
	ld	hl, #_mus_octave4
	dec	(hl)
;music.c:721: break;
	jp	00183$
;music.c:722: case T_VOL:
00145$:
;music.c:723: mus_volume4 = *mus_data4++;
	ld	hl, #_mus_data4 + 1
	dec	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, (bc)
	ld	hl, #_mus_volume4
	ld	(hl), a
	ld	hl, #_mus_data4
	inc	(hl)
	jr	NZ,00343$
	inc	hl
	inc	(hl)
00343$:
;music.c:724: if(mus_enabled4) NR42_REG = mus_volume4 | mus_env4;
	ld	hl, #_mus_enabled4
	ld	a, (hl)
	or	a, a
	jp	Z, 00183$
	ld	hl, #_mus_volume4
	ld	a, (hl)
	ld	hl, #_mus_env4
	or	a, (hl)
	ld	hl, #0xff21
	ld	(hl), a
;music.c:725: break;
	jp	00183$
;music.c:726: case T_ENV:
00148$:
;music.c:727: mus_env4 = *mus_data4++;
	ld	hl, #_mus_data4 + 1
	dec	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, (bc)
	ld	hl, #_mus_env4
	ld	(hl), a
	ld	hl, #_mus_data4
	inc	(hl)
	jr	NZ,00344$
	inc	hl
	inc	(hl)
00344$:
;music.c:728: if(mus_enabled4) NR42_REG = mus_volume4 | mus_env4;
	ld	hl, #_mus_enabled4
	ld	a, (hl)
	or	a, a
	jp	Z, 00183$
	ld	hl, #_mus_volume4
	ld	a, (hl)
	ld	hl, #_mus_env4
	or	a, (hl)
	ld	hl, #0xff21
	ld	(hl), a
;music.c:729: break;
	jp	00183$
;music.c:732: case T_PAN:
00152$:
;music.c:733: mus_pan4 = *mus_data4++;
	ld	hl, #_mus_data4 + 1
	dec	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, (bc)
	ld	hl, #_mus_pan4
	ld	(hl), a
	ld	hl, #_mus_data4
	inc	(hl)
	jr	NZ,00345$
	inc	hl
	inc	(hl)
00345$:
;music.c:734: if(mus_enabled4) NR51_REG = (NR51_REG & 0x77U) | (mus_pan4 << 3);
	ld	hl, #_mus_enabled4
	ld	a, (hl)
	or	a, a
	jp	Z, 00183$
	ld	de, #0xff25
	ld	a,(de)
	ld	c, a
	ld	b, #0x00
	ld	a, c
	and	a, #0x77
	ld	c, a
	ld	b, #0x00
	ld	hl, #_mus_pan4
	ld	a, (hl)
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
	ld	hl, #0xff25
	ld	(hl), c
;music.c:735: break;
	jp	00183$
;music.c:736: case T_PORTAMENTO:
00155$:
;music.c:737: mus_slide4 = mus_porta4 = *mus_data4++;
	ld	hl, #_mus_data4 + 1
	dec	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, (bc)
	ld	c, a
	dec	hl
	inc	(hl)
	jr	NZ,00346$
	inc	hl
	inc	(hl)
00346$:
	ld	hl, #_mus_porta4
	ld	(hl), c
	ld	hl, #_mus_slide4
	ld	(hl), c
;music.c:738: break;
	jp	00183$
;music.c:739: case T_SLIDE:
00156$:
;music.c:740: mus_slide4 = *mus_data4++;
	ld	hl, #_mus_data4 + 1
	dec	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, (bc)
	ld	hl, #_mus_slide4
	ld	(hl), a
	ld	hl, #_mus_data4
	inc	(hl)
	jr	NZ,00347$
	inc	hl
	inc	(hl)
00347$:
;music.c:741: mus_porta4 = 0U;
	ld	hl, #_mus_porta4
	ld	(hl), #0x00
;music.c:742: if(mus_slide4 >= 128U) {
	ld	hl, #_mus_slide4
	ld	a, (hl)
	sub	a, #0x80
	jr	C,00158$
;music.c:743: mus_target4 = 0xFFU;
	ld	hl, #_mus_target4
	ld	(hl), #0xff
;music.c:744: mus_slide4 = mus_slide4 - 128U;
	ld	hl, #_mus_slide4
	ld	a, (hl)
	add	a, #0x80
	ld	(hl), a
	jp	00183$
00158$:
;music.c:746: mus_target4 = 0U;
	ld	hl, #_mus_target4
	ld	(hl), #0x00
;music.c:747: mus_slide4 = 128U - mus_slide4;
	ld	a, #0x80
	ld	hl, #_mus_slide4
	sub	a, (hl)
	ld	(hl), a
;music.c:749: break;
	jp	00183$
;music.c:754: case T_REP_START:
00162$:
;music.c:755: mus_rep_depth4++;
	ld	hl, #_mus_rep_depth4
	inc	(hl)
;music.c:756: mus_rep4[mus_rep_depth4] = mus_data4;
	ld	c, (hl)
	ld	b, #0x00
	sla	c
	rl	b
	ld	hl, #_mus_rep4
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	hl, #_mus_data4
	ld	a, (hl+)
	ld	(bc), a
	inc	bc
	ld	a, (hl)
	ld	(bc), a
;music.c:757: break;
	jp	00183$
;music.c:758: case T_REP_END:
00163$:
;music.c:759: note = *mus_data4++;
	ld	hl, #_mus_data4 + 1
	dec	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, (bc)
	ldhl	sp,#5
	ld	(hl), a
	ld	hl, #_mus_data4
	inc	(hl)
	jr	NZ,00350$
	inc	hl
	inc	(hl)
00350$:
;music.c:760: if(!mus_repeats4[mus_rep_depth4]) {
	ld	a, #<(_mus_repeats4)
	ld	hl, #_mus_rep_depth4
	add	a, (hl)
	ld	c, a
	ld	a, #>(_mus_repeats4)
	adc	a, #0x00
	ld	b, a
	ld	a, (bc)
	or	a, a
	jr	NZ,00165$
;music.c:761: mus_repeats4[mus_rep_depth4] = note;
	ldhl	sp,#5
	ld	a, (hl)
	ld	(bc), a
;music.c:762: mus_data4 = mus_rep4[mus_rep_depth4];
	ld	hl, #_mus_rep_depth4
	ld	c, (hl)
	ld	b, #0x00
	sla	c
	rl	b
	ld	hl, #_mus_rep4
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	e, c
	ld	d, b
	ld	a,(de)
	ld	hl, #_mus_data4
	ld	(hl+), a
	inc	de
	ld	a, (de)
	ld	(hl), a
00165$:
;music.c:764: mus_repeats4[mus_rep_depth4]--;
	ld	a, #<(_mus_repeats4)
	ld	hl, #_mus_rep_depth4
	add	a, (hl)
	ld	c, a
	ld	a, #>(_mus_repeats4)
	adc	a, #0x00
	ld	b, a
	ld	a, (bc)
	dec	a
	ld	(bc), a
;music.c:765: if(mus_repeats4[mus_rep_depth4]) {
	ld	a, #<(_mus_repeats4)
	add	a, (hl)
	ld	c, a
	ld	a, #>(_mus_repeats4)
	adc	a, #0x00
	ld	b, a
	ld	a, (bc)
	or	a, a
	jr	Z,00167$
;music.c:766: mus_data4 = mus_rep4[mus_rep_depth4];
	ld	c, (hl)
	ld	b, #0x00
	sla	c
	rl	b
	ld	hl, #_mus_rep4
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	e, c
	ld	d, b
	ld	a,(de)
	ld	hl, #_mus_data4
	ld	(hl+), a
	inc	de
	ld	a, (de)
	ld	(hl), a
	jp	00183$
00167$:
;music.c:768: mus_rep_depth4--;
	ld	hl, #_mus_rep_depth4
	dec	(hl)
;music.c:770: break;
	jp	00183$
;music.c:771: case T_LOOP:
00169$:
;music.c:772: mus_loop4 = mus_data4;
	ld	hl, #_mus_data4
	ld	a, (hl+)
	ld	e, (hl)
	ld	hl, #_mus_loop4
	ld	(hl+), a
	ld	(hl), e
;music.c:773: break;
	jp	00183$
;music.c:776: case T_TEMPO:
00171$:
;music.c:777: TMA_REG = *mus_data4++;
	ld	hl, #_mus_data4 + 1
	dec	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, (bc)
	ld	c, a
	dec	hl
	inc	(hl)
	jr	NZ,00355$
	inc	hl
	inc	(hl)
00355$:
	ld	hl, #0xff06
	ld	(hl), c
;music.c:778: break;
	jp	00183$
;music.c:779: case T_NOISE_STEP:
00172$:
;music.c:780: mus_noise_step = (*mus_data4++) << 3;
	ld	hl, #_mus_data4 + 1
	dec	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, (bc)
	ld	c, a
	dec	hl
	inc	(hl)
	jr	NZ,00356$
	inc	hl
	inc	(hl)
00356$:
	ld	a, c
	add	a, a
	add	a, a
	add	a, a
	ld	hl, #_mus_noise_step
	ld	(hl), a
;music.c:781: break;
	jp	00183$
;music.c:784: case T_MACRO:
00174$:
;music.c:785: note = *mus_data4++;
	ld	hl, #_mus_data4 + 1
	dec	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, (bc)
	ldhl	sp,#0
	ld	(hl), a
	ld	hl, #_mus_data4
	inc	(hl)
	jr	NZ,00357$
	inc	hl
	inc	(hl)
00357$:
;music.c:786: mus_data4_bak = mus_data4;
	ld	hl, #_mus_data4
	ld	a, (hl+)
	ld	e, (hl)
	ld	hl, #_mus_data4_bak
	ld	(hl+), a
	ld	(hl), e
;music.c:787: mus_data4 = mus_song + ((UWORD*)mus_song)[5 + note];
	ld	hl, #_mus_song
	ld	a, (hl+)
	ld	e, (hl)
	ldhl	sp,#3
	ld	(hl+), a
	ld	(hl), e
	ldhl	sp,#0
	ld	a, (hl)
	ld	(hl+), a
	ld	(hl), #0x00
	pop	de
	push	de
	ld	hl, #0x0005
	add	hl, de
	inc	sp
	inc	sp
	push	hl
	pop	bc
	push	bc
	sla	c
	rl	b
	ldhl	sp,#3
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	e, c
	ld	d, b
	ld	a,(de)
	ld	c, a
	inc	de
	ld	a,(de)
	ld	b, a
	ld	hl, #_mus_song
	ld	a, (hl)
	add	a, c
	ld	hl, #_mus_data4
	ld	(hl), a
	ld	hl, #_mus_song + 1
	ld	a, (hl)
	adc	a, b
	ld	hl, #_mus_data4 + 1
	ld	(hl), a
;music.c:788: mus_macro4 = 1U;
	ld	hl, #_mus_macro4
	ld	(hl), #0x01
;music.c:789: break;
	jp	00183$
;music.c:790: case T_EOF:
00175$:
;music.c:791: if(mus_macro4) {
	ld	hl, #_mus_macro4
	ld	a, (hl)
	or	a, a
	jr	Z,00179$
;music.c:792: mus_data4 = mus_data4_bak;
	ld	hl, #_mus_data4_bak
	ld	a, (hl+)
	ld	e, (hl)
	ld	hl, #_mus_data4
	ld	(hl+), a
	ld	(hl), e
;music.c:793: mus_macro4 = 0U;
	ld	hl, #_mus_macro4
	ld	(hl), #0x00
	jp	00183$
00179$:
;music.c:795: mus_data4 = mus_loop4;
	ld	hl, #_mus_loop4
	ld	a, (hl+)
	ld	e, (hl)
	ld	hl, #_mus_data4
	ld	(hl+), a
	ld	(hl), e
;music.c:796: mus_done4 = 1U;
	ld	hl, #_mus_done4
	ld	(hl), #0x01
;music.c:797: if(*mus_data4 == T_EOF) {
	ld	hl, #_mus_data4 + 1
	dec	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, (bc)
	sub	a, #0x14
	jp	NZ,00183$
;music.c:798: mus_wait4 = 255U;
	ld	hl, #_mus_wait4
	ld	(hl), #0xff
;music.c:799: return;
;music.c:803: }
00185$:
;music.c:805: }
	add	sp, #6
	ret
	.area _CODE
