; Switches PRG bank based on A

switch_prg_bank:
	STA temp_1			; Save the prg bits for a bit
	
	LDA soft_mapper_register
	AND #%11100000			; Clear PRG bits, keep everything else
	ORA temp_1			; Combine PRG bits with everything else
	
	TAX
	STA soft_mapper_register	; Update register backup
	STA MAPPER_REGISTER, X		; Actually write to the register
	
	RTS