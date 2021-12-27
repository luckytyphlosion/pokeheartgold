#include "constants/scrcmd.h"
	.include "asm/macros/script.inc"

	.rodata

	scrdef scr_seq_0741_00AE ; 000
	scrdef scr_seq_0741_00E2 ; 001
	scrdef scr_seq_0741_0108 ; 002
	scrdef scr_seq_0741_0314 ; 003
	scrdef scr_seq_0741_0327 ; 004
	scrdef scr_seq_0741_033E ; 005
	scrdef scr_seq_0741_0353 ; 006
	scrdef scr_seq_0741_0368 ; 007
	scrdef scr_seq_0741_0032 ; 008
	scrdef scr_seq_0741_015C ; 009
	scrdef scr_seq_0741_00F5 ; 010
	scrdef scr_seq_0741_0090 ; 011
	scrdef_end

scr_seq_0741_0032:
	checkflag FLAG_UNK_189
	gotoif FALSE, scr_seq_0741_0043
	clearflag FLAG_UNK_189
	end

scr_seq_0741_0043:
	scrcmd_484 VAR_TEMP_x4000
	comparevartovalue VAR_TEMP_x4000, 3
	gotoif ne, scr_seq_0741_005E
	clearflag FLAG_UNK_27E
	goto scr_seq_0741_0079

scr_seq_0741_005E:
	comparevartovalue VAR_TEMP_x4000, 5
	gotoif ne, scr_seq_0741_0075
	clearflag FLAG_UNK_27E
	goto scr_seq_0741_0079

scr_seq_0741_0075:
	setflag FLAG_UNK_27E
scr_seq_0741_0079:
	checkflag FLAG_UNK_12C
	gotoif TRUE, scr_seq_0741_008E
	setflag FLAG_UNK_12C
	setvar VAR_UNK_4121, 1
scr_seq_0741_008E:
	end

scr_seq_0741_0090:
	setvar VAR_SPECIAL_x8004, 2
	setvar VAR_SPECIAL_x8005, 2
	setvar VAR_SPECIAL_x8006, 0
	callstd 2039
	setvar VAR_UNK_4096, 2
	end

scr_seq_0741_00AE:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 0
	scrcmd_746
	getmenuchoice VAR_SPECIAL_x800C
	scrcmd_747
	comparevartovalue VAR_SPECIAL_x800C, 0
	gotoif ne, scr_seq_0741_00D7
	npc_msg 1
	goto scr_seq_0741_00DA

scr_seq_0741_00D7:
	npc_msg 2
scr_seq_0741_00DA:
	waitbutton
	closemsg
	releaseall
	end

scr_seq_0741_00E2:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 3
	waitbutton
	closemsg
	releaseall
	end

scr_seq_0741_00F5:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 4
	waitbutton
	closemsg
	releaseall
	end

scr_seq_0741_0108:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	checkflag FLAG_UNK_12E
	gotoif TRUE, scr_seq_0741_0147
	npc_msg 5
	setvar VAR_SPECIAL_x8004, 412
	setvar VAR_SPECIAL_x8005, 1
	hasspaceforitem VAR_SPECIAL_x8004, VAR_SPECIAL_x8005, VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 0
	gotoif eq, scr_seq_0741_0152
	callstd 2033
	setflag FLAG_UNK_12E
scr_seq_0741_0147:
	npc_msg 6
	waitbutton
	closemsg
	releaseall
	end

scr_seq_0741_0152:
	callstd 2009
	closemsg
	releaseall
	end

scr_seq_0741_015C:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	scrcmd_438 2, VAR_SPECIAL_x800C
	scrcmd_440 VAR_SPECIAL_x800C, 0
	scrcmd_746
	getmenuchoice VAR_SPECIAL_x800C
	scrcmd_747
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif eq, scr_seq_0741_0284
	scrcmd_618 VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif eq, scr_seq_0741_0298
	scrcmd_438 2, VAR_SPECIAL_x800C
	scrcmd_440 VAR_SPECIAL_x800C, 1
	closemsg
	scrcmd_602 0
	scrcmd_603
	scrcmd_604 55
	scrcmd_386 VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 0
	gotoif ne, scr_seq_0741_01D5
	apply_movement 255, scr_seq_0741_02AC
	apply_movement 6, scr_seq_0741_02F8
	goto scr_seq_0741_0223

scr_seq_0741_01D5:
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif ne, scr_seq_0741_01F0
	apply_movement 255, scr_seq_0741_02C4
	goto scr_seq_0741_0223

scr_seq_0741_01F0:
	comparevartovalue VAR_SPECIAL_x800C, 3
	gotoif ne, scr_seq_0741_0213
	apply_movement 255, scr_seq_0741_02E4
	apply_movement 6, scr_seq_0741_02F8
	goto scr_seq_0741_0223

scr_seq_0741_0213:
	apply_movement 255, scr_seq_0741_02D0
	apply_movement 6, scr_seq_0741_02F8
scr_seq_0741_0223:
	wait_movement
	scrcmd_603
	scrcmd_602 1
	scrcmd_604 48
	scrcmd_729 VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif ne, scr_seq_0741_024A
	apply_movement 253, scr_seq_0741_0304
	wait_movement
scr_seq_0741_024A:
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, 0
	wait_fade
	scrcmd_615 69
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

scr_seq_0741_0284:
	scrcmd_438 2, VAR_SPECIAL_x800C
	scrcmd_440 VAR_SPECIAL_x800C, 5
	waitbutton
	closemsg
	releaseall
	end

scr_seq_0741_0298:
	scrcmd_438 2, VAR_SPECIAL_x800C
	scrcmd_440 VAR_SPECIAL_x800C, 3
	waitbutton
	closemsg
	releaseall
	end


scr_seq_0741_02AC:
	.short 15, 1
	.short 12, 2
	.short 14, 1
	.short 12, 3
	.short 33, 1
	.short 254, 0

scr_seq_0741_02C4:
	.short 12, 3
	.short 33, 1
	.short 254, 0

scr_seq_0741_02D0:
	.short 12, 1
	.short 14, 1
	.short 12, 3
	.short 33, 1
	.short 254, 0

scr_seq_0741_02E4:
	.short 12, 1
	.short 15, 1
	.short 12, 3
	.short 33, 1
	.short 254, 0

scr_seq_0741_02F8:
	.short 63, 1
	.short 32, 1
	.short 254, 0

scr_seq_0741_0304:
	.short 15, 1
	.short 12, 1
	.short 1, 1
	.short 254, 0
scr_seq_0741_0314:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 7
	waitbutton
	closemsg
	releaseall
	end

scr_seq_0741_0327:
	scrcmd_055 8, 0, 2, VAR_SPECIAL_x800C
	scrcmd_057 3
	scrcmd_058
	scrcmd_060 VAR_SPECIAL_x800C
	callstd 2000
	end

scr_seq_0741_033E:
	scrcmd_056 2, 0
	scrcmd_057 3
	scrcmd_058
	scrcmd_059 9, VAR_SPECIAL_x800C
	callstd 2000
	end

scr_seq_0741_0353:
	scrcmd_056 2, 0
	scrcmd_057 3
	scrcmd_058
	scrcmd_059 10, VAR_SPECIAL_x800C
	callstd 2000
	end

scr_seq_0741_0368:
	scrcmd_056 2, 0
	scrcmd_057 3
	scrcmd_058
	scrcmd_059 11, VAR_SPECIAL_x800C
	callstd 2000
	end
	.balign 4, 0
