#include "constants/scrcmd.h"
	.include "asm/macros/script.inc"

	.rodata

	scrdef scr_seq_0161_0046 ; 000
	scrdef scr_seq_0161_0012 ; 001
	scrdef scr_seq_0161_0120 ; 002
	scrdef scr_seq_0161_0098 ; 003
	scrdef_end

scr_seq_0161_0012:
	comparevartovalue VAR_UNK_40CB, 7
	gotoif ge, scr_seq_0161_003C
	comparevartovalue VAR_UNK_40CB, 4
	gotoif gt, scr_seq_0161_0036
	setflag FLAG_UNK_218
	goto scr_seq_0161_003A

scr_seq_0161_0036:
	clearflag FLAG_UNK_218
scr_seq_0161_003A:
	end

scr_seq_0161_003C:
	setflag FLAG_UNK_216
	setflag FLAG_UNK_218
	end

scr_seq_0161_0046:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	comparevartovalue VAR_UNK_40CB, 3
	gotoif gt, scr_seq_0161_006E
	apply_movement 0, scr_seq_0161_0090
	wait_movement
	npc_msg 1
	goto scr_seq_0161_0087

scr_seq_0161_006E:
	comparevartovalue VAR_UNK_40CB, 4
	gotoif ne, scr_seq_0161_0084
	npc_msg 0
	goto scr_seq_0161_0087

scr_seq_0161_0084:
	npc_msg 7
scr_seq_0161_0087:
	waitbutton
	closemsg
	releaseall
	end

scr_seq_0161_008F:
	.byte 0x00

scr_seq_0161_0090:
	.short 49, 2
	.short 254, 0
scr_seq_0161_0098:
	scrcmd_609
	lockall
	apply_movement 4, scr_seq_0161_0110
	wait_movement
	gender_msgbox 2, 3
	closemsg
	apply_movement 0, scr_seq_0161_0118
	wait_movement
	buffer_players_name 0
	gender_msgbox 4, 5
	setvar VAR_SPECIAL_x8004, 233
	setvar VAR_SPECIAL_x8005, 1
	hasspaceforitem VAR_SPECIAL_x8004, VAR_SPECIAL_x8005, VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 0
	gotoif eq, scr_seq_0161_0103
	callstd 2033
scr_seq_0161_00E2:
	setvar VAR_UNK_40CB, 6
	setflag FLAG_UNK_22A
	play_se SEQ_SE_DP_PINPON
	wait_se SEQ_SE_DP_PINPON
	setflag FLAG_UNK_0EB
	npc_msg 6
	waitbutton
	closemsg
	releaseall
	end

scr_seq_0161_0103:
	callstd 2009
	closemsg
	goto scr_seq_0161_00E2

scr_seq_0161_010F:
	.byte 0x00

scr_seq_0161_0110:
	.short 51, 3
	.short 254, 0

scr_seq_0161_0118:
	.short 9, 1
	.short 254, 0
scr_seq_0161_0120:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 8
	waitbutton
	closemsg
	releaseall
	end
	.balign 4, 0
