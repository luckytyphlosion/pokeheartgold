#include "constants/scrcmd.h"
	.include "asm/macros/script.inc"

	.rodata

	scrdef scr_seq_0059_0069 ; 000
	scrdef scr_seq_0059_007F ; 001
	scrdef scr_seq_0059_000E ; 002
	scrdef_end

scr_seq_0059_000E:
	checkflag FLAG_UNK_189
	gotoif FALSE, scr_seq_0059_001F
	clearflag FLAG_UNK_189
	end

scr_seq_0059_001F:
	scrcmd_294 2, VAR_TEMP_x4000
	comparevartovalue VAR_TEMP_x4000, 0
	gotoif eq, scr_seq_0059_005D
	scrcmd_484 VAR_TEMP_x4000
	comparevartovalue VAR_TEMP_x4000, 1
	gotoif eq, scr_seq_0059_0063
	comparevartovalue VAR_TEMP_x4000, 3
	gotoif eq, scr_seq_0059_0063
	comparevartovalue VAR_TEMP_x4000, 5
	gotoif eq, scr_seq_0059_0063
scr_seq_0059_005D:
	setflag FLAG_UNK_27E
	end

scr_seq_0059_0063:
	clearflag FLAG_UNK_27E
	end

scr_seq_0059_0069:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	buffer_players_name 0
	npc_msg 0
	waitbutton
	closemsg
	releaseall
	end

scr_seq_0059_007F:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	scrcmd_438 2, VAR_SPECIAL_x800C
	scrcmd_440 VAR_SPECIAL_x800C, 0
	scrcmd_746
	getmenuchoice VAR_SPECIAL_x800C
	scrcmd_747
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif eq, scr_seq_0059_0184
	scrcmd_618 VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif eq, scr_seq_0059_0198
	scrcmd_438 2, VAR_SPECIAL_x800C
	scrcmd_440 VAR_SPECIAL_x800C, 1
	closemsg
	scrcmd_602 0
	scrcmd_603
	scrcmd_604 55
	scrcmd_386 VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif ne, scr_seq_0059_00F0
	apply_movement 255, scr_seq_0059_01AC
	goto scr_seq_0059_0123

scr_seq_0059_00F0:
	comparevartovalue VAR_SPECIAL_x800C, 3
	gotoif ne, scr_seq_0059_0113
	apply_movement 255, scr_seq_0059_01CC
	apply_movement 1, scr_seq_0059_01E0
	goto scr_seq_0059_0123

scr_seq_0059_0113:
	apply_movement 255, scr_seq_0059_01B8
	apply_movement 1, scr_seq_0059_01E0
scr_seq_0059_0123:
	wait_movement
	scrcmd_603
	scrcmd_602 1
	scrcmd_604 48
	scrcmd_729 VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif ne, scr_seq_0059_014A
	apply_movement 253, scr_seq_0059_01EC
	wait_movement
scr_seq_0059_014A:
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, 0
	wait_fade
	scrcmd_615 6
	lockall
	fade_screen 6, 1, 1, 0
	wait_fade
	clearflag FLAG_UNK_189
	scrcmd_438 2, VAR_SPECIAL_x800C
	scrcmd_440 VAR_SPECIAL_x800C, 2
	waitbutton
	closemsg
	releaseall
	end

scr_seq_0059_0184:
	scrcmd_438 2, VAR_SPECIAL_x800C
	scrcmd_440 VAR_SPECIAL_x800C, 5
	waitbutton
	closemsg
	releaseall
	end

scr_seq_0059_0198:
	scrcmd_438 2, VAR_SPECIAL_x800C
	scrcmd_440 VAR_SPECIAL_x800C, 3
	waitbutton
	closemsg
	releaseall
	end


scr_seq_0059_01AC:
	.short 12, 3
	.short 33, 1
	.short 254, 0

scr_seq_0059_01B8:
	.short 12, 1
	.short 14, 1
	.short 12, 3
	.short 33, 1
	.short 254, 0

scr_seq_0059_01CC:
	.short 12, 1
	.short 15, 1
	.short 12, 3
	.short 33, 1
	.short 254, 0

scr_seq_0059_01E0:
	.short 63, 1
	.short 32, 1
	.short 254, 0

scr_seq_0059_01EC:
	.short 15, 1
	.short 12, 1
	.short 1, 1
	.short 254, 0
	.balign 4, 0
