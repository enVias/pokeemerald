Route106_EventObjects::
	object_event 1, EVENT_OBJ_GFX_SWIMMER_M, 0, 18, 5, 1, 27, 4, 0, 1, 3, Route106_EventScript_1EE493, 0
	object_event 2, EVENT_OBJ_GFX_SWIMMER_F, 0, 29, 10, 1, 1, 0, 0, 1, 3, Route106_EventScript_1EE4AA, 0
	object_event 3, EVENT_OBJ_GFX_FISHERMAN, 0, 51, 14, 3, 10, 0, 0, 1, 4, Route106_EventScript_1EE4C1, 0
	object_event 4, EVENT_OBJ_GFX_FISHERMAN, 0, 65, 14, 3, 1, 0, 0, 1, 3, Route106_EventScript_1EE523, 0
	object_event 5, EVENT_OBJ_GFX_ITEM_BALL, 0, 29, 14, 3, 1, 0, 0, 0, 0, Route106_EventScript_290D40, 1004

Route106_MapWarps::
	warp_def 48, 16, 0, 0, MAP_GRANITE_CAVE_1F

Route106_MapBGEvents::
	bg_event 41, 11, 3, 7, 0, ITEM_POKE_BALL
	bg_event 53, 12, 0, 7, 0, ITEM_STARDUST
	bg_event 68, 15, 3, 7, 0, ITEM_HEART_SCALE
	bg_event 59, 13, 3, 0, 0, Route106_EventScript_1EE48A

Route106_MapEvents::
	map_events Route106_EventObjects, Route106_MapWarps, 0x0, Route106_MapBGEvents
