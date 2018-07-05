NewMap1_MapBorder::
	.incbin "data/layouts/NewMap1/border.bin"

NewMap1_MapBlockdata::
	.incbin "data/layouts/NewMap1/map.bin"

	.align 2
NewMap1_Layout::
	.4byte 0x1e
	.4byte 0x1e
	.4byte NewMap1_MapBorder
	.4byte NewMap1_MapBlockdata
	.4byte gTileset_General
	.4byte gTileset_Petalburg

