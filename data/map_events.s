#include "constants/event_objects.h"
#include "constants/flags.h"
#include "constants/items.h"
#include "constants/maps.h"
#include "constants/vars.h"
	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata

	.include "data/maps/PetalburgCity/events.inc"
	.include "data/maps/SlateportCity/events.inc"
	.include "data/maps/MauvilleCity/events.inc"
	.include "data/maps/RustboroCity/events.inc"
	.include "data/maps/FortreeCity/events.inc"
	.include "data/maps/LilycoveCity/events.inc"
	.include "data/maps/MossdeepCity/events.inc"
	.include "data/maps/SootopolisCity/events.inc"
	.include "data/maps/EverGrandeCity/events.inc"
	.include "data/maps/LittlerootTown/events.inc"
	.include "data/maps/OldaleTown/events.inc"
	.include "data/maps/DewfordTown/events.inc"
	.include "data/maps/LavaridgeTown/events.inc"
	.include "data/maps/FallarborTown/events.inc"
	.include "data/maps/VerdanturfTown/events.inc"
	.include "data/maps/PacifidlogTown/events.inc"
	.include "data/maps/Route101/events.inc"
	.include "data/maps/Route102/events.inc"
	.include "data/maps/Route103/events.inc"
	.include "data/maps/Route104/events.inc"
	.include "data/maps/Route105/events.inc"
	.include "data/maps/Route106/events.inc"
	.include "data/maps/Route107/events.inc"
	.include "data/maps/Route108/events.inc"
	.include "data/maps/Route109/events.inc"
	.include "data/maps/Route110/events.inc"
	.include "data/maps/Route111/events.inc"
	.include "data/maps/Route112/events.inc"
	.include "data/maps/Route113/events.inc"
	.include "data/maps/Route114/events.inc"
	.include "data/maps/Route115/events.inc"
	.include "data/maps/Route116/events.inc"
	.include "data/maps/Route117/events.inc"
	.include "data/maps/Route118/events.inc"
	.include "data/maps/Route119/events.inc"
	.include "data/maps/Route120/events.inc"
	.include "data/maps/Route121/events.inc"
	.include "data/maps/Route122/events.inc"
	.include "data/maps/Route123/events.inc"
	.include "data/maps/Route124/events.inc"
	.include "data/maps/Route125/events.inc"
	.include "data/maps/Route126/events.inc"
	.include "data/maps/Route127/events.inc"
	.include "data/maps/Route128/events.inc"
	.include "data/maps/Route129/events.inc"
	.include "data/maps/Route130/events.inc"
	.include "data/maps/Route131/events.inc"
	.include "data/maps/Route132/events.inc"
	.include "data/maps/Route133/events.inc"
	.include "data/maps/Route134/events.inc"
	.include "data/maps/Underwater1/events.inc"
	.include "data/maps/Underwater2/events.inc"
	.include "data/maps/Underwater3/events.inc"
	.include "data/maps/Underwater4/events.inc"
	.include "data/maps/Underwater5/events.inc"
	.include "data/maps/Underwater6/events.inc"
	.include "data/maps/Underwater7/events.inc"
	.include "data/maps/LittlerootTown_BrendansHouse_1F/events.inc"
	.include "data/maps/LittlerootTown_BrendansHouse_2F/events.inc"
	.include "data/maps/LittlerootTown_MaysHouse_1F/events.inc"
	.include "data/maps/LittlerootTown_MaysHouse_2F/events.inc"
	.include "data/maps/LittlerootTown_ProfessorBirchsLab/events.inc"
	.include "data/maps/OldaleTown_House1/events.inc"
	.include "data/maps/OldaleTown_House2/events.inc"
	.include "data/maps/OldaleTown_PokemonCenter_1F/events.inc"
	.include "data/maps/OldaleTown_PokemonCenter_2F/events.inc"
	.include "data/maps/OldaleTown_Mart/events.inc"
	.include "data/maps/DewfordTown_House1/events.inc"
	.include "data/maps/DewfordTown_PokemonCenter_1F/events.inc"
	.include "data/maps/DewfordTown_PokemonCenter_2F/events.inc"
	.include "data/maps/DewfordTown_Gym/events.inc"
	.include "data/maps/DewfordTown_Hall/events.inc"
	.include "data/maps/DewfordTown_House2/events.inc"
	.include "data/maps/LavaridgeTown_HerbShop/events.inc"
	.include "data/maps/LavaridgeTown_Gym_1F/events.inc"
	.include "data/maps/LavaridgeTown_Gym_B1F/events.inc"
	.include "data/maps/LavaridgeTown_House/events.inc"
	.include "data/maps/LavaridgeTown_Mart/events.inc"
	.include "data/maps/LavaridgeTown_PokemonCenter_1F/events.inc"
	.include "data/maps/LavaridgeTown_PokemonCenter_2F/events.inc"
	.include "data/maps/FallarborTown_Mart/events.inc"
	.include "data/maps/FallarborTown_BattleTentLobby/events.inc"
	.include "data/maps/FallarborTown_BattleTentCorridor/events.inc"
	.include "data/maps/FallarborTown_BattleTentBattleRoom/events.inc"
	.include "data/maps/FallarborTown_PokemonCenter_1F/events.inc"
	.include "data/maps/FallarborTown_PokemonCenter_2F/events.inc"
	.include "data/maps/FallarborTown_House1/events.inc"
	.include "data/maps/FallarborTown_House2/events.inc"
	.include "data/maps/VerdanturfTown_BattleTentLobby/events.inc"
	.include "data/maps/VerdanturfTown_BattleTentCorridor/events.inc"
	.include "data/maps/VerdanturfTown_BattleTentBattleRoom/events.inc"
	.include "data/maps/VerdanturfTown_Mart/events.inc"
	.include "data/maps/VerdanturfTown_PokemonCenter_1F/events.inc"
	.include "data/maps/VerdanturfTown_PokemonCenter_2F/events.inc"
	.include "data/maps/VerdanturfTown_WandasHouse/events.inc"
	.include "data/maps/VerdanturfTown_FriendshipRatersHouse/events.inc"
	.include "data/maps/VerdanturfTown_House/events.inc"
	.include "data/maps/PacifidlogTown_PokemonCenter_1F/events.inc"
	.include "data/maps/PacifidlogTown_PokemonCenter_2F/events.inc"
	.include "data/maps/PacifidlogTown_House1/events.inc"
	.include "data/maps/PacifidlogTown_House2/events.inc"
	.include "data/maps/PacifidlogTown_House3/events.inc"
	.include "data/maps/PacifidlogTown_House4/events.inc"
	.include "data/maps/PacifidlogTown_House5/events.inc"
	.include "data/maps/PetalburgCity_WallysHouse/events.inc"
	.include "data/maps/PetalburgCity_Gym/events.inc"
	.include "data/maps/PetalburgCity_House1/events.inc"
	.include "data/maps/PetalburgCity_House2/events.inc"
	.include "data/maps/PetalburgCity_PokemonCenter_1F/events.inc"
	.include "data/maps/PetalburgCity_PokemonCenter_2F/events.inc"
	.include "data/maps/PetalburgCity_Mart/events.inc"
	.include "data/maps/SlateportCity_SternsShipyard_1F/events.inc"
	.include "data/maps/SlateportCity_SternsShipyard_2F/events.inc"
	.include "data/maps/SlateportCity_BattleTentLobby/events.inc"
	.include "data/maps/SlateportCity_BattleTentCorridor/events.inc"
	.include "data/maps/SlateportCity_BattleTentBattleRoom/events.inc"
	.include "data/maps/SlateportCity_House1/events.inc"
	.include "data/maps/SlateportCity_PokemonFanClub/events.inc"
	.include "data/maps/SlateportCity_OceanicMuseum_1F/events.inc"
	.include "data/maps/SlateportCity_OceanicMuseum_2F/events.inc"
	.include "data/maps/SlateportCity_Harbor/events.inc"
	.include "data/maps/SlateportCity_House2/events.inc"
	.include "data/maps/SlateportCity_PokemonCenter_1F/events.inc"
	.include "data/maps/SlateportCity_PokemonCenter_2F/events.inc"
	.include "data/maps/SlateportCity_Mart/events.inc"
	.include "data/maps/MauvilleCity_Gym/events.inc"
	.include "data/maps/MauvilleCity_BikeShop/events.inc"
	.include "data/maps/MauvilleCity_House1/events.inc"
	.include "data/maps/MauvilleCity_GameCorner/events.inc"
	.include "data/maps/MauvilleCity_House2/events.inc"
	.include "data/maps/MauvilleCity_PokemonCenter_1F/events.inc"
	.include "data/maps/MauvilleCity_PokemonCenter_2F/events.inc"
	.include "data/maps/MauvilleCity_Mart/events.inc"
	.include "data/maps/RustboroCity_DevonCorp_1F/events.inc"
	.include "data/maps/RustboroCity_DevonCorp_2F/events.inc"
	.include "data/maps/RustboroCity_DevonCorp_3F/events.inc"
	.include "data/maps/RustboroCity_Gym/events.inc"
	.include "data/maps/RustboroCity_PokemonSchool/events.inc"
	.include "data/maps/RustboroCity_PokemonCenter_1F/events.inc"
	.include "data/maps/RustboroCity_PokemonCenter_2F/events.inc"
	.include "data/maps/RustboroCity_Mart/events.inc"
	.include "data/maps/RustboroCity_Flat1_1F/events.inc"
	.include "data/maps/RustboroCity_Flat1_2F/events.inc"
	.include "data/maps/RustboroCity_House1/events.inc"
	.include "data/maps/RustboroCity_CuttersHouse/events.inc"
	.include "data/maps/RustboroCity_House2/events.inc"
	.include "data/maps/RustboroCity_Flat2_1F/events.inc"
	.include "data/maps/RustboroCity_Flat2_2F/events.inc"
	.include "data/maps/RustboroCity_Flat2_3F/events.inc"
	.include "data/maps/RustboroCity_House3/events.inc"
	.include "data/maps/FortreeCity_House1/events.inc"
	.include "data/maps/FortreeCity_Gym/events.inc"
	.include "data/maps/FortreeCity_PokemonCenter_1F/events.inc"
	.include "data/maps/FortreeCity_PokemonCenter_2F/events.inc"
	.include "data/maps/FortreeCity_Mart/events.inc"
	.include "data/maps/FortreeCity_House2/events.inc"
	.include "data/maps/FortreeCity_House3/events.inc"
	.include "data/maps/FortreeCity_House4/events.inc"
	.include "data/maps/FortreeCity_House5/events.inc"
	.include "data/maps/FortreeCity_DecorationShop/events.inc"
	.include "data/maps/LilycoveCity_CoveLilyMotel_1F/events.inc"
	.include "data/maps/LilycoveCity_CoveLilyMotel_2F/events.inc"
	.include "data/maps/LilycoveCity_LilycoveMuseum_1F/events.inc"
	.include "data/maps/LilycoveCity_LilycoveMuseum_2F/events.inc"
	.include "data/maps/LilycoveCity_ContestLobby/events.inc"
	.include "data/maps/LilycoveCity_ContestHall/events.inc"
	.include "data/maps/LilycoveCity_PokemonCenter_1F/events.inc"
	.include "data/maps/LilycoveCity_PokemonCenter_2F/events.inc"
	.include "data/maps/LilycoveCity_UnusedMart/events.inc"
	.include "data/maps/LilycoveCity_PokemonTrainerFanClub/events.inc"
	.include "data/maps/LilycoveCity_Harbor/events.inc"
	.include "data/maps/LilycoveCity_MoveDeletersHouse/events.inc"
	.include "data/maps/LilycoveCity_House1/events.inc"
	.include "data/maps/LilycoveCity_House2/events.inc"
	.include "data/maps/LilycoveCity_House3/events.inc"
	.include "data/maps/LilycoveCity_House4/events.inc"
	.include "data/maps/LilycoveCity_DepartmentStore_1F/events.inc"
	.include "data/maps/LilycoveCity_DepartmentStore_2F/events.inc"
	.include "data/maps/LilycoveCity_DepartmentStore_3F/events.inc"
	.include "data/maps/LilycoveCity_DepartmentStore_4F/events.inc"
	.include "data/maps/LilycoveCity_DepartmentStore_5F/events.inc"
	.include "data/maps/LilycoveCity_DepartmentStoreRooftop/events.inc"
	.include "data/maps/LilycoveCity_DepartmentStoreElevator/events.inc"
	.include "data/maps/MossdeepCity_Gym/events.inc"
	.include "data/maps/MossdeepCity_House1/events.inc"
	.include "data/maps/MossdeepCity_House2/events.inc"
	.include "data/maps/MossdeepCity_PokemonCenter_1F/events.inc"
	.include "data/maps/MossdeepCity_PokemonCenter_2F/events.inc"
	.include "data/maps/MossdeepCity_Mart/events.inc"
	.include "data/maps/MossdeepCity_House3/events.inc"
	.include "data/maps/MossdeepCity_StevensHouse/events.inc"
	.include "data/maps/MossdeepCity_House4/events.inc"
	.include "data/maps/MossdeepCity_SpaceCenter_1F/events.inc"
	.include "data/maps/MossdeepCity_SpaceCenter_2F/events.inc"
	.include "data/maps/MossdeepCity_GameCorner_1F/events.inc"
	.include "data/maps/MossdeepCity_GameCorner_B1F/events.inc"
	.include "data/maps/SootopolisCity_Gym_1F/events.inc"
	.include "data/maps/SootopolisCity_Gym_B1F/events.inc"
	.include "data/maps/SootopolisCity_PokemonCenter_1F/events.inc"
	.include "data/maps/SootopolisCity_PokemonCenter_2F/events.inc"
	.include "data/maps/SootopolisCity_Mart/events.inc"
	.include "data/maps/SootopolisCity_House1/events.inc"
	.include "data/maps/SootopolisCity_House2/events.inc"
	.include "data/maps/SootopolisCity_House3/events.inc"
	.include "data/maps/SootopolisCity_House4/events.inc"
	.include "data/maps/SootopolisCity_House5/events.inc"
	.include "data/maps/SootopolisCity_House6/events.inc"
	.include "data/maps/SootopolisCity_House7/events.inc"
	.include "data/maps/SootopolisCity_LotadAndSeedotHouse/events.inc"
	.include "data/maps/SootopolisCity_MysteryEventsHouse_1F/events.inc"
	.include "data/maps/SootopolisCity_MysteryEventsHouse_B1F/events.inc"
	.include "data/maps/EverGrandeCity_SidneysRoom/events.inc"
	.include "data/maps/EverGrandeCity_PhoebesRoom/events.inc"
	.include "data/maps/EverGrandeCity_GlaciasRoom/events.inc"
	.include "data/maps/EverGrandeCity_DrakesRoom/events.inc"
	.include "data/maps/EverGrandeCity_ChampionsRoom/events.inc"
	.include "data/maps/EverGrandeCity_Hall1/events.inc"
	.include "data/maps/EverGrandeCity_Hall2/events.inc"
	.include "data/maps/EverGrandeCity_Hall3/events.inc"
	.include "data/maps/EverGrandeCity_Hall4/events.inc"
	.include "data/maps/EverGrandeCity_Hall5/events.inc"
	.include "data/maps/EverGrandeCity_PokemonLeague_1F/events.inc"
	.include "data/maps/EverGrandeCity_HallOfFame/events.inc"
	.include "data/maps/EverGrandeCity_PokemonCenter_1F/events.inc"
	.include "data/maps/EverGrandeCity_PokemonCenter_2F/events.inc"
	.include "data/maps/EverGrandeCity_PokemonLeague_2F/events.inc"
	.include "data/maps/Route104_MrBrineysHouse/events.inc"
	.include "data/maps/Route104_PrettyPetalFlowerShop/events.inc"
	.include "data/maps/Route111_WinstrateFamilysHouse/events.inc"
	.include "data/maps/Route111_OldLadysRestStop/events.inc"
	.include "data/maps/Route112_CableCarStation/events.inc"
	.include "data/maps/MtChimney_CableCarStation/events.inc"
	.include "data/maps/Route114_FossilManiacsHouse/events.inc"
	.include "data/maps/Route114_FossilManiacsTunnel/events.inc"
	.include "data/maps/Route114_LanettesHouse/events.inc"
	.include "data/maps/Route116_TunnelersRestHouse/events.inc"
	.include "data/maps/Route117_PokemonDayCare/events.inc"
	.include "data/maps/Route121_SafariZoneEntrance/events.inc"
	.include "data/maps/MeteorFalls_1F_1R/events.inc"
	.include "data/maps/MeteorFalls_1F_2R/events.inc"
	.include "data/maps/MeteorFalls_B1F_1R/events.inc"
	.include "data/maps/MeteorFalls_B1F_2R/events.inc"
	.include "data/maps/RusturfTunnel/events.inc"
	.include "data/maps/Underwater_SootopolisCity/events.inc"
	.include "data/maps/DesertRuins/events.inc"
	.include "data/maps/GraniteCave_1F/events.inc"
	.include "data/maps/GraniteCave_B1F/events.inc"
	.include "data/maps/GraniteCave_B2F/events.inc"
	.include "data/maps/GraniteCave_StevensRoom/events.inc"
	.include "data/maps/PetalburgWoods/events.inc"
	.include "data/maps/MtChimney/events.inc"
	.include "data/maps/JaggedPass/events.inc"
	.include "data/maps/FieryPath/events.inc"
	.include "data/maps/MtPyre_1F/events.inc"
	.include "data/maps/MtPyre_2F/events.inc"
	.include "data/maps/MtPyre_3F/events.inc"
	.include "data/maps/MtPyre_4F/events.inc"
	.include "data/maps/MtPyre_5F/events.inc"
	.include "data/maps/MtPyre_6F/events.inc"
	.include "data/maps/MtPyre_Exterior/events.inc"
	.include "data/maps/MtPyre_Summit/events.inc"
	.include "data/maps/AquaHideout_1F/events.inc"
	.include "data/maps/AquaHideout_B1F/events.inc"
	.include "data/maps/AquaHideout_B2F/events.inc"
	.include "data/maps/Underwater_SeafloorCavern/events.inc"
	.include "data/maps/SeafloorCavern_Entrance/events.inc"
	.include "data/maps/SeafloorCavern_Room1/events.inc"
	.include "data/maps/SeafloorCavern_Room2/events.inc"
	.include "data/maps/SeafloorCavern_Room3/events.inc"
	.include "data/maps/SeafloorCavern_Room4/events.inc"
	.include "data/maps/SeafloorCavern_Room5/events.inc"
	.include "data/maps/SeafloorCavern_Room6/events.inc"
	.include "data/maps/SeafloorCavern_Room7/events.inc"
	.include "data/maps/SeafloorCavern_Room8/events.inc"
	.include "data/maps/SeafloorCavern_Room9/events.inc"
	.include "data/maps/CaveOfOrigin_Entrance/events.inc"
	.include "data/maps/CaveOfOrigin_1F/events.inc"
	.include "data/maps/CaveOfOrigin_UnusedRubySapphireMap1/events.inc"
	.include "data/maps/CaveOfOrigin_UnusedRubySapphireMap2/events.inc"
	.include "data/maps/CaveOfOrigin_UnusedRubySapphireMap3/events.inc"
	.include "data/maps/CaveOfOrigin_B1F/events.inc"
	.include "data/maps/VictoryRoad_1F/events.inc"
	.include "data/maps/VictoryRoad_B1F/events.inc"
	.include "data/maps/VictoryRoad_B2F/events.inc"
	.include "data/maps/ShoalCave_LowTideEntranceRoom/events.inc"
	.include "data/maps/ShoalCave_LowTideInnerRoom/events.inc"
	.include "data/maps/ShoalCave_LowTideStairsRoom/events.inc"
	.include "data/maps/ShoalCave_LowTideLowerRoom/events.inc"
	.include "data/maps/ShoalCave_HighTideEntranceRoom/events.inc"
	.include "data/maps/ShoalCave_HighTideInnerRoom/events.inc"
	.include "data/maps/NewMauville_Entrance/events.inc"
	.include "data/maps/NewMauville_Inside/events.inc"
	.include "data/maps/AbandonedShip_Deck/events.inc"
	.include "data/maps/AbandonedShip_Corridors_1F/events.inc"
	.include "data/maps/AbandonedShip_Rooms_1F/events.inc"
	.include "data/maps/AbandonedShip_Corridors_B1F/events.inc"
	.include "data/maps/AbandonedShip_Rooms_B1F/events.inc"
	.include "data/maps/AbandonedShip_Rooms2_B1F/events.inc"
	.include "data/maps/AbandonedShip_Underwater1/events.inc"
	.include "data/maps/AbandonedShip_Room_B1F/events.inc"
	.include "data/maps/AbandonedShip_Rooms2_1F/events.inc"
	.include "data/maps/AbandonedShip_CaptainsOffice/events.inc"
	.include "data/maps/AbandonedShip_Underwater2/events.inc"
	.include "data/maps/AbandonedShip_HiddenFloorCorridors/events.inc"
	.include "data/maps/AbandonedShip_HiddenFloorRooms/events.inc"
	.include "data/maps/IslandCave/events.inc"
	.include "data/maps/AncientTomb/events.inc"
	.include "data/maps/Underwater_Route134/events.inc"
	.include "data/maps/Underwater_SealedChamber/events.inc"
	.include "data/maps/SealedChamber_OuterRoom/events.inc"
	.include "data/maps/SealedChamber_InnerRoom/events.inc"
	.include "data/maps/ScorchedSlab/events.inc"
	.include "data/maps/AquaHideout_UnusedRubyMap1/events.inc"
	.include "data/maps/AquaHideout_UnusedRubyMap2/events.inc"
	.include "data/maps/AquaHideout_UnusedRubyMap3/events.inc"
	.include "data/maps/SkyPillar_Entrance/events.inc"
	.include "data/maps/SkyPillar_Outside/events.inc"
	.include "data/maps/SkyPillar_1F/events.inc"
	.include "data/maps/SkyPillar_2F/events.inc"
	.include "data/maps/SkyPillar_3F/events.inc"
	.include "data/maps/SkyPillar_4F/events.inc"
	.include "data/maps/ShoalCave_LowTideIceRoom/events.inc"
	.include "data/maps/SkyPillar_5F/events.inc"
	.include "data/maps/SkyPillar_Top/events.inc"
	.include "data/maps/MagmaHideout_1F/events.inc"
	.include "data/maps/MagmaHideout_2F_1R/events.inc"
	.include "data/maps/MagmaHideout_2F_2R/events.inc"
	.include "data/maps/MagmaHideout_3F_1R/events.inc"
	.include "data/maps/MagmaHideout_3F_2R/events.inc"
	.include "data/maps/MagmaHideout_4F/events.inc"
	.include "data/maps/MagmaHideout_3F_3R/events.inc"
	.include "data/maps/MagmaHideout_2F_3R/events.inc"
	.include "data/maps/MirageTower_1F/events.inc"
	.include "data/maps/MirageTower_2F/events.inc"
	.include "data/maps/MirageTower_3F/events.inc"
	.include "data/maps/MirageTower_4F/events.inc"
	.include "data/maps/DesertUnderpass/events.inc"
	.include "data/maps/ArtisanCave_B1F/events.inc"
	.include "data/maps/ArtisanCave_1F/events.inc"
	.include "data/maps/Underwater_MarineCave/events.inc"
	.include "data/maps/MarineCave_Entrance/events.inc"
	.include "data/maps/MarineCave_End/events.inc"
	.include "data/maps/TerraCave_Entrance/events.inc"
	.include "data/maps/TerraCave_End/events.inc"
	.include "data/maps/AlteringCave/events.inc"
	.include "data/maps/MeteorFalls_StevensCave/events.inc"
	.include "data/maps/SecretBase_RedCave1/events.inc"
	.include "data/maps/SecretBase_BrownCave1/events.inc"
	.include "data/maps/SecretBase_BlueCave1/events.inc"
	.include "data/maps/SecretBase_YellowCave1/events.inc"
	.include "data/maps/SecretBase_Tree1/events.inc"
	.include "data/maps/SecretBase_Shrub1/events.inc"
	.include "data/maps/SecretBase_RedCave2/events.inc"
	.include "data/maps/SecretBase_BrownCave2/events.inc"
	.include "data/maps/SecretBase_BlueCave2/events.inc"
	.include "data/maps/SecretBase_YellowCave2/events.inc"
	.include "data/maps/SecretBase_Tree2/events.inc"
	.include "data/maps/SecretBase_Shrub2/events.inc"
	.include "data/maps/SecretBase_RedCave3/events.inc"
	.include "data/maps/SecretBase_BrownCave3/events.inc"
	.include "data/maps/SecretBase_BlueCave3/events.inc"
	.include "data/maps/SecretBase_YellowCave3/events.inc"
	.include "data/maps/SecretBase_Tree3/events.inc"
	.include "data/maps/SecretBase_Shrub3/events.inc"
	.include "data/maps/SecretBase_RedCave4/events.inc"
	.include "data/maps/SecretBase_BrownCave4/events.inc"
	.include "data/maps/SecretBase_BlueCave4/events.inc"
	.include "data/maps/SecretBase_YellowCave4/events.inc"
	.include "data/maps/SecretBase_Tree4/events.inc"
	.include "data/maps/SecretBase_Shrub4/events.inc"
	.include "data/maps/SingleBattleColosseum/events.inc"
	.include "data/maps/TradeCenter/events.inc"
	.include "data/maps/RecordCorner/events.inc"
	.include "data/maps/DoubleBattleColosseum/events.inc"
	.include "data/maps/LinkContestRoom1/events.inc"
	.include "data/maps/LinkContestRoom2/events.inc"
	.include "data/maps/LinkContestRoom3/events.inc"
	.include "data/maps/LinkContestRoom4/events.inc"
	.include "data/maps/LinkContestRoom5/events.inc"
	.include "data/maps/LinkContestRoom6/events.inc"
	.include "data/maps/UnknownMap_25_29/events.inc"
	.include "data/maps/UnknownMap_25_30/events.inc"
	.include "data/maps/UnknownMap_25_31/events.inc"
	.include "data/maps/UnknownMap_25_32/events.inc"
	.include "data/maps/UnknownMap_25_33/events.inc"
	.include "data/maps/UnknownMap_25_34/events.inc"
	.include "data/maps/InsideOfTruck/events.inc"
	.include "data/maps/SSTidalCorridor/events.inc"
	.include "data/maps/SSTidalLowerDeck/events.inc"
	.include "data/maps/SSTidalRooms/events.inc"
	.include "data/maps/BattlePyramidSquare01/events.inc"
	.include "data/maps/BattlePyramidSquare02/events.inc"
	.include "data/maps/BattlePyramidSquare03/events.inc"
	.include "data/maps/BattlePyramidSquare04/events.inc"
	.include "data/maps/BattlePyramidSquare05/events.inc"
	.include "data/maps/BattlePyramidSquare06/events.inc"
	.include "data/maps/BattlePyramidSquare07/events.inc"
	.include "data/maps/BattlePyramidSquare08/events.inc"
	.include "data/maps/BattlePyramidSquare09/events.inc"
	.include "data/maps/BattlePyramidSquare10/events.inc"
	.include "data/maps/BattlePyramidSquare11/events.inc"
	.include "data/maps/BattlePyramidSquare12/events.inc"
	.include "data/maps/BattlePyramidSquare13/events.inc"
	.include "data/maps/BattlePyramidSquare14/events.inc"
	.include "data/maps/BattlePyramidSquare15/events.inc"
	.include "data/maps/BattlePyramidSquare16/events.inc"
	.include "data/maps/UnionRoom/events.inc"
	.include "data/maps/SafariZone_Northwest/events.inc"
	.include "data/maps/SafariZone_North/events.inc"
	.include "data/maps/SafariZone_Southwest/events.inc"
	.include "data/maps/SafariZone_South/events.inc"
	.include "data/maps/BattleFrontier_OutsideWest/events.inc"
	.include "data/maps/BattleFrontier_BattleTowerLobby/events.inc"
	.include "data/maps/BattleFrontier_BattleTowerElevator/events.inc"
	.include "data/maps/BattleFrontier_BattleTowerCorridor/events.inc"
	.include "data/maps/BattleFrontier_BattleTowerBattleRoom/events.inc"
	.include "data/maps/SouthernIsland_Exterior/events.inc"
	.include "data/maps/SouthernIsland_Interior/events.inc"
	.include "data/maps/SafariZone_RestHouse/events.inc"
	.include "data/maps/SafariZone_Northeast/events.inc"
	.include "data/maps/SafariZone_Southeast/events.inc"
	.include "data/maps/BattleFrontier_OutsideEast/events.inc"
	.include "data/maps/BattleFrontier_BattleTowerMultiBattleRoom/events.inc"
	.include "data/maps/BattleFrontier_BattleTowerCorridor2/events.inc"
	.include "data/maps/BattleFrontier_BattleTowerBattleRoom2/events.inc"
	.include "data/maps/BattleFrontier_BattleDomeLobby/events.inc"
	.include "data/maps/BattleFrontier_BattleDomeCorridor/events.inc"
	.include "data/maps/BattleFrontier_BattleDomePreBattleRoom/events.inc"
	.include "data/maps/BattleFrontier_BattleDomeBattleRoom/events.inc"
	.include "data/maps/BattleFrontier_BattlePalaceLobby/events.inc"
	.include "data/maps/BattleFrontier_BattlePalaceCorridor/events.inc"
	.include "data/maps/BattleFrontier_BattlePalaceBattleRoom/events.inc"
	.include "data/maps/BattleFrontier_BattlePyramidLobby/events.inc"
	.include "data/maps/BattleFrontier_BattlePyramidEmptySquare/events.inc"
	.include "data/maps/BattleFrontier_BattlePyramidTop/events.inc"
	.include "data/maps/BattleFrontier_BattleArenaLobby/events.inc"
	.include "data/maps/BattleFrontier_BattleArenaCorridor/events.inc"
	.include "data/maps/BattleFrontier_BattleArenaBattleRoom/events.inc"
	.include "data/maps/BattleFrontier_BattleFactoryLobby/events.inc"
	.include "data/maps/BattleFrontier_BattleFactoryPreBattleRoom/events.inc"
	.include "data/maps/BattleFrontier_BattleFactoryBattleRoom/events.inc"
	.include "data/maps/BattleFrontier_BattlePikeLobby/events.inc"
	.include "data/maps/BattleFrontier_BattlePikeCorridor/events.inc"
	.include "data/maps/BattleFrontier_BattlePikeThreePathRoom/events.inc"
	.include "data/maps/BattleFrontier_BattlePikeRandomRoom1/events.inc"
	.include "data/maps/BattleFrontier_BattlePikeRandomRoom2/events.inc"
	.include "data/maps/BattleFrontier_BattlePikeRandomRoom3/events.inc"
	.include "data/maps/BattleFrontier_RankingHall/events.inc"
	.include "data/maps/BattleFrontier_Lounge1/events.inc"
	.include "data/maps/BattleFrontier_BattlePointExchangeServiceCorner/events.inc"
	.include "data/maps/BattleFrontier_Lounge2/events.inc"
	.include "data/maps/BattleFrontier_Lounge3/events.inc"
	.include "data/maps/BattleFrontier_Lounge4/events.inc"
	.include "data/maps/BattleFrontier_ScottsHouse/events.inc"
	.include "data/maps/BattleFrontier_Lounge5/events.inc"
	.include "data/maps/BattleFrontier_Lounge6/events.inc"
	.include "data/maps/BattleFrontier_Lounge7/events.inc"
	.include "data/maps/BattleFrontier_ReceptionGate/events.inc"
	.include "data/maps/BattleFrontier_Lounge8/events.inc"
	.include "data/maps/BattleFrontier_Lounge9/events.inc"
	.include "data/maps/BattleFrontier_PokemonCenter_1F/events.inc"
	.include "data/maps/BattleFrontier_PokemonCenter_2F/events.inc"
	.include "data/maps/BattleFrontier_Mart/events.inc"
	.include "data/maps/FarawayIsland_Entrance/events.inc"
	.include "data/maps/FarawayIsland_Interior/events.inc"
	.include "data/maps/BirthIsland_Exterior/events.inc"
	.include "data/maps/BirthIsland_Harbor/events.inc"
	.include "data/maps/TrainerHill_Entrance/events.inc"
	.include "data/maps/TrainerHill_1F/events.inc"
	.include "data/maps/TrainerHill_2F/events.inc"
	.include "data/maps/TrainerHill_3F/events.inc"
	.include "data/maps/TrainerHill_4F/events.inc"
	.include "data/maps/TrainerHill_Roof/events.inc"
	.include "data/maps/NavelRock_Exterior/events.inc"
	.include "data/maps/NavelRock_Harbor/events.inc"
	.include "data/maps/NavelRock_Entrance/events.inc"
	.include "data/maps/NavelRock_B1F/events.inc"
	.include "data/maps/NavelRock_Fork/events.inc"
	.include "data/maps/NavelRock_Up1/events.inc"
	.include "data/maps/NavelRock_Up2/events.inc"
	.include "data/maps/NavelRock_Up3/events.inc"
	.include "data/maps/NavelRock_Up4/events.inc"
	.include "data/maps/NavelRock_Top/events.inc"
	.include "data/maps/NavelRock_Down01/events.inc"
	.include "data/maps/NavelRock_Down02/events.inc"
	.include "data/maps/NavelRock_Down03/events.inc"
	.include "data/maps/NavelRock_Down04/events.inc"
	.include "data/maps/NavelRock_Down05/events.inc"
	.include "data/maps/NavelRock_Down06/events.inc"
	.include "data/maps/NavelRock_Down07/events.inc"
	.include "data/maps/NavelRock_Down08/events.inc"
	.include "data/maps/NavelRock_Down09/events.inc"
	.include "data/maps/NavelRock_Down10/events.inc"
	.include "data/maps/NavelRock_Down11/events.inc"
	.include "data/maps/NavelRock_Bottom/events.inc"
	.include "data/maps/TrainerHill_Elevator/events.inc"
	.include "data/maps/Route104_Prototype/events.inc"
	.include "data/maps/Route104_PrototypePrettyPetalFlowerShop/events.inc"
	.include "data/maps/Route109_SeashoreHouse/events.inc"
	.include "data/maps/Route110_TrickHouseEntrance/events.inc"
	.include "data/maps/Route110_TrickHouseEnd/events.inc"
	.include "data/maps/Route110_TrickHouseCorridor/events.inc"
	.include "data/maps/Route110_TrickHousePuzzle1/events.inc"
	.include "data/maps/Route110_TrickHousePuzzle2/events.inc"
	.include "data/maps/Route110_TrickHousePuzzle3/events.inc"
	.include "data/maps/Route110_TrickHousePuzzle4/events.inc"
	.include "data/maps/Route110_TrickHousePuzzle5/events.inc"
	.include "data/maps/Route110_TrickHousePuzzle6/events.inc"
	.include "data/maps/Route110_TrickHousePuzzle7/events.inc"
	.include "data/maps/Route110_TrickHousePuzzle8/events.inc"
	.include "data/maps/Route110_SeasideCyclingRoadNorthEntrance/events.inc"
	.include "data/maps/Route110_SeasideCyclingRoadSouthEntrance/events.inc"
	.include "data/maps/Route113_GlassWorkshop/events.inc"
	.include "data/maps/Route123_BerryMastersHouse/events.inc"
	.include "data/maps/Route119_WeatherInstitute_1F/events.inc"
	.include "data/maps/Route119_WeatherInstitute_2F/events.inc"
	.include "data/maps/Route119_House/events.inc"
	.include "data/maps/Route124_DivingTreasureHuntersHouse/events.inc"

	.include "data/maps/PalletTown/events.inc"

	.include "data/maps/Pallet_Town_House1/events.inc"
