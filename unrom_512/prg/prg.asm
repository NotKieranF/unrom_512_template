;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;				;
;	     PRG ROM		;
;				;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
				;
.INCSRC	prg\prg_00.asm		; 16 KiB switchable bank, may be mapped to $8000-$BFFF. May contain anything, in this case contains the latter part of the reset handler
.INCSRC	prg\prg_01.asm		;
.INCSRC	prg\prg_02.asm		;
.INCSRC	prg\prg_03.asm		;
.INCSRC	prg\prg_04.asm		;
.INCSRC	prg\prg_05.asm		;
.INCSRC	prg\prg_06.asm		;
.INCSRC	prg\prg_07.asm		;
.INCSRC	prg\prg_08.asm		;
.INCSRC	prg\prg_09.asm		;
.INCSRC	prg\prg_10.asm		;
.INCSRC	prg\prg_11.asm		;
.INCSRC	prg\prg_12.asm		;
.INCSRC	prg\prg_13.asm		;
.INCSRC	prg\prg_14.asm		;
.INCSRC	prg\prg_fixed.asm	; 16 KiB fixed bank, always mapped to $C000-$FFFF. Should contain any universally needed subroutines/tables/data, as well as at least part of each of the interrupt handlers
				;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;