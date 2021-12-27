#include "constants/scrcmd.h"
	.include "asm/macros/script.inc"

	.rodata

	scrdef scr_seq_0949_0049 ; 000
	scrdef scr_seq_0949_000E ; 001
	scrdef scr_seq_0949_0204 ; 002
	scrdef_end

scr_seq_0949_000E:
	checkflag FLAG_UNK_189
	gotoif FALSE, scr_seq_0949_001F
	clearflag FLAG_UNK_189
	end

scr_seq_0949_001F:
	scrcmd_484 VAR_TEMP_x4000
	comparevartovalue VAR_TEMP_x4000, 3
	gotoif eq, scr_seq_0949_0043
	comparevartovalue VAR_TEMP_x4000, 5
	gotoif eq, scr_seq_0949_0043
	setflag FLAG_UNK_27E
	end

scr_seq_0949_0043:
	clearflag FLAG_UNK_27E
	end

scr_seq_0949_0049:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	scrcmd_438 2, VAR_SPECIAL_x800C
	scrcmd_440 VAR_SPECIAL_x800C, 0
	scrcmd_746
	getmenuchoice VAR_SPECIAL_x800C
	scrcmd_747
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif eq, scr_seq_0949_0171
	scrcmd_618 VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif eq, scr_seq_0949_0185
	scrcmd_438 2, VAR_SPECIAL_x800C
	scrcmd_440 VAR_SPECIAL_x800C, 1
	closemsg
	scrcmd_602 0
	scrcmd_603
	scrcmd_604 55
	scrcmd_386 VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 0
	gotoif ne, scr_seq_0949_00C2
	apply_movement 255, scr_seq_0949_019C
	apply_movement 1, scr_seq_0949_01E8
	goto scr_seq_0949_0110

scr_seq_0949_00C2:
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif ne, scr_seq_0949_00DD
	apply_movement 255, scr_seq_0949_01B4
	goto scr_seq_0949_0110

scr_seq_0949_00DD:
	comparevartovalue VAR_SPECIAL_x800C, 3
	gotoif ne, scr_seq_0949_0100
	apply_movement 255, scr_seq_0949_01D4
	apply_movement 1, scr_seq_0949_01E8
	goto scr_seq_0949_0110

scr_seq_0949_0100:
	apply_movement 255, scr_seq_0949_01C0
	apply_movement 1, scr_seq_0949_01E8
scr_seq_0949_0110:
	wait_movement
	scrcmd_603
	scrcmd_602 1
	scrcmd_604 48
	scrcmd_729 VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif ne, scr_seq_0949_0137
	apply_movement 253, scr_seq_0949_01F4
	wait_movement
scr_seq_0949_0137:
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, 0
	wait_fade
	scrcmd_615 77
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

scr_seq_0949_0171:
	scrcmd_438 2, VAR_SPECIAL_x800C
	scrcmd_440 VAR_SPECIAL_x800C, 5
	waitbutton
	closemsg
	releaseall
	end

scr_seq_0949_0185:
	scrcmd_438 2, VAR_SPECIAL_x800C
	scrcmd_440 VAR_SPECIAL_x800C, 3
	waitbutton
	closemsg
	releaseall
	end

scr_seq_0949_0199:
	.byte 0x00, 0x00, 0x00

scr_seq_0949_019C:
	.short 15, 1
	.short 12, 2
	.short 14, 1
	.short 12, 3
	.short 33, 1
	.short 254, 0

scr_seq_0949_01B4:
	.short 12, 3
	.short 33, 1
	.short 254, 0

scr_seq_0949_01C0:
	.short 12, 1
	.short 14, 1
	.short 12, 3
	.short 33, 1
	.short 254, 0

scr_seq_0949_01D4:
	.short 12, 1
	.short 15, 1
	.short 12, 3
	.short 33, 1
	.short 254, 0

scr_seq_0949_01E8:
	.short 63, 1
	.short 32, 1
	.short 254, 0

scr_seq_0949_01F4:
	.short 15, 1
	.short 12, 1
	.short 1, 1
	.short 254, 0
scr_seq_0949_0204:
	scrcmd_056 2, 0
	scrcmd_057 3
	scrcmd_058
	scrcmd_059 0, VAR_SPECIAL_x800C
	callstd 2000
	end
	.balign 4, 0
