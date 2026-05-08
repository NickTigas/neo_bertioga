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


;=======================================================================================
;=======================================================================================


CODESEG
;{
	;PROCEDURES
	;{


		INCLUDE "Text.asm"
		INCLUDE "Graphics.asm" ; responsible for printing everything
		INCLUDE "Game.asm"


		INCLUDE "MainMenu.asm" ;code related to main menu
	;}


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


		Exit:
		call text_Mode

		MOV AX, 4C00H
		INT 21H

	END Start

