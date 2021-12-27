#include "constants/scrcmd.h"
	.include "asm/macros/script.inc"

	.rodata

	scrdef scr_seq_0060_000E ; 000
	scrdef scr_seq_0060_0021 ; 001
	scrdef scr_seq_0060_0055 ; 002
	scrdef_end

scr_seq_0060_000E:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 5
	waitbutton
	closemsg
	releaseall
	end

scr_seq_0060_0021:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 3
	scrcmd_746
	getmenuchoice VAR_SPECIAL_x800C
	scrcmd_747
	comparevartovalue VAR_SPECIAL_x800C, 0
	gotoif eq, scr_seq_0060_0047
	closemsg
	releaseall
	end

scr_seq_0060_0047:
	buffer_players_name 0
	npc_msg 4
	waitbutton
	closemsg
	releaseall
	end

scr_seq_0060_0055:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 1
	closemsg
	trainer_battle 486, 0, 0, 0
	scrcmd_220 VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 0
	gotoif eq, scr_seq_0060_0193
	npc_msg 2
	closemsg
	fade_screen 6, 1, 0, 0
	wait_fade
	hide_person 1
	hide_person 2
	hide_person 3
	hide_person 4
	setflag FLAG_UNK_1A9
	wait 20, VAR_SPECIAL_x8004
	play_se SEQ_SE_DP_KAIDAN2
	wait_se SEQ_SE_DP_KAIDAN2
	fade_screen 6, 1, 1, 0
	wait_fade
	show_person_at 7, 36, 0, 7, 2
	scrcmd_602 0
	scrcmd_603
	scrcmd_604 55
	scrcmd_386 VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 0
	gotoif ne, scr_seq_0060_00F7
	apply_movement 7, scr_seq_0060_019C
	apply_movement 255, scr_seq_0060_01C0
	goto scr_seq_0060_0107

scr_seq_0060_00F7:
	apply_movement 7, scr_seq_0060_019C
	apply_movement 255, scr_seq_0060_01DC
scr_seq_0060_0107:
	wait_movement
	scrcmd_603
	scrcmd_602 1
	scrcmd_604 48
	buffer_players_name 0
	npc_msg 0
	closemsg
	clearflag FLAG_UNK_19E
	clearflag FLAG_UNK_1AB
	setflag FLAG_UNK_07B
	setvar VAR_UNK_4075, 1
	setvar VAR_UNK_4080, 2
	setvar VAR_UNK_4099, 1
	setvar VAR_UNK_409B, 1
	setvar VAR_UNK_409E, 1
	play_se SEQ_SE_DP_KAIDAN2
	wait_se SEQ_SE_DP_KAIDAN2
	fade_screen 6, 1, 0, 0
	wait_fade
	scrcmd_176 164, 0, 4, 5, 0
	fade_screen 6, 1, 1, 0
	wait_fade
	setflag FLAG_UNK_1AA
	setflag FLAG_UNK_1D5
	setflag FLAG_UNK_1AC
	clearflag FLAG_UNK_1AD
	clearflag FLAG_UNK_1A7
	clearflag FLAG_UNK_1A8
	setvar VAR_UNK_40F4, 1
	releaseall
	end

scr_seq_0060_0193:
	scrcmd_219
	releaseall
	end

scr_seq_0060_0199:
	.byte 0x00, 0x00, 0x00

scr_seq_0060_019C:
	.short 14, 2
	.short 13, 2
	.short 14, 3
	.short 12, 2
	.short 62, 4
	.short 14, 1
	.short 12, 3
	.short 2, 1
	.short 254, 0

scr_seq_0060_01C0:
	.short 15, 2
	.short 0, 1
	.short 63, 6
	.short 1, 1
	.short 63, 5
	.short 3, 1
	.short 254, 0

scr_seq_0060_01DC:
	.short 13, 1
	.short 15, 1
	.short 0, 1
	.short 63, 6
	.short 1, 1
	.short 63, 5
	.short 3, 1
	.short 254, 0
	.balign 4, 0
