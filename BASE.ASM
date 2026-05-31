.286
IDEAL
MODEL small
stack 600h
DATASEG
;{
	;UI {
		printNumArr 	DB 0,0,0,0,'$'
		Print_Dec		DB 0,0,0,0,0,'$'
		ARR_DEC			DB 0,0,0,0,0
		SCORE			DW 0
		HP_FLAG			DB FALSE
		STR_GAMEOVER	DB 'GAME OVER!$'
		STR_SCORE		DB 'SCORE:$'
		STR_PAUSED		DB 'PAUSED$'
		STR_PAUSED_1	DB 27h,'E', 27h, ' = EXIT$'
		STR_PAUSED_2	DB 27h, 'R', 27h, ' = RESUME$'

	;}

	;Layout & Dots {
		CNT_DOTS 		DW 174 ;TOTAL DOTS = 180dots + 4pps
		CNT_DOTS_TEMP	DW 0
	;}


	;Images & Animations {
		INCLUDE "Images.asm"

	;}

	;Genearl (Levels and difficulty) {
		SPEED   		DW 4
		DUR_1ST_SCAT	DW 108
		DUR_CHASE		DW 540
		DUR_SCAT		DW 72
		DUR_FRI			DW 54
		LEVEL			DW 0
	;}

	;MAIN MENU {
		MENU_PTR	DB 0
		STR_PLAY	DB "PLAY$"
		STR_EXIT	DB "EXIT$"

		MENU_TXT_OFF	DW 0,0,0
		MENU_TXT_COL	DW 0,0,0
	;}

;}


	; {  all the color values ar noted in this file
		INCLUDE "Colors.asm"
	;}

	

;=================================
; NEO BERTIOGA
;=================================

	NPC_INDEX       DW 0
	TOTAL_NPCS      DW 10

	CURRENT_RESP    DB 0

;================================
; BOTOES
;================================

BTN_PTR      DB 0

STR_ACCEPT   DB 'ACEITAR$'
STR_REJECT   DB 'REJEITAR$'

BTN_COLORS   DW GREEN,WHITE

;=================================
; NPC 1
;=================================

DFNPC1 DB 'Dica: Sempre checar passaportes falsos$'
DFNPC1B DB 'Proibidos: Santo Vicente e Guaraja$'
DFNPC1C DB '=== Passaporte ===$'
DFNPC1D DB 'Nome: Joao$'
DFNPC1E DB 'Idade: 21$'
DFNPC1F DB 'Pais: Neo Bertioga$'
DFNPC1G DB '===== NPC =====$'
DFNPC1H DB 'Sou Joao$'
DFNPC1I DB 'Tenho 21 anos$'
DFNPC1J DB 'Sou de Neo Bertioga$'

;=================================
; NPC 2
;=================================

DFNPC2 DB '=== Passaporte ===$'
DFNPC2B DB 'Nome: Felipe$'
DFNPC2C DB 'Idade: 23$'
DFNPC2D DB 'Pais: Guaraja$'
DFNPC2E DB '===== NPC =====$'
DFNPC2F DB 'Sou Felipe$'
DFNPC2G DB 'Tenho 23 anos$'
DFNPC2H DB 'Sou de Guaraja$'

;=================================
; NPC 3
;=================================

DFNPC3 DB '=== Passaporte ===$'
DFNPC3B DB 'Nome: Arthur$'
DFNPC3C DB 'Edade: 20$'
DFNPC3D DB 'Pais: Grande Cubata$'
DFNPC3E DB '===== NPC =====$'
DFNPC3F DB 'Sou Arthur$'
DFNPC3G DB 'Tenho 20 anos$'
DFNPC3H DB 'Sou de Grande Cubata$'

;=================================
; NPC 4
;=================================

DFNPC4 DB '=== Passaporte ===$'
DFNPC4B DB 'Nome: Nicolas$'
DFNPC4C DB 'Nome Social: Gabriela$'
DFNPC4D DB 'Idade: 21$'
DFNPC4E DB 'Pais: Grande Cubata$'
DFNPC4F DB '===== NPC =====$'
DFNPC4G DB 'Sou Gabriela$'
DFNPC4H DB 'Tenho 21 anos$'
DFNPC4I DB 'Sou de Grande Cubata$'

;=================================
; NPC 5
;=================================

DFNPC5 DB '=== Passaporte ===$'
DFNPC5B DB 'Nome: Daniel$'
DFNPC5C DB 'Idade: 21$'
DFNPC5D DB 'Pais: Mais de um Santo$'
DFNPC5E DB '===== NPC =====$'
DFNPC5F DB 'Sou Daniel$'
DFNPC5G DB 'Tenho 21 anos$'
DFNPC5H DB 'Sou de Mais de um Santo$'

;=================================
; NPC 6
;=================================

DFNPC6 DB 'Regras: idade minima 28$'
DFNPC6B DB 'Proibir turistas$'
DFNPC6C DB '=== Passaporte ===$'
DFNPC6D DB 'Nome: Cleiton$'
DFNPC6E DB 'Idade: 35$'
DFNPC6F DB 'Pais: Itanhanem$'
DFNPC6G DB '===== NPC =====$'
DFNPC6H DB 'Sou Claiton$'
DFNPC6I DB 'Tenho 21 anos$'
DFNPC6J DB 'Venho para passear$'

;=================================
; NPC 7
;=================================

DFNPC7 DB '=== Passaporte ===$'
DFNPC7B DB 'Nome: Enzo$'
DFNPC7C DB 'Idade: 20$'
DFNPC7D DB 'Pais: Mais de um Santo$'
DFNPC7E DB '===== NPC =====$'
DFNPC7F DB 'Sou Enzo$'
DFNPC7G DB 'Tenho 21 anos$'
DFNPC7H DB 'Venho para trabalhar$'

;=================================
; NPC 8
;=================================

DFNPC8 DB '=== Passaporte ===$'
DFNPC8B DB 'Nome: Marcelinho$'
DFNPC8C DB 'Idade: 29$'
DFNPC8D DB 'Pais: Chainim Box$'
DFNPC8E DB '===== NPC =====$'
DFNPC8F DB 'Sou Marcelinho$'
DFNPC8G DB 'Tenho 29 anos$'
DFNPC8H DB 'Venho vender produtos$'

;=================================
; NPC 9
;=================================

DFNPC9 DB '=== Passaporti ===$'
DFNPC9B DB 'Nome: Jeff$'
DFNPC9C DB 'Idade: 55$'
DFNPC9D DB 'Pais: Ilha privada$'
DFNPC9E DB '===== NPC =====$'
DFNPC9F DB 'Sou Jeff$'
DFNPC9G DB 'Tenho 55 anos$'
DFNPC9H DB 'Venho recrutar pessoas$'

;=================================
; NPC 10
;=================================

DFNPC10 DB '=== Passaporte ===$'
DFNPC10B DB 'Nome: Luiz I. da Silva$'
DFNPC10C DB 'Idade: 74$'
DFNPC10D DB 'Pais: Detrito Federal$'
DFNPC10E DB '===== NPC =====$'
DFNPC10F DB 'Sou Luiz$'
DFNPC10G DB 'Tenho 74 anos$'
DFNPC10H DB 'Ganhar votos$'

	;=================================
	; VETOR NPCS
	;=================================

	DOCS DW OFFSET DFNPC1
		DW OFFSET DFNPC2
		DW OFFSET DFNPC3
		DW OFFSET DFNPC4
		DW OFFSET DFNPC5
		DW OFFSET DFNPC6
		DW OFFSET DFNPC7
		DW OFFSET DFNPC8
		DW OFFSET DFNPC9
		DW OFFSET DFNPC10

	;=================================
	; RESPOSTAS
	;=================================

	RESPS DB 1
		DB 0
		DB 0
		DB 1
		DB 1
		DB 0
		DB 0
		DB 1
		DB 0
		DB 1

	;=================================
	; MSGS
	;=================================

	TXT_DECISION DB 'Esquerda=ACEITAR Direita=REJEITAR$'
	TXT_OK       DB 'CORRETO$'
	TXT_BAD      DB 'ERROU$'
	TXT_WIN      DB 'VOCE SOBREVIVEU$'


;=======================================================================================
;=======================================================================================


CODESEG
;{

INCLUDE "Text.asm"
INCLUDE "Graphics.asm"
INCLUDE "Game.asm"
INCLUDE "MainMenu.asm"
INCLUDE "Colors.asm"

PROC PRINT_BUTTONS
;{
    PUSH AX

    ;ACEITAR
    PUSH 10
    PUSH 22
    CALL TEXT_SET_CURPOS

    PUSH [WORD PTR BTN_COLORS]
    PUSH OFFSET STR_ACCEPT
    CALL TEXT_COLORSTR

    ;REJEITAR
    PUSH 25
    PUSH 22
    CALL TEXT_SET_CURPOS

    PUSH [WORD PTR BTN_COLORS+2]
    PUSH OFFSET STR_REJECT
    CALL TEXT_COLORSTR

    POP AX
RET
;}
ENDP PRINT_BUTTONS

PROC BUTTON_INPUT
;{

    PUSH AX

    ;nova tecla?
    MOV AH,1
    INT 16h
    JZ @@END

    ;lê tecla
    MOV AH,0
    INT 16h

    ;seta esquerda
    CMP AH,4Bh
    JZ @@LEFT

    ;seta direita
    CMP AH,4Dh
    JZ @@RIGHT

    ;enter
    CMP AH,1Ch
    JZ @@CLICK

    JMP @@END


@@LEFT:
    MOV [BTN_PTR],0
    JMP @@UPDATE


@@RIGHT:
    MOV [BTN_PTR],1
    JMP @@UPDATE


@@UPDATE:

    ;reset cores
    MOV [WORD PTR BTN_COLORS],WHITE
    MOV [WORD PTR BTN_COLORS+2],WHITE

    ;qual botão fica verde
    CMP [BTN_PTR],0
    JZ @@ACC

    MOV [WORD PTR BTN_COLORS+2],GREEN
    JMP @@END


@@ACC:
    MOV [WORD PTR BTN_COLORS],GREEN
    JMP @@END


@@CLICK:

    CMP [BTN_PTR],0
    JZ @@ACCEPT

    JMP @@REJECT


@@ACCEPT:
    MOV [CURRENT_RESP],1
    JMP @@END


@@REJECT:
    MOV [CURRENT_RESP],0


@@END:
    POP AX
RET
;}
ENDP BUTTON_INPUT


;=============================================================
;=============================================================

	;CODE:
		Start:

		;INIT{
			;Data:
			MOV AX, @data
			MOV DS, AX

			call graphics_Mode   ; etabilishing the graphics mood
			                     ; procedure location in Grapics.asm

		;}


	CALL MAINMENU

	@@MAIN_LOOP:

		CALL BUTTON_INPUT
		CALL PRINT_BUTTONS

		JMP @@MAIN_LOOP

		Exit:
		call text_Mode

		MOV AX, 4C00H
		INT 21H

	END Start

