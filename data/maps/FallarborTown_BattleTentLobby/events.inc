FallarborTown_BattleTentLobby_EventObjects: @ 852E370
	object_event 1, EVENT_OBJ_GFX_BLACK_BELT, 0, 6, 5, 3, 8, 1, 1, 0, 0, FallarborTown_BattleTentLobby_EventScript_200001, 0
	object_event 2, EVENT_OBJ_GFX_HIKER, 0, 1, 5, 3, 5, 1, 1, 0, 0, FallarborTown_BattleTentLobby_EventScript_20020D, 0
	object_event 3, EVENT_OBJ_GFX_LITTLE_BOY_2, 0, 12, 6, 3, 3, 1, 1, 0, 0, FallarborTown_BattleTentLobby_EventScript_200216, 0
	object_event 4, EVENT_OBJ_GFX_LASS, 0, 10, 9, 3, 8, 1, 1, 0, 0, FallarborTown_BattleTentLobby_EventScript_20021F, 0
	object_event 5, EVENT_OBJ_GFX_SCOTT, 0, 0, 7, 3, 10, 1, 1, 0, 0, FallarborTown_BattleTentLobby_EventScript_200228, 767

FallarborTown_BattleTentLobby_MapWarps: @ 852E3E8
	warp_def 6, 9, 0, 1, MAP_FALLARBOR_TOWN
	warp_def 7, 9, 0, 1, MAP_FALLARBOR_TOWN

FallarborTown_BattleTentLobby_MapBGEvents: @ 852E3F8
	bg_event 4, 5, 0, 0, 0, FallarborTown_BattleTentLobby_EventScript_20024F

FallarborTown_BattleTentLobby_MapEvents:: @ 852E404
	map_events FallarborTown_BattleTentLobby_EventObjects, FallarborTown_BattleTentLobby_MapWarps, 0x0, FallarborTown_BattleTentLobby_MapBGEvents

