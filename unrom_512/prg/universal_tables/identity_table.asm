; Identity table

identity:
i = 0
REPT	256			; May be 128 if you don't use 1 screen switchable nametable mirroring, 64 if in addition you also use 16 KiB of CHR, or even 32 if you only use 8 KiB
	.DB	i
	i = i + 1
ENDR