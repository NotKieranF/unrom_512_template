;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;					;
;	    	 HEADER 		;
;					;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
					;
h_PRG_ROM_SIZE		= 16		; PRG-ROM size in 16k banks				; (for UNROM-512: May be 16/32 for 256/512 KiB, though undersize ROMs such as 2/4/8 should still function)
h_CHR_ROM_SIZE		= 0		; CHR-ROM size in 8k banks
h_MAPPER		= 30		; Mapper number
h_MIRRORING		= 0		; Mirroring (Vertical = 1)
h_FOUR_SCREEN		= 0		; Four screen vram
h_BATTERY		= 1		; Non-volatile memory present?				; (for UNROM-512: 1 = self flashing, no bus conflicts; 0 = not self flashing, bus conflicts)
h_SUBMAPPER		= 0		; Submapper
h_PRG_RAM_SIZE		= 0		; PRG-RAM size (64 * 2^n)
h_PRG_NVRAM_SIZE	= 0		; Non-volatile PRG-RAM size (64 * 2^n)
h_CHR_RAM_SIZE		= 0		; CHR-RAM size (64 * 2^n)				; (for UNROM-512: May be 7/8/9 for 8/16/32 KiB respectively)
h_CHR_NVRAM_SIZE	= 0		; Non-volatile CHR-RAM size (64 * 2^n)
h_CONSOLE_TYPE		= 0		; 0 = NTSC, 1 = PAL, 2 = Multi-region, 3 = Dendy
					;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

.DB	"NES",$1A
.DB	h_PRG_ROM_SIZE & $FF
.DB	h_CHR_ROM_SIZE & $FF
.DB	((h_MAPPER & $0F) << 4) | (h_FOUR_SCREEN << 3) | (h_BATTERY << 1) | (h_MIRRORING)
.DB	(h_MAPPER & $F0) | %1000
.DB	(h_SUBMAPPER << 4) | ((h_MAPPER & $F00) >> 8)
.DB	((h_PRG_ROM_SIZE & $F00) >> 4) | ((h_CHR_ROM_SIZE & $F00) >> 8)
.DB	(h_PRG_NVRAM_SIZE << 4) | (h_PRG_RAM_SIZE)
.DB	(h_CHR_NVRAM_SIZE << 4) | (h_CHR_RAM_SIZE)
.DB	h_CONSOLE_TYPE
.DB	$00
.DB	$00
.DB	$00

