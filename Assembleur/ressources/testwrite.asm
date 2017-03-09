.options tty
.=0
.include beta.uasm
.include intio.uasm


BR(debut)


debut:
	CMOVE(pile,sp)
	CMOVE(9,R0)
	WRINT()
	HALT()

pile: