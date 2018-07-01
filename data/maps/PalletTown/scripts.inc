PalletTown_MapScripts::
	.byte 0

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
	.string "He doesn’t know how you got here, and\n"
	.string "neither do I.$"

PalletTownSign_Text:
	.string "YIPPY’s HOUSE$"
	