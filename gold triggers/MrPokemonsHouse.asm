const_value set 2
	const MRPOKEMONSHOUSE_GENTLEMAN
	const MRPOKEMONSHOUSE_OAK

MrPokemonsHouse_MapScriptHeader:
.MapTriggers:
	db 2

	; triggers
	maptrigger .Trigger0
	maptrigger .Trigger1

.MapCallbacks:
	db 0

.Trigger0:
	priorityjump .MrPokemonEvent
	end

.Trigger1:
	end

.MrPokemonEvent:
	showemote EMOTE_SHOCK, MRPOKEMONSHOUSE_GENTLEMAN, 15
	spriteface MRPOKEMONSHOUSE_GENTLEMAN, DOWN
	opentext
	writetext MrPokemonIntroText1
	waitbutton
	closetext
	applymovement PLAYER, MrPokemonsHouse_PlayerWalksToMrPokemon
	opentext
	writetext MrPokemonIntroText2
	buttonsound
	waitsfx
	giveitem MYSTERY_EGG
	writetext MrPokemonsHouse_GotEggText
	playsound SFX_KEY_ITEM
	waitsfx
	itemnotify
	setevent EVENT_GOT_MYSTERY_EGG_FROM_MR_POKEMON
	blackoutmod CHERRYGROVE_CITY
	writetext MrPokemonIntroText3
	buttonsound
	spriteface MRPOKEMONSHOUSE_GENTLEMAN, RIGHT
	writetext MrPokemonIntroText4
	buttonsound
	spriteface MRPOKEMONSHOUSE_GENTLEMAN, DOWN
	spriteface MRPOKEMONSHOUSE_OAK, LEFT
	writetext MrPokemonIntroText5
	waitbutton
	closetext
	jump MrPokemonsHouse_OakScript

MrPokemonsHouse_MrPokemonScript:
	faceplayer
	opentext
	checkitem RED_SCALE
	iftrue .RedScale
	checkevent EVENT_GAVE_MYSTERY_EGG_TO_ELM
	iftrue .AlwaysNewDiscoveries
	writetext MrPokemonText_ImDependingOnYou
	waitbutton
	closetext
	end

.AlwaysNewDiscoveries:
	writetext MrPokemonText_AlwaysNewDiscoveries
	waitbutton
	closetext
	end

.RedScale:
	writetext MrPokemonText_GimmeTheScale
	yesorno
	iffalse .refused
	verbosegiveitem EXP_SHARE
	iffalse .full
	takeitem RED_SCALE
	jump .AlwaysNewDiscoveries

.refused
	writetext MrPokemonText_Disappointed
	waitbutton
.full
	closetext
	end

MrPokemonsHouse_OakScript:
	playmusic MUSIC_PROF_OAK
	applymovement MRPOKEMONSHOUSE_OAK, MrPokemonsHouse_OakWalksToPlayer
	spriteface PLAYER, RIGHT
	opentext
	writetext MrPokemonsHouse_OakText1
	buttonsound
	waitsfx
	writetext MrPokemonsHouse_GetDexText
	playsound SFX_ITEM
	waitsfx
	setflag ENGINE_POKEDEX
	writetext MrPokemonsHouse_OakText2
	waitbutton
	closetext
	spriteface PLAYER, DOWN
	applymovement MRPOKEMONSHOUSE_OAK, MrPokemonsHouse_OakExits
	playsound SFX_EXIT_BUILDING
	disappear MRPOKEMONSHOUSE_OAK
	waitsfx
	special RestartMapMusic
	pause 15
	spriteface PLAYER, UP
	opentext
	writetext MrPokemonsHouse_MrPokemonHealText
	waitbutton
	closetext
	special Special_FadeBlackQuickly
	special Special_ReloadSpritesNoPalettes
	playmusic MUSIC_HEAL
	special TrainerRankings_Healings
	special HealParty
	pause 60
	special Special_FadeInQuickly
	special RestartMapMusic
	opentext
	writetext MrPokemonText_ImDependingOnYou
	waitbutton
	closetext
	setevent EVENT_RIVAL_NEW_BARK_TOWN
	setevent EVENT_KRISS_HOUSE_1F_NEIGHBOR
	clearevent EVENT_KRISS_NEIGHBORS_HOUSE_NEIGHBOR
	dotrigger $1
	domaptrigger CHERRYGROVE_CITY, $1
	domaptrigger ELMS_LAB, $3
	specialphonecall SPECIALCALL_ROBBED
	clearevent EVENT_COP_IN_ELMS_LAB
	checkevent EVENT_GOT_TOTODILE_FROM_ELM
	iftrue .RivalTakesChikorita
	checkevent EVENT_GOT_CHIKORITA_FROM_ELM
	iftrue .RivalTakesCyndaquil
	setevent EVENT_TOTODILE_POKEBALL_IN_ELMS_LAB
	end

.RivalTakesChikorita:
	setevent EVENT_CHIKORITA_POKEBALL_IN_ELMS_LAB
	end

.RivalTakesCyndaquil:
	setevent EVENT_CYNDAQUIL_POKEBALL_IN_ELMS_LAB
	end

MapMrPokemonsHouseSignpost1Script:
	jumptext MrPokemonsHouse_ForeignMagazinesText

MapMrPokemonsHouseSignpost3Script:
	jumptext MrPokemonsHouse_BrokenComputerText

MapMrPokemonsHouseSignpost4Script:
	jumptext MrPokemonsHouse_StrangeCoinsText

MrPokemonsHouse_PlayerWalksToMrPokemon:
	step RIGHT
	step UP
	step_end

MrPokemonsHouse_OakWalksToPlayer:
	step DOWN
	step LEFT
	step LEFT
	step_end

MrPokemonsHouse_OakExits:
	step DOWN
	step LEFT
	turn_head DOWN
	db $3f ; movement
	step_end

MrPokemonIntroText1:
	text "Hello, hello! You"
	line "must be <PLAY_G>."

	para "PROF.ELM said that"
	line "you would visit."
	done

MrPokemonIntroText2:
	text "This is what I"
	line "want PROF.ELM to"
	cont "examine."
	done

MrPokemonsHouse_GotEggText:
	text "<PLAYER> received"
	line "MYSTERY EGG."
	done

MrPokemonIntroText3:
	text "I know a couple"
	line "who run a #MON"
	cont "DAY-CARE service."

	para "They gave me that"
	line "EGG."

	para "I was intrigued,"
	line "so I sent mail to"
	cont "PROF.ELM."

	para "For #MON evolu-"
	line "tion, PROF.ELM is"
	cont "the authority."
	done

MrPokemonIntroText4:
	text "Even PROF.OAK here"
	line "recognizes that."
	done

MrPokemonIntroText5:
	text "If my assumption"
	line "is correct, PROF."
	cont "ELM will know it."
	done

MrPokemonsHouse_MrPokemonHealText:
	text "You are returning"
	line "to PROF.ELM?"

	para "Here. Your #MON"
	line "should have some"
	cont "rest."
	done

MrPokemonText_ImDependingOnYou:
	text "I'm depending on"
	line "you!"
	done

MrPokemonText_AlwaysNewDiscoveries:
	text "Life is delight-"
	line "ful! Always, new"

	para "discoveries to be"
	line "made!"
	done

MrPokemonsHouse_OakText1:
	text "OAK: Aha! So"
	line "you're <PLAY_G>!"

	para "I'm OAK! A #MON"
	line "researcher."

	para "I was just visit-"
	line "ing my old friend"
	cont "MR.#MON."

	para "I heard you were"
	line "running an errand"

	para "for PROF.ELM, so I"
	line "waited here."

	para "Oh! What's this?"
	line "A rare #MON!"

	para "Let's see…"

	para "Hm, I see!"

	para "I understand why"
	line "PROF.ELM gave you"

	para "a #MON for this"
	line "errand."

	para "To researchers"
	line "like PROF.ELM and"

	para "I, #MON are our"
	line "friends."

	para "He saw that you"
	line "would treat your"

	para "#MON with love"
	line "and care."

	para "…Ah!"

	para "You seem to be"
	line "dependable."

	para "How would you like"
	line "to help me out?"

	para "See? This is the"
	line "latest version of"
	cont "#DEX."

	para "It automatically"
	line "records data on"

	para "#MON you've"
	line "seen or caught."

	para "It's a hi-tech"
	line "encyclopedia!"
	done

MrPokemonsHouse_GetDexText:
	text "<PLAYER> received"
	line "#DEX!"
	done

MrPokemonsHouse_OakText2:
	text "Go meet many kinds"
	line "of #MON and"

	para "complete that"
	line "#DEX!"

	para "But I've stayed"
	line "too long."

	para "I have to get to"
	line "GOLDENROD for my"
	cont "usual radio show."

	para "<PLAY_G>, I'm"
	line "counting on you!"
	done

MrPokemonText_GimmeTheScale:
	text "Hm? That SCALE!"
	line "What's that?"
	cont "A red GYARADOS?"

	para "That's rare! "
	line "I, I want it…"

	para "<PLAY_G>, would you"
	line "care to trade it?"

	para "I can offer this"
	line "EXP.SHARE I got"
	cont "from PROF.OAK."
	done

MrPokemonText_Disappointed:
	text "That's disappoint-"
	line "ing. That happens"
	cont "to be very rare."
	done

MrPokemonsHouse_ForeignMagazinesText:
	text "It's packed with"
	line "foreign magazines."

	para "Can't even read"
	line "their titles…"
	done

MrPokemonsHouse_BrokenComputerText:
	text "It's a big com-"
	line "puter. Hmm. It's"
	cont "broken."
	done

MrPokemonsHouse_StrangeCoinsText:
	text "A whole pile of"
	line "strange coins!"

	para "Maybe they're from"
	line "another country…"
	done

MrPokemonsHouse_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 2
	warp_def $7, $2, 2, ROUTE_30
	warp_def $7, $3, 2, ROUTE_30

.XYTriggers:
	db 0

.Signposts:
	db 5
	signpost 1, 0, SIGNPOST_READ, MapMrPokemonsHouseSignpost1Script
	signpost 1, 1, SIGNPOST_READ, MapMrPokemonsHouseSignpost1Script
	signpost 1, 6, SIGNPOST_READ, MapMrPokemonsHouseSignpost3Script
	signpost 1, 7, SIGNPOST_READ, MapMrPokemonsHouseSignpost3Script
	signpost 4, 6, SIGNPOST_READ, MapMrPokemonsHouseSignpost4Script

.PersonEvents:
	db 2
	person_event SPRITE_GENTLEMAN, 5, 3, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, MrPokemonsHouse_MrPokemonScript, -1
	person_event SPRITE_OAK, 5, 6, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, ObjectEvent, EVENT_MR_POKEMONS_HOUSE_OAK
