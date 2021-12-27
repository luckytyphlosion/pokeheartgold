#include "constants/scrcmd.h"
	.include "asm/macros/script.inc"

	.rodata

	scrdef scr_seq_0018_000E ; 000
	scrdef scr_seq_0018_0025 ; 001
	scrdef scr_seq_0018_013C ; 002
	scrdef_end

scr_seq_0018_000E:
	clearflag FLAG_UNK_1A3
	checkflag FLAG_UNK_078
	gotoif TRUE, scr_seq_0018_001F
	end

scr_seq_0018_001F:
	setflag FLAG_UNK_1A3
	end

scr_seq_0018_0025:
	scrcmd_609
	lockall
	setvar VAR_UNK_40A4, 1
	apply_movement 255, scr_seq_0018_00B4
	wait_movement
	get_player_coords VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	scrcmd_102 VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	apply_movement 241, scr_seq_0018_00C0
	wait_movement
	apply_movement 3, scr_seq_0018_00D0
	wait_movement
	npc_msg 0
	closemsg
	wait 15, VAR_SPECIAL_x800C
	callstd 2070
	scrcmd_191 0
	apply_movement 6, scr_seq_0018_00D8
	wait_movement
	npc_msg 1
	closemsg
	wait 15, VAR_SPECIAL_x800C
	scrcmd_191 0
	npc_msg 2
	scrcmd_049
	closemsg
	play_se SEQ_SE_DP_KAIDAN2
	apply_movement 6, scr_seq_0018_00E0
	wait_movement
	hide_person 6
	setflag FLAG_UNK_078
	callstd 2071
	apply_movement 241, scr_seq_0018_00C8
	wait_movement
	scrcmd_103
	releaseall
	end


scr_seq_0018_00B4:
	.short 75, 1
	.short 63, 1
	.short 254, 0

scr_seq_0018_00C0:
	.short 12, 5
	.short 254, 0

scr_seq_0018_00C8:
	.short 13, 5
	.short 254, 0

scr_seq_0018_00D0:
	.short 33, 2
	.short 254, 0

scr_seq_0018_00D8:
	.short 13, 1
	.short 254, 0

scr_seq_0018_00E0:
	.short 2, 4
	.short 0, 4
	.short 3, 4
	.short 1, 4
	.short 2, 2
	.short 0, 2
	.short 3, 2
	.short 1, 2
	.short 2, 2
	.short 0, 2
	.short 3, 2
	.short 1, 2
	.short 2, 1
	.short 0, 1
	.short 3, 1
	.short 1, 1
	.short 2, 1
	.short 0, 1
	.short 3, 1
	.short 1, 1
	.short 2, 1
	.short 0, 1
	.short 254, 0
scr_seq_0018_013C:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	checkflag FLAG_UNK_076
	gotoif TRUE, scr_seq_0018_0197
	npc_msg 3
	closemsg
	trainer_battle 290, 0, 0, 0
	scrcmd_220 VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 0
	gotoif eq, scr_seq_0018_01A2
	npc_msg 4
	setvar VAR_SPECIAL_x8004, 397
	setvar VAR_SPECIAL_x8005, 1
	callstd 2033
	setflag FLAG_UNK_076
	setflag FLAG_UNK_2E3
	clearflag FLAG_UNK_2E4
	npc_msg 5
	waitbutton
	closemsg
	releaseall
	end

scr_seq_0018_0197:
	npc_msg 6
	waitbutton
	closemsg
	releaseall
	end

scr_seq_0018_01A2:
	scrcmd_219
	releaseall
	end
	.balign 4, 0
