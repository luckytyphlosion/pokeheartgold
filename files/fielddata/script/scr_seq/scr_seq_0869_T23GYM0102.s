#include "constants/scrcmd.h"
	.include "asm/macros/script.inc"

	.rodata

	scrdef scr_seq_0869_0190 ; 000
	scrdef scr_seq_0869_00D3 ; 001
	scrdef scr_seq_0869_0192 ; 002
	scrdef scr_seq_0869_0197 ; 003
	scrdef scr_seq_0869_019C ; 004
	scrdef scr_seq_0869_01A1 ; 005
	scrdef scr_seq_0869_01A6 ; 006
	scrdef scr_seq_0869_01AB ; 007
	scrdef scr_seq_0869_01B0 ; 008
	scrdef scr_seq_0869_01B5 ; 009
	scrdef scr_seq_0869_01BA ; 010
	scrdef scr_seq_0869_01BF ; 011
	scrdef scr_seq_0869_01C4 ; 012
	scrdef scr_seq_0869_01C9 ; 013
	scrdef scr_seq_0869_01CE ; 014
	scrdef scr_seq_0869_01D3 ; 015
	scrdef scr_seq_0869_0046 ; 016
	scrdef_end

scr_seq_0869_0046:
	scrcmd_326
	scrcmd_142 34, 16385
	comparevartovalue VAR_TEMP_x4001, 0
	gotoif ne, scr_seq_0869_00CD
	checkflag FLAG_UNK_964
	gotoif TRUE, scr_seq_0869_006C
	clearflag FLAG_UNK_2EA
	end

scr_seq_0869_006C:
	scrcmd_147 34, 16385
	comparevartovalue VAR_TEMP_x4001, 1
	gotoif eq, scr_seq_0869_0096
	scrcmd_484 VAR_TEMP_x4002
	comparevartovalue VAR_TEMP_x4002, 4
	gotoif ne, scr_seq_0869_0096
	setflag FLAG_UNK_2EA
	end

scr_seq_0869_0096:
	scrcmd_484 VAR_TEMP_x4001
	comparevartovalue VAR_TEMP_x4001, 1
	gotoif eq, scr_seq_0869_00C7
	comparevartovalue VAR_TEMP_x4001, 3
	gotoif eq, scr_seq_0869_00C7
	comparevartovalue VAR_TEMP_x4001, 5
	gotoif eq, scr_seq_0869_00C7
	clearflag FLAG_UNK_2EA
	end

scr_seq_0869_00C7:
	setflag FLAG_UNK_2EA
	end

scr_seq_0869_00CD:
	setflag FLAG_UNK_2EA
	end

scr_seq_0869_00D3:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	scrcmd_294 1, VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif eq, scr_seq_0869_017A
	npc_msg 0
	closemsg
	trainer_battle 21, 0, 0, 0
	scrcmd_220 VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 0
	gotoif eq, scr_seq_0869_0174
	npc_msg 1
	buffer_players_name 0
	npc_msg 2
	play_fanfare SEQ_ME_BADGE
	wait_fanfare
	scrcmd_295 1
	settrainerflag 68
	settrainerflag 67
	settrainerflag 69
	settrainerflag 10
	scrcmd_515 22
	npc_msg 3
scr_seq_0869_0136:
	setvar VAR_SPECIAL_x8004, 416
	setvar VAR_SPECIAL_x8005, 1
	hasspaceforitem VAR_SPECIAL_x8004, VAR_SPECIAL_x8005, VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 0
	gotoif eq, scr_seq_0869_016A
	callstd 2033
	setflag FLAG_UNK_07F
	npc_msg 5
	waitbutton
	closemsg
	releaseall
	end

scr_seq_0869_016A:
	callstd 2009
	closemsg
	releaseall
	end

scr_seq_0869_0174:
	scrcmd_219
	releaseall
	end

scr_seq_0869_017A:
	checkflag FLAG_UNK_07F
	gotoif FALSE, scr_seq_0869_0136
	npc_msg 6
	waitbutton
	closemsg
	releaseall
	end

scr_seq_0869_0190:
	end

scr_seq_0869_0192:
	scrcmd_327 0
	end

scr_seq_0869_0197:
	scrcmd_327 1
	end

scr_seq_0869_019C:
	scrcmd_327 2
	end

scr_seq_0869_01A1:
	scrcmd_327 3
	end

scr_seq_0869_01A6:
	scrcmd_327 4
	end

scr_seq_0869_01AB:
	scrcmd_327 5
	end

scr_seq_0869_01B0:
	scrcmd_327 6
	end

scr_seq_0869_01B5:
	scrcmd_327 7
	end

scr_seq_0869_01BA:
	scrcmd_327 8
	end

scr_seq_0869_01BF:
	scrcmd_327 9
	end

scr_seq_0869_01C4:
	scrcmd_327 10
	end

scr_seq_0869_01C9:
	scrcmd_327 11
	end

scr_seq_0869_01CE:
	scrcmd_328 0
	end

scr_seq_0869_01D3:
	scrcmd_328 1
	end
	.balign 4, 0
