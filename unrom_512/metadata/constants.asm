;--------------
; PPU constants
;--------------

PPUCTRL		= $2000
PPUMASK		= $2001
PPUSTATUS	= $2002
OAMADDR		= $2003
OAMDATA		= $2004
PPUSCROLL	= $2005
PPUADDR		= $2006
PPUDATA		= $2007
OAMDMA		= $4014

;----------------
; Other constants
;----------------

JOYPAD_1	= $4016
JOYPAD_2	= $4017

;-----------------
; Mapper constants
;-----------------

MAPPER_REGISTER	= identity	; Can just be $C000 if cart is self flashable