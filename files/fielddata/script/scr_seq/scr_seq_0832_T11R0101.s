#include "constants/scrcmd.h"
	.include "asm/macros/script.inc"

	.rodata

	scrdef scr_seq_0832_0894 ; 000
	scrdef scr_seq_0832_08BD ; 001
	scrdef scr_seq_0832_08D0 ; 002
	scrdef scr_seq_0832_0052 ; 003
	scrdef scr_seq_0832_0264 ; 004
	scrdef scr_seq_0832_02C7 ; 005
	scrdef scr_seq_0832_032A ; 006
	scrdef scr_seq_0832_038D ; 007
	scrdef scr_seq_0832_03F0 ; 008
	scrdef scr_seq_0832_0453 ; 009
	scrdef scr_seq_0832_04B6 ; 010
	scrdef scr_seq_0832_0519 ; 011
	scrdef scr_seq_0832_057C ; 012
	scrdef scr_seq_0832_05DF ; 013
	scrdef scr_seq_0832_0642 ; 014
	scrdef scr_seq_0832_06A5 ; 015
	scrdef scr_seq_0832_0708 ; 016
	scrdef scr_seq_0832_076B ; 017
	scrdef scr_seq_0832_07CE ; 018
	scrdef scr_seq_0832_0831 ; 019
	scrdef_end

scr_seq_0832_0052:
	scrcmd_142 17, 16384
	scrcmd_142 26, 16385
	scrcmd_142 27, 16386
	scrcmd_142 28, 16387
	scrcmd_142 29, 16388
	scrcmd_142 30, 16389
	scrcmd_142 31, 16390
	scrcmd_142 32, 16391
	scrcmd_142 33, 16392
	scrcmd_142 34, 16393
	scrcmd_142 35, 16394
	scrcmd_142 18, 16395
	scrcmd_142 36, 16396
	scrcmd_142 37, 16397
	scrcmd_142 38, 16398
	scrcmd_142 39, 16399
	comparevartovalue VAR_TEMP_x4003, 0
	gotoif ne, scr_seq_0832_00C9
	setflag FLAG_UNK_2B8
	goto scr_seq_0832_00CD

scr_seq_0832_00C9:
	clearflag FLAG_UNK_2B8
scr_seq_0832_00CD:
	comparevartovalue VAR_TEMP_x4000, 0
	gotoif ne, scr_seq_0832_00E4
	setflag FLAG_UNK_2B5
	goto scr_seq_0832_00E8

scr_seq_0832_00E4:
	clearflag FLAG_UNK_2B5
scr_seq_0832_00E8:
	comparevartovalue VAR_TEMP_x4001, 0
	gotoif ne, scr_seq_0832_00FF
	setflag FLAG_UNK_2B6
	goto scr_seq_0832_0103

scr_seq_0832_00FF:
	clearflag FLAG_UNK_2B6
scr_seq_0832_0103:
	comparevartovalue VAR_TEMP_x4002, 0
	gotoif ne, scr_seq_0832_011A
	setflag FLAG_UNK_2B7
	goto scr_seq_0832_011E

scr_seq_0832_011A:
	clearflag FLAG_UNK_2B7
scr_seq_0832_011E:
	comparevartovalue VAR_TEMP_x4004, 0
	gotoif ne, scr_seq_0832_0135
	setflag FLAG_UNK_2B9
	goto scr_seq_0832_0139

scr_seq_0832_0135:
	clearflag FLAG_UNK_2B9
scr_seq_0832_0139:
	comparevartovalue VAR_TEMP_x4005, 0
	gotoif ne, scr_seq_0832_0150
	setflag FLAG_UNK_2BA
	goto scr_seq_0832_0154

scr_seq_0832_0150:
	clearflag FLAG_UNK_2BA
scr_seq_0832_0154:
	comparevartovalue VAR_TEMP_x4006, 0
	gotoif ne, scr_seq_0832_016B
	setflag FLAG_UNK_2BB
	goto scr_seq_0832_016F

scr_seq_0832_016B:
	clearflag FLAG_UNK_2BB
scr_seq_0832_016F:
	comparevartovalue VAR_TEMP_x4007, 0
	gotoif ne, scr_seq_0832_0186
	setflag FLAG_UNK_2BC
	goto scr_seq_0832_018A

scr_seq_0832_0186:
	clearflag FLAG_UNK_2BC
scr_seq_0832_018A:
	comparevartovalue VAR_TEMP_x4008, 0
	gotoif ne, scr_seq_0832_01A1
	setflag FLAG_UNK_2BD
	goto scr_seq_0832_01A5

scr_seq_0832_01A1:
	clearflag FLAG_UNK_2BD
scr_seq_0832_01A5:
	comparevartovalue VAR_TEMP_x4009, 0
	gotoif ne, scr_seq_0832_01BC
	setflag FLAG_UNK_2BE
	goto scr_seq_0832_01C0

scr_seq_0832_01BC:
	clearflag FLAG_UNK_2BE
scr_seq_0832_01C0:
	comparevartovalue VAR_TEMP_x400A, 0
	gotoif ne, scr_seq_0832_01D7
	setflag FLAG_UNK_2BF
	goto scr_seq_0832_01DB

scr_seq_0832_01D7:
	clearflag FLAG_UNK_2BF
scr_seq_0832_01DB:
	comparevartovalue VAR_TEMP_x400B, 0
	gotoif ne, scr_seq_0832_01F2
	setflag FLAG_UNK_2C0
	goto scr_seq_0832_01F6

scr_seq_0832_01F2:
	clearflag FLAG_UNK_2C0
scr_seq_0832_01F6:
	comparevartovalue VAR_TEMP_x400C, 0
	gotoif ne, scr_seq_0832_020D
	setflag FLAG_UNK_2C1
	goto scr_seq_0832_0211

scr_seq_0832_020D:
	clearflag FLAG_UNK_2C1
scr_seq_0832_0211:
	comparevartovalue VAR_TEMP_x400D, 0
	gotoif ne, scr_seq_0832_0228
	setflag FLAG_UNK_2C2
	goto scr_seq_0832_022C

scr_seq_0832_0228:
	clearflag FLAG_UNK_2C2
scr_seq_0832_022C:
	comparevartovalue VAR_TEMP_x400E, 0
	gotoif ne, scr_seq_0832_0243
	setflag FLAG_UNK_2C3
	goto scr_seq_0832_0247

scr_seq_0832_0243:
	clearflag FLAG_UNK_2C3
scr_seq_0832_0247:
	comparevartovalue VAR_TEMP_x400F, 0
	gotoif ne, scr_seq_0832_025E
	setflag FLAG_UNK_2C4
	goto scr_seq_0832_0262

scr_seq_0832_025E:
	clearflag FLAG_UNK_2C4
scr_seq_0832_0262:
	end

scr_seq_0832_0264:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 8
	closemsg
	trainer_battle 714, 0, 0, 0
	scrcmd_220 VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 0
	gotoif eq, scr_seq_0832_02C1
	npc_msg 9
	waitbutton
	closemsg
	fade_screen 6, 1, 0, 0
	wait_fade
	scrcmd_462 17
	setflag FLAG_UNK_2B5
	hide_person 1
	play_se SEQ_SE_DP_KAIDAN2
	wait_se SEQ_SE_DP_KAIDAN2
	fade_screen 6, 1, 1, 0
	wait_fade
	releaseall
	end

scr_seq_0832_02C1:
	scrcmd_219
	releaseall
	end

scr_seq_0832_02C7:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 30
	closemsg
	trainer_battle 724, 0, 0, 0
	scrcmd_220 VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 0
	gotoif eq, scr_seq_0832_0324
	npc_msg 31
	waitbutton
	closemsg
	fade_screen 6, 1, 0, 0
	wait_fade
	scrcmd_462 26
	setflag FLAG_UNK_2B6
	hide_person 2
	play_se SEQ_SE_DP_KAIDAN2
	wait_se SEQ_SE_DP_KAIDAN2
	fade_screen 6, 1, 1, 0
	wait_fade
	releaseall
	end

scr_seq_0832_0324:
	scrcmd_219
	releaseall
	end

scr_seq_0832_032A:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 18
	closemsg
	trainer_battle 719, 0, 0, 0
	scrcmd_220 VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 0
	gotoif eq, scr_seq_0832_0387
	npc_msg 19
	waitbutton
	closemsg
	fade_screen 6, 1, 0, 0
	wait_fade
	scrcmd_462 27
	setflag FLAG_UNK_2B7
	hide_person 3
	play_se SEQ_SE_DP_KAIDAN2
	wait_se SEQ_SE_DP_KAIDAN2
	fade_screen 6, 1, 1, 0
	wait_fade
	releaseall
	end

scr_seq_0832_0387:
	scrcmd_219
	releaseall
	end

scr_seq_0832_038D:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 24
	closemsg
	trainer_battle 723, 0, 0, 0
	scrcmd_220 VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 0
	gotoif eq, scr_seq_0832_03EA
	npc_msg 25
	waitbutton
	closemsg
	fade_screen 6, 1, 0, 0
	wait_fade
	scrcmd_462 28
	setflag FLAG_UNK_2B8
	hide_person 4
	play_se SEQ_SE_DP_KAIDAN2
	wait_se SEQ_SE_DP_KAIDAN2
	fade_screen 6, 1, 1, 0
	wait_fade
	releaseall
	end

scr_seq_0832_03EA:
	scrcmd_219
	releaseall
	end

scr_seq_0832_03F0:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 26
	closemsg
	trainer_battle 721, 0, 0, 0
	scrcmd_220 VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 0
	gotoif eq, scr_seq_0832_044D
	npc_msg 27
	waitbutton
	closemsg
	fade_screen 6, 1, 0, 0
	wait_fade
	scrcmd_462 29
	setflag FLAG_UNK_2B9
	hide_person 5
	play_se SEQ_SE_DP_KAIDAN2
	wait_se SEQ_SE_DP_KAIDAN2
	fade_screen 6, 1, 1, 0
	wait_fade
	releaseall
	end

scr_seq_0832_044D:
	scrcmd_219
	releaseall
	end

scr_seq_0832_0453:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 32
	closemsg
	trainer_battle 726, 0, 0, 0
	scrcmd_220 VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 0
	gotoif eq, scr_seq_0832_04B0
	npc_msg 33
	waitbutton
	closemsg
	fade_screen 6, 1, 0, 0
	wait_fade
	scrcmd_462 30
	setflag FLAG_UNK_2BA
	hide_person 16
	play_se SEQ_SE_DP_KAIDAN2
	wait_se SEQ_SE_DP_KAIDAN2
	fade_screen 6, 1, 1, 0
	wait_fade
	releaseall
	end

scr_seq_0832_04B0:
	scrcmd_219
	releaseall
	end

scr_seq_0832_04B6:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 34
	closemsg
	trainer_battle 727, 0, 0, 0
	scrcmd_220 VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 0
	gotoif eq, scr_seq_0832_0513
	npc_msg 35
	waitbutton
	closemsg
	fade_screen 6, 1, 0, 0
	wait_fade
	scrcmd_462 31
	setflag FLAG_UNK_2BB
	hide_person 6
	play_se SEQ_SE_DP_KAIDAN2
	wait_se SEQ_SE_DP_KAIDAN2
	fade_screen 6, 1, 1, 0
	wait_fade
	releaseall
	end

scr_seq_0832_0513:
	scrcmd_219
	releaseall
	end

scr_seq_0832_0519:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 10
	closemsg
	trainer_battle 718, 0, 0, 0
	scrcmd_220 VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 0
	gotoif eq, scr_seq_0832_0576
	npc_msg 11
	waitbutton
	closemsg
	fade_screen 6, 1, 0, 0
	wait_fade
	scrcmd_462 32
	setflag FLAG_UNK_2BC
	hide_person 7
	play_se SEQ_SE_DP_KAIDAN2
	wait_se SEQ_SE_DP_KAIDAN2
	fade_screen 6, 1, 1, 0
	wait_fade
	releaseall
	end

scr_seq_0832_0576:
	scrcmd_219
	releaseall
	end

scr_seq_0832_057C:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 28
	closemsg
	trainer_battle 720, 0, 0, 0
	scrcmd_220 VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 0
	gotoif eq, scr_seq_0832_05D9
	npc_msg 29
	waitbutton
	closemsg
	fade_screen 6, 1, 0, 0
	wait_fade
	scrcmd_462 33
	setflag FLAG_UNK_2BD
	hide_person 8
	play_se SEQ_SE_DP_KAIDAN2
	wait_se SEQ_SE_DP_KAIDAN2
	fade_screen 6, 1, 1, 0
	wait_fade
	releaseall
	end

scr_seq_0832_05D9:
	scrcmd_219
	releaseall
	end

scr_seq_0832_05DF:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 6
	closemsg
	trainer_battle 713, 0, 0, 0
	scrcmd_220 VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 0
	gotoif eq, scr_seq_0832_063C
	npc_msg 7
	waitbutton
	closemsg
	fade_screen 6, 1, 0, 0
	wait_fade
	scrcmd_462 34
	setflag FLAG_UNK_2BE
	hide_person 9
	play_se SEQ_SE_DP_KAIDAN2
	wait_se SEQ_SE_DP_KAIDAN2
	fade_screen 6, 1, 1, 0
	wait_fade
	releaseall
	end

scr_seq_0832_063C:
	scrcmd_219
	releaseall
	end

scr_seq_0832_0642:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 22
	closemsg
	trainer_battle 725, 0, 0, 0
	scrcmd_220 VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 0
	gotoif eq, scr_seq_0832_069F
	npc_msg 23
	waitbutton
	closemsg
	fade_screen 6, 1, 0, 0
	wait_fade
	scrcmd_462 35
	setflag FLAG_UNK_2BF
	hide_person 10
	play_se SEQ_SE_DP_KAIDAN2
	wait_se SEQ_SE_DP_KAIDAN2
	fade_screen 6, 1, 1, 0
	wait_fade
	releaseall
	end

scr_seq_0832_069F:
	scrcmd_219
	releaseall
	end

scr_seq_0832_06A5:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 4
	closemsg
	trainer_battle 712, 0, 0, 0
	scrcmd_220 VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 0
	gotoif eq, scr_seq_0832_0702
	npc_msg 5
	waitbutton
	closemsg
	fade_screen 6, 1, 0, 0
	wait_fade
	scrcmd_462 18
	setflag FLAG_UNK_2C0
	hide_person 11
	play_se SEQ_SE_DP_KAIDAN2
	wait_se SEQ_SE_DP_KAIDAN2
	fade_screen 6, 1, 1, 0
	wait_fade
	releaseall
	end

scr_seq_0832_0702:
	scrcmd_219
	releaseall
	end

scr_seq_0832_0708:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 20
	closemsg
	trainer_battle 722, 0, 0, 0
	scrcmd_220 VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 0
	gotoif eq, scr_seq_0832_0765
	npc_msg 21
	waitbutton
	closemsg
	fade_screen 6, 1, 0, 0
	wait_fade
	scrcmd_462 36
	setflag FLAG_UNK_2C1
	hide_person 12
	play_se SEQ_SE_DP_KAIDAN2
	wait_se SEQ_SE_DP_KAIDAN2
	fade_screen 6, 1, 1, 0
	wait_fade
	releaseall
	end

scr_seq_0832_0765:
	scrcmd_219
	releaseall
	end

scr_seq_0832_076B:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 14
	closemsg
	trainer_battle 715, 0, 0, 0
	scrcmd_220 VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 0
	gotoif eq, scr_seq_0832_07C8
	npc_msg 15
	waitbutton
	closemsg
	fade_screen 6, 1, 0, 0
	wait_fade
	scrcmd_462 37
	setflag FLAG_UNK_2C2
	hide_person 13
	play_se SEQ_SE_DP_KAIDAN2
	wait_se SEQ_SE_DP_KAIDAN2
	fade_screen 6, 1, 1, 0
	wait_fade
	releaseall
	end

scr_seq_0832_07C8:
	scrcmd_219
	releaseall
	end

scr_seq_0832_07CE:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 12
	closemsg
	trainer_battle 717, 0, 0, 0
	scrcmd_220 VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 0
	gotoif eq, scr_seq_0832_082B
	npc_msg 13
	waitbutton
	closemsg
	fade_screen 6, 1, 0, 0
	wait_fade
	scrcmd_462 38
	setflag FLAG_UNK_2C3
	hide_person 14
	play_se SEQ_SE_DP_KAIDAN2
	wait_se SEQ_SE_DP_KAIDAN2
	fade_screen 6, 1, 1, 0
	wait_fade
	releaseall
	end

scr_seq_0832_082B:
	scrcmd_219
	releaseall
	end

scr_seq_0832_0831:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 16
	closemsg
	trainer_battle 716, 0, 0, 0
	scrcmd_220 VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 0
	gotoif eq, scr_seq_0832_088E
	npc_msg 17
	waitbutton
	closemsg
	fade_screen 6, 1, 0, 0
	wait_fade
	scrcmd_462 39
	setflag FLAG_UNK_2C4
	hide_person 15
	play_se SEQ_SE_DP_KAIDAN2
	wait_se SEQ_SE_DP_KAIDAN2
	fade_screen 6, 1, 1, 0
	wait_fade
	releaseall
	end

scr_seq_0832_088E:
	scrcmd_219
	releaseall
	end

scr_seq_0832_0894:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	checkflag FLAG_UNK_10D
	gotoif TRUE, scr_seq_0832_08B2
	npc_msg 0
	waitbutton
	closemsg
	releaseall
	end

scr_seq_0832_08B2:
	npc_msg 1
	waitbutton
	closemsg
	releaseall
	end

scr_seq_0832_08BD:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 2
	waitbutton
	closemsg
	releaseall
	end

scr_seq_0832_08D0:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 3
	waitbutton
	closemsg
	releaseall
	end
	.balign 4, 0
