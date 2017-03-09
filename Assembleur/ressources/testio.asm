.options tty
.include beta.uasm
.include intio.uasm

BR(debut)

x:	LONG(0xCAFE)

debut:
	CMOVE(pile, sp)
	RDINT()
	ST(R0, x)
	WRINT()
	HALT()

pile: