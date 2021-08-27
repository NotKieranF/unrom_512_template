;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;				;
;	     PRG 00		;
;				;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.BASE	$C000			;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

.INCSRC	prg\universal_tables\universal_tables.asm

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

.INCSRC	prg\universal_subroutines\universal_subroutines.asm

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

.INCSRC	prg\nmi\nmi_stub.asm
.INCSRC	prg\reset\reset_stub.asm
.INCSRC	prg\irq\irq_stub.asm

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;	VECTORS			;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.ORG	$FFFA			;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.DW	NMI			;
.DW	RESET			;
.DW	IRQ			;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;