;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;					;
;	       RESET CONT		;
;					;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
					;
reset_cont:				;
					;
-	BIT PPUSTATUS			; First wait for vblank
	BPL -				;
					;
	LDX #$00			;
-	LDA #$00			; Clear memory
	STA $0000, X			;
	STA $0100, X			;
	STA $0300, X			;
	STA $0400, X			;
	STA $0500, X			;
	STA $0600, X			;
	STA $0700, X			;
	LDA #$FF			;
	STA $0200, X			; Put sprites off screen (change page if using a different location for shadow OAM)
	INX				;
	BNE -				;
					;
-	BIT PPUSTATUS			; Second wait for vblank, PPU is warmed up and ready after this, and reset routine is done
	BPL -				;
					;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;