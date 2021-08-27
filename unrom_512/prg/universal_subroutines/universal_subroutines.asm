;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;					;
;	  UNIVERSAL SUBROUTINES		;
;					;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

.INCSRC	prg\universal_subroutines\switch_chr_bank.asm	; JSR here with the CHR bank you want to switch to in A, uses X
.INCSRC	prg\universal_subroutines\switch_prg_bank.asm	; JSR here with the PRG bank you want to switch to in A, uses X		/!\ only call this subroutine from the fixed bank
.INCSRC	prg\universal_subroutines\switch_mirroring.asm	; JSR here with the nametable you want to switch to in A, uses X