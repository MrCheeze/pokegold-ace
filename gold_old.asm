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
.define LoadMapAttributes_SkipPeople $23F6
.define GetCurrentMapTrigger $1F78

.org $D941
	.dw $0606 ; point current script number to zero
	
	
.org $D951
	.db $06 ; set number of scripts to nonzero
	.dw triggerHeaderPtr
	
	
.org $d800
triggerHeaderPtr:
	.dw script
	
script:
	.db callasm, 0
	.dw asm
	.db end
	
asm:
	ld hl,$D7FE ;;;;;;;;debug
	inc [hl]
	
	ld hl,$FF80
	ld [hl],$18 ; jr
	inc hl
	ld [hl],$FFF0-$FF82
	ld hl,hramCode
	ld de,$FFF0
	ld bc,hramCodeEnd-hramCode
	call CopyBytes
	ret
	
hramCode:
	ld hl,$D7FF ;;;;;;;;debug
	inc [hl]
	
	call setup
	ld a,$C3
	jr -($FFF0-$FF82+hramCodeEnd-hramCode)
hramCodeEnd:

setup:
	ld a,$06
	ld hl,$d941
	ld [hli],a
	ld [hl],a
	ld l,$51
	ld [hli],a
	ld bc,triggerHeaderPtr
	ld [hl],c
	inc hl
	ld [hl],b
	ld a,(script) # $100
	ld [bc],a
	ld a,(script) / $100
	inc bc
	ld [bc],a
	ld a,[$ceaf]
	and a
	ret nz
	call GetCurrentMapTrigger
	jp LoadMapAttributes_SkipPeople