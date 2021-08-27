;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;					;
;	       RESET STUB		;
;					;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
					;
RESET:					;
	SEI				; Ignore IRQs
	CLD				; Disable decimal mode
	LDA #$40			;
	STA $4017			; Disable APU IRQ
	LDX #$FF			;
	TXS				; Set up stack pointer
	INX				; X = 0
	STX PPUCTRL			; Disable NMIs
	STX PPUMASK			; Disable rendering
	STX $4010			; Disable DMC IRQs
					;
	LDA #$00			; Switch to bank 0 for the rest of the reset routine (saves space in fixed bank)
	TAX				;
	STA MAPPER_REGISTER, X		;
					;
	JMP reset_cont			; Continue with reset routine
					;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;