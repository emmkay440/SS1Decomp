	.section .rodata

@ Everything after the code region (constant tables, graphics, music, text).
@ Pulled from the user's own baserom.gba at build time; nothing is stored in git.
@ Split this into named pieces as it gets identified.
	.global gRomData
gRomData:
	.incbin "baserom.gba", 0x5289C
