PalletTown_MapScripts::
	map_script 1, NewGame
	.byte 0

NewGame::
	checkflag FLAG_SYS_POKEMON_GET
	call_if 0, GivePokemon
	end

GivePokemon:
	setflag FLAG_SYS_POKEMON_GET
	setflag FLAG_SYS_POKEDEX_GET
	setflag FLAG_SYS_NATIONAL_DEX
	special EnableNationalPokedex
	givemon SPECIES_PIDGEY, 5, ITEM_NONE, 0x0, 0x0, 0
	end

FatManScript::
	msgbox FatManScript_Text, 2
	end

YippyScript::
	msgbox YippyScript_Text, 2
	end

PalletTownSign::
	msgbox PalletTownSign_Text, 3
	end

FatManScript_Text:
	.string "How did you get here?$"

YippyScript_Text:
	.string "He doesn’t know how you got here,\n"
	.string "and neither do I.$"

PalletTownSign_Text:
	.string "YIPPY’s HOUSE$"
