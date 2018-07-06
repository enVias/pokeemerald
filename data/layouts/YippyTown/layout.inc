YippyTown_MapBorder::
	.incbin "data/layouts/YippyTown/border.bin"

YippyTown_MapBlockdata::
	.incbin "data/layouts/YippyTown/map.bin"

	.align 2
YippyTown_Layout::
	.4byte 0x1e
	.4byte 0x1e
	.4byte YippyTown_MapBorder
	.4byte YippyTown_MapBlockdata
	.4byte gTileset_General
	.4byte gTileset_Mauville

