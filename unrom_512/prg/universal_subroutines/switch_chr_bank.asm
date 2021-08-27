; Switches CHR bank based on A

switch_chr_bank:
	LSR				; Shift chr bits into position
	ROR
	ROR
	ROR
	STA temp_1			; Save those bits for a bit
	
	LDA soft_mapper_register
	AND #%10011111			; Clear CHR bits, keep everything else
	ORA temp_1			; Combine CHR bits with everything else
	
	TAX
	STA soft_mapper_register	; Update register backup
	STA MAPPER_REGISTER, X		; Actually write to the register
	
	RTS