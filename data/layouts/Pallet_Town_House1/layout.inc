Pallet_Town_House1_MapBorder::
	.incbin "data/layouts/Pallet_Town_House1/border.bin"

Pallet_Town_House1_MapBlockdata::
	.incbin "data/layouts/Pallet_Town_House1/map.bin"

	.align 2
Pallet_Town_House1_Layout::
	.4byte 10
	.4byte 9
	.4byte Pallet_Town_House1_MapBorder
	.4byte Pallet_Town_House1_MapBlockdata
	.4byte gTileset_Building
	.4byte gTileset_BrendansMaysHouse

