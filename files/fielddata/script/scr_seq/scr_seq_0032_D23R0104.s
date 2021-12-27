#include "constants/scrcmd.h"
	.include "asm/macros/script.inc"

	.rodata

	scrdef scr_seq_0032_0026 ; 000
	scrdef scr_seq_0032_008B ; 001
	scrdef scr_seq_0032_009E ; 002
	scrdef scr_seq_0032_00B1 ; 003
	scrdef scr_seq_0032_00C4 ; 004
	scrdef scr_seq_0032_0148 ; 005
	scrdef scr_seq_0032_0163 ; 006
	scrdef scr_seq_0032_018C ; 007
	scrdef scr_seq_0032_0058 ; 008
	scrdef_end

scr_seq_0032_0026:
	setflag FLAG_UNK_1B7
	setflag FLAG_UNK_1B8
	comparevartovalue VAR_UNK_4077, 4
	gotoif ne, scr_seq_0032_0045
	clearflag FLAG_UNK_1B7
	goto scr_seq_0032_0056

scr_seq_0032_0045:
	comparevartovalue VAR_UNK_4077, 5
	gotoif ne, scr_seq_0032_0056
	clearflag FLAG_UNK_1B8
scr_seq_0032_0056:
	end

scr_seq_0032_0058:
	comparevartovalue VAR_UNK_4077, 4
	gotoif ne, scr_seq_0032_0089
	show_person_at 4, 18, 1, 12, 3
	show_person_at 5, 19, 1, 12, 1
	show_person_at 7, 20, 1, 12, 1
scr_seq_0032_0089:
	end

scr_seq_0032_008B:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 8
	waitbutton
	closemsg
	releaseall
	end

scr_seq_0032_009E:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 9
	waitbutton
	closemsg
	releaseall
	end

scr_seq_0032_00B1:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 0
	waitbutton
	closemsg
	releaseall
	end

scr_seq_0032_00C4:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	comparevartovalue VAR_UNK_4077, 4
	gotoif ne, scr_seq_0032_00E2
	npc_msg 1
	goto scr_seq_0032_00E8

scr_seq_0032_00E2:
	goto scr_seq_0032_00F0

scr_seq_0032_00E8:
	waitbutton
	closemsg
	releaseall
	end

scr_seq_0032_00F0:
	checkflag FLAG_UNK_091
	gotoif TRUE, scr_seq_0032_013D
	npc_msg 2
	setvar VAR_SPECIAL_x8004, 213
	setvar VAR_SPECIAL_x8005, 1
	hasspaceforitem VAR_SPECIAL_x8004, VAR_SPECIAL_x8005, VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 0
	gotoif eq, scr_seq_0032_0132
	callstd 2033
	npc_msg 4
	waitbutton
	closemsg
	releaseall
	setflag FLAG_UNK_091
	end

scr_seq_0032_0132:
	npc_msg 5
	waitbutton
	closemsg
	releaseall
	end

scr_seq_0032_013D:
	npc_msg 6
	waitbutton
	closemsg
	releaseall
	end

scr_seq_0032_0148:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	scrcmd_076 52, 0
	npc_msg 7
	scrcmd_077
	waitbutton
	closemsg
	releaseall
	end

scr_seq_0032_0163:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	comparevartovalue VAR_UNK_4077, 4
	gotoif ne, scr_seq_0032_0181
	npc_msg 10
	goto scr_seq_0032_0184

scr_seq_0032_0181:
	npc_msg 11
scr_seq_0032_0184:
	waitbutton
	closemsg
	releaseall
	end

scr_seq_0032_018C:
	checktrainerflag 200
	gotoif eq, scr_seq_0032_01F6
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 12
	scrcmd_386 VAR_TEMP_x4000
	comparevartovalue VAR_TEMP_x4000, 2
	gotoif ne, scr_seq_0032_01BF
	apply_movement 2, scr_seq_0032_0210
	goto scr_seq_0032_01C7

scr_seq_0032_01BF:
	apply_movement 2, scr_seq_0032_021C
scr_seq_0032_01C7:
	wait_movement
	npc_msg 13
	closemsg
	trainer_battle 200, 0, 0, 0
	scrcmd_220 VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 0
	gotoif eq, scr_seq_0032_0209
	settrainerflag 200
	npc_msg 14
	waitbutton
	closemsg
	releaseall
	end

scr_seq_0032_01F6:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 14
	waitbutton
	closemsg
	releaseall
	end

scr_seq_0032_0209:
	scrcmd_219
	releaseall
	end

scr_seq_0032_020F:
	.byte 0x00

scr_seq_0032_0210:
	.short 75, 1
	.short 35, 1
	.short 254, 0

scr_seq_0032_021C:
	.short 75, 1
	.short 33, 1
	.short 254, 0
	.balign 4, 0
