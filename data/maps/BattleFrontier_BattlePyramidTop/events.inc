BattleFrontier_BattlePyramidTop_EventObjects: @ 853C7C0
	object_event 1, EVENT_OBJ_GFX_HIKER, 0, 17, 11, 6, 8, 1, 1, 0, 3, BattleFrontier_BattlePyramidTop_EventScript_2551D0, 0
	object_event 2, EVENT_OBJ_GFX_BRANDON, 0, 17, 7, 0, 7, 1, 1, 0, 0, 0x0, 0

BattleFrontier_BattlePyramidTop_MapCoordEvents: @ 853C7F0
	coord_event 17, 9, 4, 0, VAR_TEMP_2, 0, 0, BattleFrontier_BattlePyramidTop_EventScript_255256

BattleFrontier_BattlePyramidTop_MapEvents:: @ 853C800
	map_events BattleFrontier_BattlePyramidTop_EventObjects, 0x0, BattleFrontier_BattlePyramidTop_MapCoordEvents, 0x0

