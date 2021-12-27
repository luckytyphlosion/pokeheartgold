#include "constants/scrcmd.h"
	.include "asm/macros/script.inc"

	.rodata

	scrdef scr_seq_0114_0014 ; 000
	scrdef scr_seq_0114_0079 ; 001
	scrdef scr_seq_0114_0012 ; 002
	scrdef scr_seq_0114_03E4 ; 003
	scrdef_end

scr_seq_0114_0012:
	end

scr_seq_0114_0014:
	comparevartovalue VAR_UNK_40FE, 4
	gotoif eq, scr_seq_0114_0077
	comparevartovalue VAR_UNK_40FE, 3
	gotoif eq, scr_seq_0114_0057
	comparevartovalue VAR_UNK_40FE, 2
	gotoif eq, scr_seq_0114_003D
	end

scr_seq_0114_003D:
	show_person_at 4, 6, 1, 4, 0
	show_person_at 5, 5, 1, 8, 1
	end

scr_seq_0114_0057:
	show_person_at 4, 6, 1, 6, 1
	show_person_at 5, 5, 1, 7, 0
	scrcmd_375 253
	scrcmd_606
	end

scr_seq_0114_0077:
	end

scr_seq_0114_0079:
	scrcmd_609
	lockall
	scrcmd_602 0
	scrcmd_603
	scrcmd_604 55
	apply_movement 255, scr_seq_0114_0374
	apply_movement 5, scr_seq_0114_03AC
	wait_movement
	apply_movement 253, scr_seq_0114_0398
	wait_movement
	scrcmd_603
	scrcmd_602 1
	scrcmd_604 48
	apply_movement 4, scr_seq_0114_031C
	wait_movement
	npc_msg 0
	closemsg
	apply_movement 5, scr_seq_0114_03AC
	wait_movement
	gender_msgbox 8, 7
	closemsg
	apply_movement 4, scr_seq_0114_032C
	wait_movement
	npc_msg 1
	closemsg
	apply_movement 5, scr_seq_0114_03B4
	wait_movement
	gender_msgbox 10, 9
	closemsg
	apply_movement 5, scr_seq_0114_038C
	wait_movement
	gender_msgbox 12, 11
	closemsg
	apply_movement 5, scr_seq_0114_03DC
	wait_movement
	buffer_players_name 0
	gender_msgbox 14, 13
	closemsg
	scrcmd_081 0
	play_se SEQ_SE_PL_FR03
	play_bgm SEQ_GS_SENKYO
	npc_msg 2
	scrcmd_074 1432
	closemsg
	apply_movement 4, scr_seq_0114_032C
	wait_movement
	npc_msg 3
	closemsg
	setvar VAR_UNK_40FE, 3
	trainer_battle 700, 0, 1, 0
	scrcmd_220 VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 0
	gotoif eq, scr_seq_0114_0250
	setvar VAR_UNK_40FE, 4
	apply_movement 4, scr_seq_0114_033C
	wait_movement
	npc_msg 4
	closemsg
	apply_movement 4, scr_seq_0114_0350
	wait_movement
	hide_person 4
	setflag FLAG_UNK_303
	apply_movement 255, scr_seq_0114_0380
	apply_movement 5, scr_seq_0114_0380
	wait_movement
	fade_out_bgm 0, 30
	scrcmd_081 0
	play_se SEQ_SE_PL_FR03
	npc_msg 5
	scrcmd_074 1432
	closemsg
	apply_movement 5, scr_seq_0114_03D4
	wait_movement
	buffer_players_name 0
	gender_msgbox 16, 15
	closemsg
	get_lead_mon_index VAR_TEMP_x4002
	get_partymon_species VAR_TEMP_x4002, VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 251
	callif ne, scr_seq_0114_02C0
	apply_movement 253, scr_seq_0114_03A4
	wait_movement
	play_se SEQ_SE_GS_SUZUSYUTUGEN_HO
	fade_screen 6, 6, 0, 32767
	wait_fade
	wait 15, VAR_SPECIAL_x800C
	fade_screen 6, 6, 1, 32767
	wait_fade
	apply_movement 255, scr_seq_0114_038C
	wait_movement
	apply_movement 5, scr_seq_0114_03C0
	wait_movement
	comparevartovalue VAR_TEMP_x4003, 1
	gotoif ne, scr_seq_0114_0224
	gender_msgbox 27, 26
	closemsg
	goto scr_seq_0114_022A

scr_seq_0114_0224:
	gender_msgbox 18, 17
	closemsg
scr_seq_0114_022A:
	play_se SEQ_SE_GS_TIMESLIP
	scrcmd_810
	clearflag FLAG_UNK_310
	scrcmd_176 117, 0, 16, 57, 1
	fade_screen 6, 15, 1, 32767
	wait_fade
	releaseall
	end

scr_seq_0114_0250:
	npc_msg 6
	closemsg
	apply_movement 4, scr_seq_0114_0360
	play_se SEQ_SE_GS_SUZUSYUTUGEN_HO
	fade_screen 6, 6, 0, 32767
	wait_fade
	wait 15, VAR_SPECIAL_x800C
	fade_screen 6, 6, 1, 32767
	wait_fade
	wait_movement
	hide_person 4
	setflag FLAG_UNK_303
	npc_msg 19
	closemsg
	play_se SEQ_SE_GS_TIMESLIP
	scrcmd_810
	setflag FLAG_UNK_178
	setvar VAR_UNK_40FE, 0
	setflag FLAG_UNK_310
	scrcmd_176 117, 0, 16, 57, 1
	fade_screen 6, 15, 1, 32767
	wait_fade
	scrcmd_747
	releaseall
	end

scr_seq_0114_02C0:
	setvar VAR_TEMP_x4003, 1
	apply_movement 5, scr_seq_0114_0304
	wait_movement
	gender_msgbox 23, 22
	closemsg
	gender_msgbox 25, 24
	closemsg
	fade_screen 6, 1, 0, 0
	wait_fade
	play_fanfare SEQ_ME_ASA
	wait_fanfare
	heal_party
	scrcmd_436
	scrcmd_150
	fade_screen 6, 1, 1, 0
	wait_fade
	return

scr_seq_0114_0302:
	.byte 0x00, 0x00

scr_seq_0114_0304:
	.short 35, 1
	.short 75, 1
	.short 63, 1
	.short 19, 1
	.short 32, 1
	.short 254, 0

scr_seq_0114_031C:
	.short 75, 1
	.short 63, 1
	.short 33, 1
	.short 254, 0

scr_seq_0114_032C:
	.short 13, 1
	.short 254, 0
	.byte 0x21, 0x00, 0x01, 0x00, 0xfe, 0x00, 0x00, 0x00

scr_seq_0114_033C:
	.short 71, 1
	.short 8, 1
	.short 72, 1
	.short 11, 2
	.short 254, 0

scr_seq_0114_0350:
	.short 13, 4
	.short 14, 2
	.short 13, 2
	.short 254, 0

scr_seq_0114_0360:
	.short 11, 2
	.short 9, 3
	.short 10, 2
	.short 9, 2
	.short 254, 0

scr_seq_0114_0374:
	.short 32, 1
	.short 12, 1
	.short 254, 0

scr_seq_0114_0380:
	.short 63, 3
	.short 13, 1
	.short 254, 0

scr_seq_0114_038C:
	.short 75, 1
	.short 63, 1
	.short 254, 0

scr_seq_0114_0398:
	.short 15, 1
	.short 12, 1
	.short 254, 0

scr_seq_0114_03A4:
	.short 49, 1
	.short 254, 0

scr_seq_0114_03AC:
	.short 32, 1
	.short 254, 0

scr_seq_0114_03B4:
	.short 12, 1
	.short 35, 1
	.short 254, 0

scr_seq_0114_03C0:
	.short 34, 1
	.short 63, 1
	.short 35, 1
	.short 63, 1
	.short 254, 0

scr_seq_0114_03D4:
	.short 13, 1
	.short 254, 0

scr_seq_0114_03DC:
	.short 39, 4
	.short 254, 0
scr_seq_0114_03E4:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	comparevartovalue VAR_UNK_40FE, 4
	gotoif ge, scr_seq_0114_0404
	npc_msg 20
	waitbutton
	closemsg
	releaseall
	end

scr_seq_0114_0404:
	npc_msg 21
	waitbutton
	closemsg
	releaseall
	end
	.balign 4, 0
