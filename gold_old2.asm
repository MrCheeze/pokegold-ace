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

.define wSpecialPhoneCallID $D97B
.define wCurrentMapSignpostCount $D94B
.define MapGroup $DA00
.define MapNumber $DA01
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
.define PartyCount $DA22
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

.define MapTradeCenterSignpost1Script $54AF

.define TEMPSTORAGE $C3A0
.define TEMPSTORAGELEN $0168

.define FREERAM $DF01

.define SHINESCRIPTSTORAGE $CC20
.define SHINESCRIPTSTORAGELEN $0078

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
	
shrineScript:
	.db callasm, $00
		.dw shrineCode
	.db jump
		.dw SHINESCRIPTSTORAGE
	.db end
	
.org wMomsName ; max length 11
	.db $38,$38,$80,$80,$80,$80,$80,$80
	.dw tradeCenterCodePart2
	.db $50
	
.org wRedsName ; max length 22
	.db $39,$39,$39,$39,$39,$39,$39,$39,$39,$5B,$50
.org wGreensName
	;write this dynamically instead .db $4E,$4E,$4E,$4E,$4E,$4E,$4E,$4E,$4E,$50
shrineCode:
	ld hl,shrineCodeSram
	jp runSramCode
	
.org $A498
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
	
	xor a ; clears the carry flag. if carry flag is set, we get a glitchy phone call.
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

shrineCodeSram:
	ld hl,shrineScriptSram-shrineCodeSram+TEMPSTORAGE
	ld de,SHINESCRIPTSTORAGE
	ld bc,SHINESCRIPTSTORAGELEN
	call CopyBytes
	ret
	

shrineScriptSram:
	;.db warpfacing, 1, $09, $06, 7, 4
	;.db callasm, $00
	;	.dw loadBetaLakeOfRage-shrineScriptSram+SHINESCRIPTSTORAGE
	;.db warpfacing, 1, $18, $04, 7, 4
	;.db callasm, $00
	;	.dw loadBetaNewBarkTown-shrineScriptSram+SHINESCRIPTSTORAGE
	;.db warpfacing, 1, $0A, $05, 5, 9
	;.db callasm, $00
	;	.dw loadBetaViolet-shrineScriptSram+SHINESCRIPTSTORAGE
	;.db warpfacing, 1, $0B, $02, 21, 26
	;.db callasm, $00
	;	.dw loadBetaGoldenrod-shrineScriptSram+SHINESCRIPTSTORAGE
	;.db warpfacing, 1, $04, $09, 21, 23
	;.db callasm, $00
	;	.dw loadBetaEcruteak-shrineScriptSram+SHINESCRIPTSTORAGE
	;.db warpfacing, 1, $01, $0E, 21, 23
	;.db callasm, $00
	;	.dw loadBetaOlivine-shrineScriptSram+SHINESCRIPTSTORAGE
	;.db warpfacing, 1, $02, $07, 8, 8
	;.db callasm, $00
	;	.dw loadBetaMahogany-shrineScriptSram+SHINESCRIPTSTORAGE
	;.db warpfacing, 1, $05, $0A, 12, 20
	;.db callasm, $00
	;	.dw loadBetaBlackthorn-shrineScriptSram+SHINESCRIPTSTORAGE
	.db warpfacing, 1, $13, $02, 12, 35
	.db callasm, $00
		.dw loadBetaRoute28-shrineScriptSram+SHINESCRIPTSTORAGE
	.db newloadmap, $F8
	;.db closetext ;fix graphics
	.db playmusic
		.dw $001A
	
	
	
	
	;.db textbox
	;.db farwritetext, $44
	;	.dw $484A
	;.db waitbutton
	;.db closetext
	;.db showemote $00, 0, 20
	;.db cry, 251, 00
	
	;.db warpfacing, 2, $17, $02, 30, 6
	;;.db variablesprite, $07, $04
	;.db playmusic
	;	.dw $001f
	
	;.db loadwildmon, 251, 1
	;.db random, 3
	;.db iftrue
	;	.dw notShinyBattle-shrineScriptSram+SHINESCRIPTSTORAGE
	;.db writecode, $03, $07
	;notShinyBattle:
	;.db startbattle
	;.db reloadmapafterbattle
	;.db warpfacing, 1, $03, $2C, 8, 24
	.db end

;loadBetaLakeOfRage:
;	ld hl,MapBlockDataBank
;	ld [hl],$2B
;	inc hl
;	ld [hl],$80
;	inc hl
;	ld [hl],$41
;	jp ChangeMap
;loadBetaNewBarkTown:
;	ld hl,MapBlockDataBank
;	ld [hl],$2A
;	inc hl
;	ld [hl],$FB
;	inc hl
;	ld [hl],$7A
;	jp ChangeMap
;loadBetaViolet:
;	ld hl,MapBlockDataBank
;	ld [hl],$2A
;	inc hl
;	ld [hl],$59
;	inc hl
;	ld [hl],$56
;	jp ChangeMap
;loadBetaGoldenrod:
;	ld hl,MapBlockDataBank
;	ld [hl],$2A
;	inc hl
;	ld [hl],$07
;	inc hl
;	ld [hl],$5D
;	jp ChangeMap
;loadBetaEcruteak:
;	ld hl,MapBlockDataBank
;	ld [hl],$2A
;	inc hl
;	ld [hl],$8B
;	inc hl
;	ld [hl],$68
;	jp ChangeMap
;loadBetaOlivine:
;	ld hl,MapBlockDataBank
;	ld [hl],$2A
;	inc hl
;	ld [hl],$93
;	inc hl
;	ld [hl],$79
;	jp ChangeMap
;loadBetaMahogany:
;	ld hl,MapBlockDataBank
;	ld [hl],$2A
;	inc hl
;	ld [hl],$AF
;	inc hl
;	ld [hl],$71
;	jp ChangeMap
;loadBetaBlackthorn:
;	ld hl,MapBlockDataBank
;	ld [hl],$2A
;	inc hl
;	ld [hl],$34
;	inc hl
;	ld [hl],$4C
;	jp ChangeMap
loadBetaRoute28:
	ld hl,wTileset
	ld [hl],$00
	ld l,MapBorderBlock # $100
	ld [hl],$05
	ld l,MapBlockDataBank # $100
	ld [hl],$2A
	inc hl
	ld [hl],$37
	inc hl
	ld [hl],$5A
	ld l,EastConnectedMapGroup # $100
	ld [hl],$FF
	ret
	
tradeCenterCodeSram:

	ld hl,PlayerID
	ld a,$4E
	ld bc,13
	call ByteFill
	
	ld l,PlayerName # $100
	ld [hl],$4F
	
	ld l,wGreensName # $100
	ld c,9
	call ByteFill
	ld [hl],$50
	
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
	ret








