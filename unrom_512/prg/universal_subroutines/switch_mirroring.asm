; Switches mirroring based on A

switch_mirroring:
	LSR				; Shift mirroring bit into position
	ROR
	STA temp_1
	
	LDA soft_mapper_register
	AND #%01111111			; Clear mirroring bit, keep everything else
	ORA temp_1			; Combine mirroring bit with everything else
	
	TAX
	STA soft_mapper_register	; Update register backup
	STA MAPPER_REGISTER, X		; Actually write to the register
	
	RTS