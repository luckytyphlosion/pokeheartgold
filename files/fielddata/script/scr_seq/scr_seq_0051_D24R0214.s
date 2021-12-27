#include "constants/scrcmd.h"
	.include "asm/macros/script.inc"

	.rodata

	scrdef scr_seq_0051_000A ; 000
	scrdef scr_seq_0051_015C ; 001
	scrdef_end

scr_seq_0051_000A:
	scrcmd_609
	lockall
	setvar VAR_UNK_40D8, 1
	scrcmd_729 VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 0
	gotoif eq, scr_seq_0051_0034
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif eq, scr_seq_0051_007E
	end

scr_seq_0051_0034:
	scrcmd_386 VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 0
	gotoif ne, scr_seq_0051_0053
	apply_movement 255, scr_seq_0051_0108
	goto scr_seq_0051_0076

scr_seq_0051_0053:
	comparevartovalue VAR_SPECIAL_x800C, 3
	gotoif ne, scr_seq_0051_006E
	apply_movement 255, scr_seq_0051_0140
	goto scr_seq_0051_0076

scr_seq_0051_006E:
	apply_movement 255, scr_seq_0051_0124
scr_seq_0051_0076:
	wait_movement
	goto scr_seq_0051_00DA

scr_seq_0051_007E:
	scrcmd_386 VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 0
	gotoif ne, scr_seq_0051_00A5
	apply_movement 255, scr_seq_0051_0108
	apply_movement 253, scr_seq_0051_0114
	goto scr_seq_0051_00D8

scr_seq_0051_00A5:
	comparevartovalue VAR_SPECIAL_x800C, 3
	gotoif ne, scr_seq_0051_00C8
	apply_movement 255, scr_seq_0051_0140
	apply_movement 253, scr_seq_0051_014C
	goto scr_seq_0051_00D8

scr_seq_0051_00C8:
	apply_movement 255, scr_seq_0051_0124
	apply_movement 253, scr_seq_0051_0130
scr_seq_0051_00D8:
	wait_movement
scr_seq_0051_00DA:
	play_se SEQ_SE_GS_RAKKA01
	fade_screen 6, 1, 0, 0
	wait_fade
	scrcmd_176 319, 0, 11, 14, 32780
	fade_screen 6, 1, 1, 0
	wait_fade
	releaseall
	end

scr_seq_0051_0106:
	.byte 0x00, 0x00

scr_seq_0051_0108:
	.short 40, 4
	.short 69, 1
	.short 254, 0

scr_seq_0051_0114:
	.short 62, 3
	.short 20, 1
	.short 69, 1
	.short 254, 0

scr_seq_0051_0124:
	.short 42, 4
	.short 69, 1
	.short 254, 0

scr_seq_0051_0130:
	.short 62, 3
	.short 22, 1
	.short 69, 1
	.short 254, 0

scr_seq_0051_0140:
	.short 43, 4
	.short 69, 1
	.short 254, 0

scr_seq_0051_014C:
	.short 62, 3
	.short 23, 1
	.short 69, 1
	.short 254, 0
scr_seq_0051_015C:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 0
	waitbutton
	closemsg
	releaseall
	end
	.balign 4, 0
