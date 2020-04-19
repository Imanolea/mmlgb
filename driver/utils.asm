; Additional routines
_wait_vbl_done:
._wait_vbl_done_0:
    ld      a,  [rLY]
    cp      145
    jr		nz,	._wait_vbl_done_0  ; Si la interrupción de VBlank no ha ocurrido saltamos
    ret

_enable_interrupts:
	ei
	ret

_disable_interrupts:
	di
	ret

_set_interrupts:
    ld      [rIE],  a
    xor     a
    ld      [rSTAT],    a   
    ; ld      a,  $E7
    ; ld      [rTIMA],    a
    ; ld      a,  $E5
    ; ld      [rTMA],    a
    ld      a,  %000000100
    ld      [rTAC],    a
    ret

_display_off:
    ld	    a,	[rLCDC]
    rlca
    ret	    nc
    di								; Nos aseguramos de que las interrupciones están deshabilitadas
._display_off_0:
    ld	    a,	[rLY]
    cp	    145
    jr	    nz, ._display_off_0
    ; Apagamos el LCD
    ld		a,	[rLCDC]
    res		7,	a
    ld	    [rLCDC],	a			; Apagamos el LCD
    ret

memcpy::
	JR	.memcpy_1
.memcpy_0:
	LD	A,[BC]
	LD	[HLI],A
	INC	BC
	DEC	DE
.memcpy_1:
	LD	A,D
	OR	E
	JR	NZ,.memcpy_0
	RET

_memcpy::
	PUSH	BC

	LD	HL,SP+9 ; Skip return address and registers
	LD	D,[HL]		; DE = n
	DEC	HL
	LD	E,[HL]
	DEC	HL
	LD	B,[HL]		; BC = s2
	DEC	HL
	LD	C,[HL]
	DEC	HL
	LD	A,[HLD]		; HL = s1
	LD	L,[HL]
	LD	H,A
	PUSH	HL
	CALL	memcpy
	POP	DE		; Return s1

	POP	BC
	RET