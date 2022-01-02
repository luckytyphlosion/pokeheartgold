#include "constants/scrcmd.h"
#include "fielddata/script/scr_seq/event_D44R0103.h"
#include "msgdata/msg/msg_0130_D44R0103.h"
	.include "asm/macros/script.inc"

	.rodata

	scrdef scr_seq_D44R0103_000
	scrdef scr_seq_D44R0103_001
	scrdef scr_seq_D44R0103_002
	scrdef scr_seq_D44R0103_003
	scrdef scr_seq_D44R0103_004
	scrdef scr_seq_D44R0103_005
	scrdef_end

scr_seq_D44R0103_004:
	checkflag FLAG_UNK_189
	gotoif FALSE, _002B
	clearflag FLAG_UNK_189
	end

_002B:
	checkflag FLAG_UNK_0EA
	gotoif TRUE, _003C
	goto _005A

_003C:
	get_weekday VAR_TEMP_x4000
	comparevartovalue VAR_TEMP_x4000, 1
	gotoif eq, _0064
	comparevartovalue VAR_TEMP_x4000, 4
	gotoif eq, _0064
_005A:
	setflag FLAG_HIDE_CAMERON
	goto _0068

_0064:
	clearflag FLAG_HIDE_CAMERON
_0068:
	checkflag FLAG_UNK_0DC
	gotoif TRUE, _0075
	end

_0075:
	setflag FLAG_UNK_0DD
	end

scr_seq_D44R0103_003:
	scrcmd_609
	lockall
	scrcmd_602 0
	scrcmd_603
	scrcmd_604 55
	apply_movement obj_player, _0370
	wait_movement
	scrcmd_603
	scrcmd_602 1
	scrcmd_604 48
	npc_msg msg_0130_D44R0103_00000
_00A0:
	setvar VAR_SPECIAL_x8004, 0
	npc_msg msg_0130_D44R0103_00001
	touchscreen_menu_hide
	menu_init_std_gmm 1, 1, 0, 0, VAR_SPECIAL_x800C
	menu_item_add 280, 255, 0
	menu_item_add 281, 255, 1
	menu_item_add 282, 255, 0
	menu_exec
	touchscreen_menu_show
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif eq, _0310
	npc_msg msg_0130_D44R0103_00009
_00DF:
	setvar VAR_SPECIAL_x8004, 1
	npc_msg msg_0130_D44R0103_00002
	touchscreen_menu_hide
	menu_init_std_gmm 1, 1, 0, 0, VAR_SPECIAL_x800C
	menu_item_add 283, 255, 0
	menu_item_add 284, 255, 0
	menu_item_add 285, 255, 1
	menu_exec
	touchscreen_menu_show
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif eq, _0310
	npc_msg msg_0130_D44R0103_00009
_011E:
	setvar VAR_SPECIAL_x8004, 2
	npc_msg msg_0130_D44R0103_00003
	touchscreen_menu_hide
	menu_init_std_gmm 1, 1, 0, 0, VAR_SPECIAL_x800C
	menu_item_add 286, 255, 1
	menu_item_add 287, 255, 0
	menu_item_add 288, 255, 0
	menu_exec
	touchscreen_menu_show
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif eq, _0310
	npc_msg msg_0130_D44R0103_00009
_015D:
	setvar VAR_SPECIAL_x8004, 3
	npc_msg msg_0130_D44R0103_00004
	touchscreen_menu_hide
	menu_init_std_gmm 1, 1, 0, 0, VAR_SPECIAL_x800C
	menu_item_add 289, 255, 0
	menu_item_add 290, 255, 1
	menu_item_add 291, 255, 0
	menu_exec
	touchscreen_menu_show
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif eq, _0310
	npc_msg msg_0130_D44R0103_00009
_019C:
	setvar VAR_SPECIAL_x8004, 4
	npc_msg msg_0130_D44R0103_00005
	touchscreen_menu_hide
	menu_init_std_gmm 1, 1, 0, 0, VAR_SPECIAL_x800C
	menu_item_add 292, 255, 1
	menu_item_add 293, 255, 0
	menu_item_add 294, 255, 0
	menu_exec
	touchscreen_menu_show
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif eq, _0310
	buffer_players_name 0
	npc_msg msg_0130_D44R0103_00006
	closemsg
	move_person obj_D44R0103_gsleader8, 6, 0, 21, 0
	wait 10, VAR_SPECIAL_x8004
	play_se SEQ_SE_DP_DOOR
	wait 5, VAR_SPECIAL_x8004
	callstd 2044
	apply_movement obj_player, _0390
	apply_movement obj_D44R0103_gsleader8, _03A8
	wait_movement
	npc_msg msg_0130_D44R0103_00010
	apply_movement obj_D44R0103_gsleader8, _03C0
	wait_movement
	npc_msg msg_0130_D44R0103_00011
	apply_movement obj_D44R0103_gsleader8, _03D0
	wait_movement
	npc_msg msg_0130_D44R0103_00012
	apply_movement obj_D44R0103_chourou, _03DC
	wait_movement
	npc_msg msg_0130_D44R0103_00013
	apply_movement obj_D44R0103_gsleader8, _03EC
	wait_movement
	npc_msg msg_0130_D44R0103_00014
	apply_movement obj_D44R0103_gsleader8, _03F4
	apply_movement obj_D44R0103_chourou, _03FC
	wait_movement
	npc_msg msg_0130_D44R0103_00015
	buffer_players_name 0
	npc_msg msg_0130_D44R0103_00016
	play_fanfare SEQ_ME_BADGE
	wait_fanfare
	give_badge 7
	npc_msg msg_0130_D44R0103_00017
	apply_movement obj_D44R0103_chourou, _0408
	apply_movement obj_player, _0418
	apply_movement obj_D44R0103_gsleader8, _0424
	wait_movement
	npc_msg msg_0130_D44R0103_00018
	closemsg
	wait 15, VAR_SPECIAL_x8005
	npc_msg msg_0130_D44R0103_00019
	closemsg
	apply_movement obj_D44R0103_gsleader8, _0434
	wait_movement
	hide_person obj_D44R0103_gsleader8
	callstd 2045
	wait_fanfare
	apply_movement obj_D44R0103_chourou, _0450
	wait_movement
	get_game_version VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 7
	gotoif ne, _02D3
	npc_msg msg_0130_D44R0103_00020
	goto _02D6

_02D3:
	npc_msg msg_0130_D44R0103_00021
_02D6:
	waitbutton
	closemsg
	releaseall
	setflag FLAG_UNK_998
	setflag FLAG_UNK_0EA
	clearflag FLAG_HIDE_VICTORY_ROAD_CLAIR
	setvar VAR_UNK_40C4, 1
	setflag FLAG_UNK_2E5
	setvar VAR_UNK_40C3, 1
	setvar VAR_UNK_407B, 1
	setvar VAR_SCENE_ELMS_LAB, 8
	clearflag FLAG_HIDE_ELMS_LAB_FRIEND
	setvar VAR_SCENE_NEW_BARK_EAST_EXIT, 1
	end

_0310:
	setflag FLAG_UNK_0DB
	apply_movement obj_D44R0103_chourou, _0378
	wait_movement
	npc_msg msg_0130_D44R0103_00007
	apply_movement obj_D44R0103_chourou, _0388
	wait_movement
	npc_msg msg_0130_D44R0103_00008
	scrcmd_049
	switch VAR_SPECIAL_x8004
	case 0, _00A0
	case 1, _00DF
	case 2, _011E
	case 3, _015D
	goto _019C


_0370:
	step 12, 8
	step_end

_0378:
	step 63, 2
	step 3, 1
	step 63, 2
	step_end

_0388:
	step 1, 1
	step_end

_0390:
	step 63, 1
	step 75, 1
	step 1, 1
	step 63, 8
	step 2, 1
	step_end

_03A8:
	step 63, 4
	step 12, 8
	step 14, 1
	step 12, 2
	step 3, 1
	step_end

_03C0:
	step 63, 1
	step 71, 1
	step 18, 1
	step_end

_03D0:
	step 63, 1
	step 10, 1
	step_end

_03DC:
	step 63, 1
	step 9, 1
	step 10, 1
	step_end

_03EC:
	step 75, 1
	step_end

_03F4:
	step 15, 2
	step_end

_03FC:
	step 63, 2
	step 3, 1
	step_end

_0408:
	step 8, 1
	step 11, 1
	step 1, 1
	step_end

_0418:
	step 65, 2
	step 0, 1
	step_end

_0424:
	step 72, 1
	step 65, 2
	step 0, 1
	step_end

_0434:
	step 71, 1
	step 13, 1
	step 72, 1
	step 21, 3
	step 23, 1
	step 21, 4
	step_end

_0450:
	step 33, 1
	step_end
scr_seq_D44R0103_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	checkflag FLAG_UNK_0DD
	gotoif TRUE, _053D
	checkflag FLAG_UNK_0DC
	gotoif TRUE, _052E
	checkflag FLAG_UNK_0DA
	gotoif TRUE, _04A6
	get_game_version VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 7
	gotoif ne, _049B
	npc_msg msg_0130_D44R0103_00020
	goto _049E

_049B:
	npc_msg msg_0130_D44R0103_00022
_049E:
	waitbutton
	closemsg
	releaseall
	end

_04A6:
	npc_msg msg_0130_D44R0103_00026
	get_party_count VAR_SPECIAL_x8005
	comparevartovalue VAR_SPECIAL_x8005, 6
	gotoif ne, _04C3
	npc_msg msg_0130_D44R0103_00028
	goto _0548

_04C3:
	buffer_players_name 0
	npc_msg msg_0130_D44R0103_00027
	play_fanfare SEQ_ME_SHINKAOME
	wait_fanfare
	give_mon SPECIES_DRATINI, 15, 0, 0, 0, VAR_SPECIAL_x800C
	checkflag FLAG_UNK_0DB
	gotoif TRUE, _04F0
	set_mon_move VAR_SPECIAL_x8005, 0, MOVE_EXTREME_SPEED
_04F0:
	npc_msg msg_0130_D44R0103_00032
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_x800C
	touchscreen_menu_show
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif ne, _050E
	goto _052E

_050E:
	closemsg
	fade_screen 6, 1, 0, 0x00
	wait_fade
	nickname_input VAR_SPECIAL_x8005, VAR_SPECIAL_x800C
	fade_screen 6, 1, 1, 0x00
	wait_fade
_052E:
	setflag FLAG_UNK_0DC
	npc_msg msg_0130_D44R0103_00029
	waitbutton
	closemsg
	releaseall
	end

_053D:
	npc_msg msg_0130_D44R0103_00030
	waitbutton
	closemsg
	releaseall
	end

_0548:
	waitbutton
	closemsg
	releaseall
	end

scr_seq_D44R0103_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg msg_0130_D44R0103_00024
	waitbutton
	closemsg
	releaseall
	end

scr_seq_D44R0103_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg msg_0130_D44R0103_00025
	waitbutton
	closemsg
	releaseall
	end

scr_seq_D44R0103_005:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	get_std_msg_naix 2, VAR_SPECIAL_x800C
	msgbox_extern VAR_SPECIAL_x800C, 0
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_x800C
	touchscreen_menu_show
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif eq, _069E
	photo_album_is_full VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif eq, _06B2
	get_std_msg_naix 2, VAR_SPECIAL_x800C
	msgbox_extern VAR_SPECIAL_x800C, 1
	closemsg
	scrcmd_602 0
	scrcmd_603
	scrcmd_604 55
	scrcmd_386 VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 0
	gotoif ne, _05EF
	apply_movement obj_player, _06C8
	apply_movement obj_D44R0103_gsmiddleman1, _0714
	goto _063D

_05EF:
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif ne, _060A
	apply_movement obj_player, _06E0
	goto _063D

_060A:
	comparevartovalue VAR_SPECIAL_x800C, 3
	gotoif ne, _062D
	apply_movement obj_player, _0700
	apply_movement obj_D44R0103_gsmiddleman1, _0714
	goto _063D

_062D:
	apply_movement obj_player, _06EC
	apply_movement obj_D44R0103_gsmiddleman1, _0714
_063D:
	wait_movement
	scrcmd_603
	scrcmd_602 1
	scrcmd_604 48
	scrcmd_729 VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif ne, _0664
	apply_movement obj_partner_poke, _0720
	wait_movement
_0664:
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, 0x00
	wait_fade
	cameron_photo 46
	lockall
	fade_screen 6, 1, 1, 0x00
	wait_fade
	clearflag FLAG_UNK_189
	get_std_msg_naix 2, VAR_SPECIAL_x800C
	msgbox_extern VAR_SPECIAL_x800C, 2
	waitbutton
	closemsg
	releaseall
	end

_069E:
	get_std_msg_naix 2, VAR_SPECIAL_x800C
	msgbox_extern VAR_SPECIAL_x800C, 5
	waitbutton
	closemsg
	releaseall
	end

_06B2:
	get_std_msg_naix 2, VAR_SPECIAL_x800C
	msgbox_extern VAR_SPECIAL_x800C, 3
	waitbutton
	closemsg
	releaseall
	end
	.byte 0x00, 0x00

_06C8:
	step 15, 1
	step 12, 2
	step 14, 1
	step 12, 3
	step 33, 1
	step_end

_06E0:
	step 12, 3
	step 33, 1
	step_end

_06EC:
	step 12, 1
	step 14, 1
	step 12, 3
	step 33, 1
	step_end

_0700:
	step 12, 1
	step 15, 1
	step 12, 3
	step 33, 1
	step_end

_0714:
	step 63, 1
	step 32, 1
	step_end

_0720:
	step 15, 1
	step 12, 1
	step 1, 1
	step_end
	.balign 4, 0
