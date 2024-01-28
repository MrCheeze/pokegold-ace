.MEMORYMAP
SLOTSIZE $10000
DEFAULTSLOT 0
SLOT 0 $0
.ENDME

.ROMBANKSIZE $10000
.ROMBANKS 2

.BANK 0 SLOT 0

.define scall                      $00
.define farscall                   $01
.define ptcall                     $02
.define jump                       $03
.define farjump                    $04
.define ptjump                     $05
.define if_equal                   $06
.define if_not_equal               $07
.define iffalse                    $08
.define iftrue                     $09
.define if_greater_than            $0a
.define if_less_than               $0b
.define jumpstd                    $0c
.define callstd                    $0d
.define callasm                    $0e
.define special                    $0f
.define ptcallasm                  $10
.define checkmaptriggers           $11
.define domaptrigger               $12
.define checktriggers              $13
.define dotrigger                  $14
.define writebyte                  $15
.define addvar                     $16
.define random                     $17
.define checkver                   $18
.define copybytetovar              $19
.define copyvartobyte              $1a
.define loadvar                    $1b
.define checkcode                  $1c
.define writevarcode               $1d
.define writecode                  $1e
.define giveitem                   $1f
.define takeitem                   $20
.define checkitem                  $21
.define givemoney                  $22
.define takemoney                  $23
.define checkmoney                 $24
.define givecoins                  $25
.define takecoins                  $26
.define checkcoins                 $27
.define addcellnum                 $28
.define delcellnum                 $29
.define checkcellnum               $2a
.define checktime                  $2b
.define checkpoke                  $2c
.define givepoke                   $2d
.define giveegg                    $2e
.define givepokeitem               $2f
.define checkpokeitem              $30
.define checkevent                 $31
.define clearevent                 $32
.define setevent                   $33
.define checkflag                  $34
.define clearflag                  $35
.define setflag                    $36
.define wildon                     $37
.define wildoff                    $38
.define xycompare                  $39
.define warpmod                    $3a
.define blackoutmod                $3b
.define warp                       $3c
.define readmoney                  $3d
.define readcoins                  $3e
.define RAM2MEM                    $3f
.define pokenamemem                $40
.define itemtotext                 $41
.define mapnametotext              $42
.define trainertotext              $43
.define stringtotext               $44
.define itemnotify                 $45
.define pocketisfull               $46
.define textbox                    $47
.define refreshscreen              $48
.define closetext                  $49
.define loadbytec2cf               $4a
.define farwritetext               $4b
.define writetext                  $4c
.define repeattext                 $4d
.define yesorno                    $4e
.define loadmenudata               $4f
.define closewindow                $50
.define jumptextfaceplayer         $51
.define jumptext                   $52
.define waitbutton                 $53
.define buttonsound                $54
.define pokepic                    $55
.define closepokepic               $56
.define _2dmenu                    $57
.define verticalmenu               $58
.define loadpikachudata            $59
.define randomwildmon              $5a
.define loadmemtrainer             $5b
.define loadwildmon                $5c
.define loadtrainer                $5d
.define startbattle                $5e
.define reloadmapafterbattle       $5f
.define catchtutorial              $60
.define trainertext                $61
.define trainerflagaction          $62
.define winlosstext                $63
.define scripttalkafter            $64
.define end_if_just_battled        $65
.define check_just_battled         $66
.define setlasttalked              $67
.define applymovement              $68
.define applymovement2             $69
.define faceplayer                 $6a
.define faceperson                 $6b
.define variablesprite             $6c
.define disappear                  $6d
.define appear                     $6e
.define follow                     $6f
.define stopfollow                 $70
.define moveperson                 $71
.define writepersonxy              $72
.define loademote                  $73
.define showemote                  $74
.define spriteface                 $75
.define follownotexact             $76
.define earthquake                 $77
.define changemap                  $78
.define changeblock                $79
.define reloadmap                  $7a
.define reloadmappart              $7b
.define writecmdqueue              $7c
.define delcmdqueue                $7d
.define playmusic                  $7e
.define encountermusic             $7f
.define musicfadeout               $80
.define playmapmusic               $81
.define dontrestartmapmusic        $82
.define cry                        $83
.define playsound                  $84
.define waitsfx                    $85
.define warpsound                  $86
.define specialsound               $87
.define passtoengine               $88
.define newloadmap                 $89
.define pause                      $8a
.define deactivatefacing           $8b
.define priorityjump               $8c
.define warpcheck                  $8d
.define ptpriorityjump             $8e
.define return                     $8f
.define end                        $90
.define reloadandreturn            $91
.define end_all                    $92
.define pokemart                   $93
.define elevator                   $94
.define trade                      $95
.define askforphonenumber          $96
.define phonecall                  $97
.define hangup                     $98
.define describedecoration         $99
.define fruittree                  $9a
.define specialphonecall           $9b
.define checkphonecall             $9c
.define verbosegiveitem            $9d
.define swarm                      $9e
.define halloffame                 $9f
.define credits                    $a0
.define warpfacing                 $a1
.define battletowertext            $a2
.define landmarktotext             $a3

.define CopyBytes $311A
.define FarCopyBytes $0DCD
.define LoadMapAttributes_SkipPeople $23F6
.define GetCurrentMapTrigger $1F78
.define DisableSpriteUpdates $2F93
.define EnableSpriteUpdates $2FA4
.define LinkCommunications $0A4000
.define Gen2ToGen2LinkComms $0A416F
.define FarCall $08
.define Bankswitch $10
.define JumpTable $28
.define ByteFill $314C
.define UpdateSprites $196F
.define SafeUpdateSprites $2EF1
.define OpenSRAM $30E1
.define CloseSRAM $30F1
.define Reset $05B0
.define Function75f $0710
.define ClearLinkData $43B4
.define Link_PrepPartyData_Gen2 $4523
.define FixDataForLinkTransfer $43C2
.define Function29dba $5BF4
.define Function283f2 $4380
.define BankSwitch $10
.define DelayFrames $033C
.define DelayFrame $032E
.define Script_jump $7370
.define ChangeMap $260D
.define LoadBlockData $25F6
.define LoadTilesetHeader $2DFA
.define GetCoordOfUpperLeftCorner $25A9
.define Predef $2E49
.define StagePartyDataForMysteryGift $3F4F6A
.define MapCallbackSprites_LoadUsedSpritesGFX $054226
.define ScriptCall $25733D

.define wSpecialPhoneCallID $D97B
.define wCurrentMapSignpostCount $D94B
.define wCurrentMapPersonEventCount $D94E
.define MapGroup $DA00
.define MapNumber $DA01
.define wYCoord $DA02
.define wXCoord $DA03
.define wTileset $D082
.define MapBorderBlock $D086
.define MapHeight $D087
.define MapWidth $D088
.define MapBlockDataBank $D089
.define MapBlockDataPointer $D08A
.define NorthConnectedMapGroup $D092
.define SouthConnectedMapGroup $D09E
.define WestConnectedMapGroup $D0AA
.define EastConnectedMapGroup $D0B6
.define hVBlank $A0
.define wLinkMode $D042
.define PlayerID $D1A1
.define PlayerName $D1A3
.define wMomsName $D1AE
.define wRedsName $D1C4
.define wGreensName $D1CF
.define StartHour $D1DD
.define PartyCount $DA22
.define wOTPartyCount $DD55
.define wGameDataEnd $DF01
.define wPartyMon $DA2A
.define wOverworldDelay $CEE8
.define rIF $0F
.define rIE $FF
.define wd1f3 $D0DC
.define wLinkData $C700
.define wMisc $C508
.define EnemyMonSpecies $D0EF
.define OTPlayerName $DD40
.define wPlayerTrademonSpecies $C5D0
.define wc9f4 $C8F4
.define wcb84 $CA84
.define hLinkPlayerNumber $CD
.define hSerialSend $CF
.define rSC $02
.define ScriptBank $D160
.define wOverworldMap $C700
.define wMysteryGiftStaging $C700
.define sMysteryGiftTrainerHouseFlag $ABFD
.define wMapTimeOfDay $C1CF
.define wWildEncounterCooldown $D179
.define wMonStatusFlags $C1CB
.define PitchOffset1 $C015
.define PitchOffset2 $C047
.define PitchOffset3 $C079
.define TempWildMonSpecies $D117
.define hJoypadDown $A6
.define wBoxNames $D8BF

.define MapTradeCenterSignpost1Script $54AF

.define TEMPSTORAGE $C3A0
.define TEMPSTORAGELEN $0168

.define FREERAM $DF01

.define theperson $0D
.define thecelebi $0E
	
	
	
	
.org wSpecialPhoneCallID
	.db $8C ; causes code at D830 to run every step
	
	
.org $D830 ; max length 4
	jp everyStep
	
	
.org $D7D8 ; freespace, max length $2A
everyStep:
	ld hl,everyStepSram
	jr runSramCode
	
tradeCenterCode:
	ld hl,tradeCenterCodeSram
	;fall through
	
runSramCode:
	push hl
	call swapBytes
	call TEMPSTORAGE
	pop hl
	;fall through
	
swapBytes:
	ld de,TEMPSTORAGE
	ld bc,TEMPSTORAGELEN
	xor a
	call OpenSRAM
	swapBytesLoop:
	ld a, [hl]
	push af
	ld a, [de]
	ld [hli], a
	pop af
	ld [de], a
	inc de
	dec bc
	ld a, b
	or c
	jr nz, swapBytesLoop
	jp CloseSRAM
	
.org $D8A9 ; freespace, max length 8
tradeCenterCodePart2:
	ld hl,goldCode
	jp runSramCode
	
.org $D86F ; freespace, max length $10
ilexSignpostHeader:
	.db 22, 8, $01
		.dw shrineScript
	
tradeCenterSignpostHeader:
	.db 4, 4, $03
		.dw tradeCenterScript
	.db 4, 5, $04
		.dw tradeCenterScript
	
.org $D81C ; freespace, max length $18-4 = $14
tradeCenterScript:
	.db callasm, $00
		.dw tradeCenterCode
	.db special
		.dw $000D
	.db newloadmap, $F8
	.db end
	
.org wMomsName ; max length 11
	.db $38,$38,$80,$80,$80,$80,$80,$80
	.dw tradeCenterCodePart2
	.db $50
	
.org wRedsName ; max length 22
	.db $39,$39,$39,$39,$39,$39,$39,$39,$39,$5B,$50
.org wGreensName
	.db $4E,$4E,$4E,$4E,$4E,$4E,$4E,$4E,$4E,$50
	
.org $D6F2 ; max length C5, jesus christ how did I miss this
shrineScript:
	.db callasm, $00
		.dw beforeMapReload
		
	.db scall
		.dw doCalBattle
	
	.db applymovement, $00
		.dw warpPerson
	.db disappear theperson
	.db disappear thecelebi
	.db reloadmap
	.db playsound
		.dw $006F
	.db applymovement, $00
		.dw warpPerson
	.db waitsfx
	.db applymovement, $00
		.dw stepRight
		
	.db showemote $01, $01, 20
	
	.db moveperson, theperson, 0, 23
	.db appear, theperson
	.db applymovement, theperson
		.dw playerMoveDataRepeat
	.db faceperson, $00, theperson
	
	.db pause, $10
	
	.db showemote $01, theperson, 20
	
	.db scall
		.dw doCalBattle
	.db applymovement, theperson
		.dw warpPerson
	.db disappear theperson
	.db pause, $10
	.db applymovement, $00
		.dw turnRight
	.db pause, $28
	.db loadwildmon, 251, 30
	.db random, 3
	.db iftrue
		.dw notShinyBattle
	.db writecode, $03, $07
	notShinyBattle:
	.db startbattle
	.db disappear, thecelebi
	.db reloadmapafterbattle
	.db playmapmusic
	
	.db end
	
doCalBattle:
	.db pause, $26
	.db loadtrainer, $0C, $02
	.db startbattle
	.db reloadmap
	.db iffalse ; won battle
		.dw dontHeal
	.db special
		.dw $001B; heal party
	dontHeal:
	
	.db moveperson, thecelebi, 3, 13
	.db appear, thecelebi
	.db applymovement, thecelebi
		.dw celebiMoveDataTwo
	
	.db cry, 251, 00
	.db playsound
		.dw $006F
	.db end
	
celebiMoveData:
	.db $12, $34, $12, $12, $12, $12, $47
playerMoveData:
	.db $46, $20, $0C, $0E, $0E, $0E, $0E, $0E, $0E, $0E, $0E, $0D, $0D, $0D, $0D, $0D, $0D, $0F, $47
celebiMoveDataTwo:
	.db $0C, $0C, $0C, $30, $02, $47
warpPerson:
	.db $58, $40
	;fall through
turnRight:
	.db $03, $47
stepRight:
	.db $0F, $47
playerMoveDataRepeat:
	.db $0D, $0D, $0D, $0D, $0D, $0F, $47
	
beforeMapReload:
	ld hl,beforeMapReloadSram
	jp runSramCode
	
.org $A498
sramEverything:
.db $FD
beforeMapReloadSram:
	ld hl,$D446+16*thecelebi
	ld [hl],$4C ; sprite
	ld l,($D44D+16*thecelebi) # $100
	ld [hl],$20 ; color
	
	ld a,StagePartyDataForMysteryGift / $10000
	ld hl,StagePartyDataForMysteryGift # $10000
	rst FarCall
	xor a
	call OpenSRAM
	inc a
	ld [wMonStatusFlags],a ; disable win/loss text
	ld [$D446+16*theperson],a ; player sprite
	ld de,sMysteryGiftTrainerHouseFlag
	ld [de],a
	inc de
	ld hl,PlayerName
	ld bc,11
	call CopyBytes
	inc de
	ld hl,wMysteryGiftStaging
	ld bc,$0026
	call CopyBytes
	ld hl, shrineScriptIntro-beforeMapReloadSram+TEMPSTORAGE
	ld de, OTPlayerName
	push de
	ld bc, shrineScriptIntroEnd-shrineScriptIntro
	call CopyBytes
	pop de
	inc de
	ld a,ScriptCall / $10000
	ld hl,ScriptCall # $10000
	rst FarCall 
	
shrineScriptIntro:
	.db $C9

	.db textbox
	.db farwritetext, $44
		.dw $484A
	.db waitbutton
	.db closetext
	.db showemote $00, 0, 20
	
	
	.db dontrestartmapmusic
	.db reloadmap
	.db cry, 251, 00
	
	
	
	.db moveperson, theperson, 2, 18
	.db appear, theperson
	
	.db moveperson, thecelebi, 8, 22
	.db appear, thecelebi
	.db applymovement, thecelebi
		.dw celebiMoveData
	.db disappear, thecelebi
	
	.db applymovement, $00
		.dw playerMoveData
	
	.db faceperson, theperson, $00
	
	.db pause, $14
	
	.db showemote $01, $01, 15
	.db showemote $01, theperson, 15
	.db showemote $01, $01, 15
	
	.db end
shrineScriptIntroEnd:
	
everyStepSram:
	ld hl,$FF80
	ld [hl],$18 ; jr
	inc hl
	ld [hl],$FFED-$FF82
	ld hl,hramCode-everyStepSram+TEMPSTORAGE
	ld de,$FFED
	ld bc,hramCodeEnd-hramCode
	call CopyBytes
	
	ld hl,everyFrame-everyStepSram+TEMPSTORAGE
	ld de,FREERAM
	ld bc,everyFrameEnd-everyFrame
	call CopyBytes
	
	xor a ; clears the carry flag. if carry flag is set, we get a glitchy phone call. - not necessary anymore thanks to comparisons above
	ld [wMonStatusFlags],a
	ret
	
hramCode:
	; if current special phone call is zero, make it not
	ld hl,wSpecialPhoneCallID
	ld a,[hl]
	and a
	jr nz,dontSetPhone
	ld [hl],$8C
	dontSetPhone:
	
	call FREERAM
	
	ld a,$C3 ; the code we overwrite with the jr to hramCode
	jr -($FFED-$FF82+hramCodeEnd-hramCode)
hramCodeEnd:
	
everyFrame:
	ld bc, $2C03
	ld de, 1*$100 + (ilexSignpostHeader # $100)
	call updateSignpostHeader-everyFrame+FREERAM
	
	ld bc, $0214
	ld de, 2*$100 + (tradeCenterSignpostHeader # $100)
	call updateSignpostHeader-everyFrame+FREERAM
	
	ld de,wBoxNames
	call getHexNybbleFromBoxName-everyFrame+FREERAM
	ld h,a
	call getHexNybbleFromBoxName-everyFrame+FREERAM
	ld b,a
	call getHexNybbleFromBoxName-everyFrame+FREERAM
	ld l,a
	call getHexNybbleFromBoxName-everyFrame+FREERAM
	ld c,a
	swap h
	swap l
	add hl,bc
	ld a,[de]
	inc de
	cp $9C ; if fifth character is not colon, abort
	jr nz,dontWriteRam
	call getHexNybbleFromBoxName-everyFrame+FREERAM
	ld b,a
	swap b
	call getHexNybbleFromBoxName-everyFrame+FREERAM
	or b
	ld [hl],a
	
	dontWriteRam:
	ld a,[TempWildMonSpecies]
	cp 251
	ret nz
	ld a,$0C
	ld [PitchOffset1],a
	;ld [PitchOffset3],a
	
	ret
	
getHexNybbleFromBoxName:
	ld a,[de]
	inc de
	add 10
	and $0F
	ret
	
;if map group=c, map num=b, then set signpost header to ??ee, and wCurrentMapSignpostCount to d
updateSignpostHeader:
	ld hl,MapGroup
	ld a,[hli]
	cp c
	ret nz
	ld a,[hli]
	cp b
	ret nz
	ld hl,wCurrentMapSignpostCount
	ld [hl],d
	inc hl
	ld [hl],e
	inc hl
	ld [hl],ilexSignpostHeader / $100
	ret
everyFrameEnd:
endSram1:
	
.org $B800
tradeCenterCodeSram:

	ld hl,PlayerID
	ld a,$4E
	ld bc,13
	call ByteFill
	
	ld l,PlayerName # $100
	ld [hl],$4F
	
	ld hl,PartyCount
	ld c,$98
	call ByteFill
	
	ld c,$0A
	ld a,$80
	call ByteFill
	
	ld d,h
	ld e,l
	ld hl,silverCode-tradeCenterCodeSram+TEMPSTORAGE
	ld bc,silverCodeEnd-silverCode
	jp CopyBytes
	
silverCode:
	.dw $DDFA ; where to jump execution
	.db $50 ; string terminator
	
;actual code starts here ($DDFA)
	ret
	
silverCodeEnd:
	
goldCode:
	call $082E ; WaitLinkTransfer
	ret
	xor a
	call OpenSRAM
	ld hl,$A498
	ld [hl],$FD
	ld de,wOverworldMap
	ld bc,endSram1-$A498
	call CopyBytes
	ld hl,TEMPSTORAGE
	ld bc,endSram2-$B800
	call CopyBytes
	call CloseSRAM
	
	call $082E ; WaitLinkTransfer
	ret
	ld hl,wOverworldMap
	ld de,$C710
	ld bc,endSram1-$A498+endSram2-$B800+$10
	ld a,$08
	ldh ($FF),a
	call Function75f ; exchange bytes
	ld a,$0D
	ldh ($FF),a
	ret


endSram2:




