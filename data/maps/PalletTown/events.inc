PalletTown_EventObjects::
	object_event 1, EVENT_OBJ_GFX_FAT_MAN, 0, 11, 12, 3, 2, 2, 1, 0, 0, FatManScript, 0
	object_event 2, EVENT_OBJ_GFX_MAN_5, 0, 15, 13, 3, 2, 2, 1, 0, 0, YippyScript, 0

PalletTown_MapWarps::
	warp_def 6, 10, 0, 0, MAP_PALLET_TOWN_HOUSE1

PalletTown_MapBGEvents::
	bg_event 4, 10, 0, 0, 0, PalletTownSign

PalletTown_MapEvents::
	map_events PalletTown_EventObjects, PalletTown_MapWarps, 0x0, PalletTown_MapBGEvents
