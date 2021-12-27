#include "constants/scrcmd.h"
	.include "asm/macros/script.inc"

	.rodata

	scrdef scr_seq_0131_00CC ; 000
	scrdef scr_seq_0131_00CE ; 001
	scrdef scr_seq_0131_0022 ; 002
	scrdef scr_seq_0131_0444 ; 003
	scrdef scr_seq_0131_03DC ; 004
	scrdef scr_seq_0131_04AC ; 005
	scrdef scr_seq_0131_0095 ; 006
	scrdef scr_seq_0131_0069 ; 007
	scrdef_end

scr_seq_0131_0022:
	comparevartovalue VAR_UNK_40FB, 7
	gotoif eq, scr_seq_0131_0065
	comparevartovalue VAR_UNK_40FB, 8
	gotoif eq, scr_seq_0131_0065
	comparevartovalue VAR_UNK_40FB, 9
	gotoif eq, scr_seq_0131_0065
	comparevartovalue VAR_UNK_40FB, 12
	gotoif eq, scr_seq_0131_0065
	comparevartovalue VAR_UNK_40FB, 13
	gotoif eq, scr_seq_0131_0065
	end

scr_seq_0131_0065:
	scrcmd_818
	end

scr_seq_0131_0069:
	scrcmd_609
	lockall
	scrcmd_602 0
	scrcmd_603
	scrcmd_604 55
	apply_movement 255, scr_seq_0131_00C4
	wait_movement
	scrcmd_603
	scrcmd_602 1
	scrcmd_604 48
	setvar VAR_UNK_40FB, 13
	releaseall
	end

scr_seq_0131_0095:
	scrcmd_609
	lockall
	scrcmd_602 0
	scrcmd_603
	scrcmd_604 55
	apply_movement 255, scr_seq_0131_00C4
	wait_movement
	scrcmd_603
	scrcmd_602 1
	scrcmd_604 48
	setvar VAR_UNK_40FB, 4
	releaseall
	end

scr_seq_0131_00C1:
	.byte 0x00, 0x00, 0x00

scr_seq_0131_00C4:
	.short 13, 2
	.short 254, 0
scr_seq_0131_00CC:
	end

scr_seq_0131_00CE:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	comparevartovalue VAR_UNK_40FB, 8
	gotoif eq, scr_seq_0131_0165
	get_lead_mon_index VAR_TEMP_x4005
	scrcmd_698 2, 16389, 16390
	comparevartovalue VAR_TEMP_x4006, 1
	gotoif eq, scr_seq_0131_011A
	scrcmd_698 1, 16389, 16391
	comparevartovalue VAR_TEMP_x4007, 1
	gotoif eq, scr_seq_0131_011A
	npc_msg 24
	waitbutton
	closemsg
	releaseall
	end

scr_seq_0131_011A:
	comparevartovalue VAR_TEMP_x4004, 1
	gotoif eq, scr_seq_0131_0154
	npc_msg 0
	closemsg
	get_party_count VAR_SPECIAL_x8004
	comparevartovalue VAR_SPECIAL_x8004, 2
	gotoif ge, scr_seq_0131_0154
	apply_movement 0, scr_seq_0131_02CC
	wait_movement
	npc_msg 6
	closemsg
	goto scr_seq_0131_0170

scr_seq_0131_0152:
	.byte 0x02, 0x00
scr_seq_0131_0154:
	npc_msg 2
	waitbutton
	closemsg
	setvar VAR_TEMP_x4004, 1
	releaseall
	end

scr_seq_0131_0165:
	npc_msg 12
	waitbutton
	closemsg
	releaseall
	end

scr_seq_0131_0170:
	setvar VAR_UNK_40FB, 8
	setvar VAR_UNK_4104, 1
	scrcmd_386 VAR_TEMP_x4002
	comparevartovalue VAR_TEMP_x4002, 0
	gotoif ne, scr_seq_0131_019B
	apply_movement 0, scr_seq_0131_02B4
	goto scr_seq_0131_01BE

scr_seq_0131_019B:
	comparevartovalue VAR_TEMP_x4002, 3
	gotoif ne, scr_seq_0131_01B6
	apply_movement 0, scr_seq_0131_02BC
	goto scr_seq_0131_01BE

scr_seq_0131_01B6:
	apply_movement 0, scr_seq_0131_02C4
scr_seq_0131_01BE:
	wait_movement
	npc_msg 4
	closemsg
	scrcmd_602 0
	scrcmd_603
	scrcmd_604 55
	comparevartovalue VAR_TEMP_x4002, 2
	gotoif ne, scr_seq_0131_01EA
	apply_movement 0, scr_seq_0131_02D4
	goto scr_seq_0131_01F2

scr_seq_0131_01EA:
	apply_movement 0, scr_seq_0131_02E0
scr_seq_0131_01F2:
	wait_movement
	comparevartovalue VAR_TEMP_x4002, 0
	gotoif ne, scr_seq_0131_0217
	apply_movement 255, scr_seq_0131_0390
	apply_movement 0, scr_seq_0131_0308
	goto scr_seq_0131_024A

scr_seq_0131_0217:
	comparevartovalue VAR_TEMP_x4002, 3
	gotoif ne, scr_seq_0131_023A
	apply_movement 255, scr_seq_0131_03A0
	apply_movement 0, scr_seq_0131_0308
	goto scr_seq_0131_024A

scr_seq_0131_023A:
	apply_movement 255, scr_seq_0131_03B4
	apply_movement 0, scr_seq_0131_02EC
scr_seq_0131_024A:
	wait_movement
	scrcmd_603
	scrcmd_602 1
	scrcmd_604 48
	npc_msg 5
	closemsg
	apply_movement 0, scr_seq_0131_0324
	wait_movement
	npc_msg 7
	closemsg
	apply_movement 0, scr_seq_0131_0334
	wait_movement
	npc_msg 8
	closemsg
	apply_movement 0, scr_seq_0131_0348
	wait_movement
	npc_msg 9
	closemsg
	apply_movement 0, scr_seq_0131_0364
	wait_movement
	npc_msg 10
	closemsg
	apply_movement 0, scr_seq_0131_0370
	apply_movement 255, scr_seq_0131_03C8
	wait_movement
	npc_msg 11
	waitbutton
	closemsg
	releaseall
	end


scr_seq_0131_02B4:
	.short 33, 1
	.short 254, 0

scr_seq_0131_02BC:
	.short 34, 1
	.short 254, 0

scr_seq_0131_02C4:
	.short 35, 1
	.short 254, 0

scr_seq_0131_02CC:
	.short 32, 1
	.short 254, 0

scr_seq_0131_02D4:
	.short 14, 1
	.short 35, 1
	.short 254, 0

scr_seq_0131_02E0:
	.short 15, 1
	.short 34, 1
	.short 254, 0

scr_seq_0131_02EC:
	.short 65, 1
	.short 15, 1
	.short 12, 3
	.short 15, 1
	.short 12, 2
	.short 34, 1
	.short 254, 0

scr_seq_0131_0308:
	.short 65, 1
	.short 14, 1
	.short 12, 3
	.short 15, 1
	.short 12, 2
	.short 34, 1
	.short 254, 0

scr_seq_0131_0324:
	.short 15, 3
	.short 13, 1
	.short 34, 1
	.short 254, 0

scr_seq_0131_0334:
	.short 13, 1
	.short 14, 8
	.short 12, 1
	.short 35, 1
	.short 254, 0

scr_seq_0131_0348:
	.short 12, 3
	.short 15, 2
	.short 12, 3
	.short 15, 2
	.short 12, 1
	.short 33, 1
	.short 254, 0

scr_seq_0131_0364:
	.short 13, 3
	.short 33, 1
	.short 254, 0

scr_seq_0131_0370:
	.short 15, 1
	.short 13, 6
	.short 14, 1
	.short 32, 1
	.short 254, 0
	.byte 0x21, 0x00, 0x01, 0x00, 0x0d, 0x00, 0x02, 0x00, 0xfe, 0x00, 0x00, 0x00

scr_seq_0131_0390:
	.short 12, 6
	.short 65, 1
	.short 35, 1
	.short 254, 0

scr_seq_0131_03A0:
	.short 15, 1
	.short 12, 5
	.short 65, 1
	.short 35, 1
	.short 254, 0

scr_seq_0131_03B4:
	.short 14, 1
	.short 12, 5
	.short 65, 1
	.short 35, 1
	.short 254, 0

scr_seq_0131_03C8:
	.short 63, 2
	.short 35, 1
	.short 63, 3
	.short 35, 1
	.short 254, 0
scr_seq_0131_03DC:
	scrcmd_609
	lockall
	comparevartovalue VAR_UNK_40FB, 13
	gotoif lt, scr_seq_0131_0430
	comparevartovalue VAR_UNK_4103, 1
	gotoif eq, scr_seq_0131_0545
	call scr_seq_0131_0550
	comparevartovalue VAR_TEMP_x400A, 0
	gotoif eq, scr_seq_0131_0633
	comparevartovalue VAR_TEMP_x400A, 2
	gotoif eq, scr_seq_0131_061D
	comparevartovalue VAR_TEMP_x400A, 3
	gotoif eq, scr_seq_0131_0628
	npc_msg 27
	goto scr_seq_0131_0433

scr_seq_0131_0430:
	npc_msg 13
scr_seq_0131_0433:
	scrcmd_820 1
	setvar VAR_TEMP_x4009, 483
	goto scr_seq_0131_0514

scr_seq_0131_0442:
	.byte 0x02, 0x00
scr_seq_0131_0444:
	scrcmd_609
	lockall
	comparevartovalue VAR_UNK_40FB, 13
	gotoif lt, scr_seq_0131_0498
	comparevartovalue VAR_UNK_4103, 2
	gotoif eq, scr_seq_0131_0545
	call scr_seq_0131_0550
	comparevartovalue VAR_TEMP_x400A, 0
	gotoif eq, scr_seq_0131_0633
	comparevartovalue VAR_TEMP_x400A, 2
	gotoif eq, scr_seq_0131_061D
	comparevartovalue VAR_TEMP_x400A, 3
	gotoif eq, scr_seq_0131_0628
	npc_msg 28
	goto scr_seq_0131_049B

scr_seq_0131_0498:
	npc_msg 14
scr_seq_0131_049B:
	scrcmd_820 2
	setvar VAR_TEMP_x4009, 484
	goto scr_seq_0131_0514

scr_seq_0131_04AA:
	.byte 0x02, 0x00
scr_seq_0131_04AC:
	scrcmd_609
	lockall
	comparevartovalue VAR_UNK_40FB, 13
	gotoif lt, scr_seq_0131_0500
	comparevartovalue VAR_UNK_4103, 3
	gotoif eq, scr_seq_0131_0545
	call scr_seq_0131_0550
	comparevartovalue VAR_TEMP_x400A, 0
	gotoif eq, scr_seq_0131_0633
	comparevartovalue VAR_TEMP_x400A, 2
	gotoif eq, scr_seq_0131_061D
	comparevartovalue VAR_TEMP_x400A, 3
	gotoif eq, scr_seq_0131_0628
	npc_msg 29
	goto scr_seq_0131_0503

scr_seq_0131_0500:
	npc_msg 15
scr_seq_0131_0503:
	scrcmd_820 3
	setvar VAR_TEMP_x4009, 487
	goto scr_seq_0131_0514

scr_seq_0131_0512:
	.byte 0x02, 0x00
scr_seq_0131_0514:
	scrcmd_490 16393
	scrcmd_746
	getmenuchoice VAR_SPECIAL_x800C
	scrcmd_747
	comparevartovalue VAR_SPECIAL_x800C, 0
	gotoif eq, scr_seq_0131_063E
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif ge, scr_seq_0131_053C
	end

scr_seq_0131_053C:
	closemsg
	scrcmd_820 0
	releaseall
	end

scr_seq_0131_0545:
	npc_msg 30
	waitbutton
	closemsg
	releaseall
	end

scr_seq_0131_0550:
	get_party_count VAR_SPECIAL_x8004
	comparevartovalue VAR_SPECIAL_x8004, 1
	gotoif eq, scr_seq_0131_056D
	scrcmd_490 16392
	setvar VAR_TEMP_x400A, 2
	return

scr_seq_0131_056D:
	get_lead_mon_index VAR_TEMP_x4000
	comparevartovalue VAR_UNK_4102, 1
	gotoif ne, scr_seq_0131_05B2
	scrcmd_698 1, 16384, 32780
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif eq, scr_seq_0131_0605
	scrcmd_698 2, 16384, 32780
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif eq, scr_seq_0131_060D
	goto scr_seq_0131_0615

scr_seq_0131_05AC:
	.byte 0x16, 0x00, 0x47, 0x00
	.byte 0x00, 0x00
scr_seq_0131_05B2:
	comparevartovalue VAR_UNK_4102, 2
	gotoif ne, scr_seq_0131_05F3
	scrcmd_698 2, 16384, 32780
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif eq, scr_seq_0131_0605
	scrcmd_698 1, 16384, 32780
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif eq, scr_seq_0131_060D
	goto scr_seq_0131_0615

scr_seq_0131_05ED:
	.byte 0x16, 0x00, 0x06
	.byte 0x00, 0x00, 0x00
scr_seq_0131_05F3:
	goto scr_seq_0131_0615

scr_seq_0131_05F9:
	.byte 0xea, 0x01, 0x07, 0x40, 0x29, 0x00, 0x0a
	.byte 0x40, 0x02, 0x00, 0x1b, 0x00
scr_seq_0131_0605:
	setvar VAR_TEMP_x400A, 1
	return

scr_seq_0131_060D:
	setvar VAR_TEMP_x400A, 3
	return

scr_seq_0131_0615:
	setvar VAR_TEMP_x400A, 0
	return

scr_seq_0131_061D:
	npc_msg 31
	waitbutton
	closemsg
	releaseall
	end

scr_seq_0131_0628:
	npc_msg 33
	waitbutton
	closemsg
	releaseall
	end

scr_seq_0131_0633:
	npc_msg 30
	waitbutton
	closemsg
	releaseall
	end

scr_seq_0131_063E:
	closemsg
	comparevartovalue VAR_UNK_40FB, 13
	gotoif ne, scr_seq_0131_0659
	setvar VAR_UNK_40FB, 14
	goto scr_seq_0131_065F

scr_seq_0131_0659:
	setvar VAR_UNK_40FB, 9
scr_seq_0131_065F:
	scrcmd_820 0
	setvar VAR_UNK_4104, 0
	get_player_coords VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	scrcmd_102 VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	scrcmd_386 VAR_TEMP_x4002
	comparevartovalue VAR_TEMP_x4009, 483
	gotoif ne, scr_seq_0131_0691
	goto scr_seq_0131_06B0

scr_seq_0131_068B:
	.byte 0x16, 0x00, 0x1f, 0x00, 0x00
	.byte 0x00
scr_seq_0131_0691:
	comparevartovalue VAR_TEMP_x4009, 484
	gotoif ne, scr_seq_0131_06AA
	goto scr_seq_0131_0731

scr_seq_0131_06A4:
	.byte 0x16, 0x00, 0x06, 0x00, 0x00, 0x00
scr_seq_0131_06AA:
	goto scr_seq_0131_07B2

scr_seq_0131_06B0:
	comparevartovalue VAR_TEMP_x4002, 0
	gotoif ne, scr_seq_0131_06D3
	apply_movement 253, scr_seq_0131_0BE4
	apply_movement 241, scr_seq_0131_0C28
	goto scr_seq_0131_0729

scr_seq_0131_06D3:
	comparevartovalue VAR_TEMP_x4002, 3
	gotoif ne, scr_seq_0131_06F6
	apply_movement 253, scr_seq_0131_0BF4
	apply_movement 241, scr_seq_0131_0C28
	goto scr_seq_0131_0729

scr_seq_0131_06F6:
	comparevartovalue VAR_TEMP_x4002, 2
	gotoif ne, scr_seq_0131_0719
	apply_movement 253, scr_seq_0131_0C08
	apply_movement 241, scr_seq_0131_0C28
	goto scr_seq_0131_0729

scr_seq_0131_0719:
	apply_movement 253, scr_seq_0131_0C18
	apply_movement 241, scr_seq_0131_0C28
scr_seq_0131_0729:
	wait_movement
	goto scr_seq_0131_0833

scr_seq_0131_0731:
	comparevartovalue VAR_TEMP_x4002, 0
	gotoif ne, scr_seq_0131_0754
	apply_movement 253, scr_seq_0131_0C34
	apply_movement 241, scr_seq_0131_0C78
	goto scr_seq_0131_07AA

scr_seq_0131_0754:
	comparevartovalue VAR_TEMP_x4002, 3
	gotoif ne, scr_seq_0131_0777
	apply_movement 253, scr_seq_0131_0C44
	apply_movement 241, scr_seq_0131_0C78
	goto scr_seq_0131_07AA

scr_seq_0131_0777:
	comparevartovalue VAR_TEMP_x4002, 2
	gotoif ne, scr_seq_0131_079A
	apply_movement 253, scr_seq_0131_0C54
	apply_movement 241, scr_seq_0131_0C78
	goto scr_seq_0131_07AA

scr_seq_0131_079A:
	apply_movement 253, scr_seq_0131_0C68
	apply_movement 241, scr_seq_0131_0C78
scr_seq_0131_07AA:
	wait_movement
	goto scr_seq_0131_0833

scr_seq_0131_07B2:
	comparevartovalue VAR_TEMP_x4002, 0
	gotoif ne, scr_seq_0131_07D5
	apply_movement 253, scr_seq_0131_0C84
	apply_movement 241, scr_seq_0131_0CC4
	goto scr_seq_0131_082B

scr_seq_0131_07D5:
	comparevartovalue VAR_TEMP_x4002, 3
	gotoif ne, scr_seq_0131_07F8
	apply_movement 253, scr_seq_0131_0C90
	apply_movement 241, scr_seq_0131_0CC4
	goto scr_seq_0131_082B

scr_seq_0131_07F8:
	comparevartovalue VAR_TEMP_x4002, 2
	gotoif ne, scr_seq_0131_081B
	apply_movement 253, scr_seq_0131_0CA0
	apply_movement 241, scr_seq_0131_0CC4
	goto scr_seq_0131_082B

scr_seq_0131_081B:
	apply_movement 253, scr_seq_0131_0CB0
	apply_movement 241, scr_seq_0131_0CC4
scr_seq_0131_082B:
	wait_movement
	goto scr_seq_0131_0833

scr_seq_0131_0833:
	fade_out_bgm 0, 30
	play_se SEQ_SE_GS_TAMASYUTUGEN
	scrcmd_816
	scrcmd_074 2366
	scrcmd_773 2
	comparevartovalue VAR_UNK_40FB, 14
	gotoif eq, scr_seq_0131_086E
	scrcmd_099 0
	show_person_at 0, 16, 1, 28, 0
	wait 5, VAR_SPECIAL_x800C
	scrcmd_098 0
scr_seq_0131_086E:
	comparevartovalue VAR_TEMP_x4009, 483
	gotoif ne, scr_seq_0131_0889
	apply_movement 255, scr_seq_0131_0CCC
	goto scr_seq_0131_08AC

scr_seq_0131_0889:
	comparevartovalue VAR_TEMP_x4009, 484
	gotoif ne, scr_seq_0131_08A4
	apply_movement 255, scr_seq_0131_0CD8
	goto scr_seq_0131_08AC

scr_seq_0131_08A4:
	apply_movement 255, scr_seq_0131_0CE4
scr_seq_0131_08AC:
	wait 150, VAR_SPECIAL_x800C
	fade_screen 6, 30, 1, 0
	wait_fade
	get_player_coords VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	scrcmd_102 VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	scrcmd_490 32772
	scrcmd_490 32773
	apply_movement 241, scr_seq_0131_0CF0
	wait_movement
	play_se SEQ_SE_GS_TAMASYUTUGEN
	comparevartovalue VAR_TEMP_x4009, 483
	gotoif ne, scr_seq_0131_08F6
	scrcmd_817 0
	goto scr_seq_0131_090F

scr_seq_0131_08F6:
	comparevartovalue VAR_TEMP_x4009, 484
	gotoif ne, scr_seq_0131_090C
	scrcmd_817 1
	goto scr_seq_0131_090F

scr_seq_0131_090C:
	scrcmd_817 2
scr_seq_0131_090F:
	scrcmd_074 2322
	apply_movement 255, scr_seq_0131_0D0C
	wait_movement
	scrcmd_819
	wait 2, VAR_SPECIAL_x800C
	npc_msg 25
	scrcmd_490 16393
	buffer_players_name 0
	scrcmd_202 1, 16393, 0, 0
	play_fanfare SEQ_ME_SHINKAOME
	npc_msg 26
	wait_fanfare
	closemsg
	apply_movement 241, scr_seq_0131_0CF8
	wait_movement
	scrcmd_103
	reset_bgm
	scrcmd_490 16393
	comparevartovalue VAR_TEMP_x4009, 483
	gotoif ne, scr_seq_0131_097B
	scrcmd_137 483, 1, 135, 0, 0, 32780
	setvar VAR_UNK_4103, 1
	goto scr_seq_0131_09B6

scr_seq_0131_097B:
	comparevartovalue VAR_TEMP_x4009, 484
	gotoif ne, scr_seq_0131_09A2
	scrcmd_137 484, 1, 136, 0, 0, 32780
	setvar VAR_UNK_4103, 2
	goto scr_seq_0131_09B6

scr_seq_0131_09A2:
	scrcmd_137 487, 1, 112, 1, 26, 32780
	setvar VAR_UNK_4103, 3
scr_seq_0131_09B6:
	scrcmd_746
	npc_msg 32
	getmenuchoice VAR_SPECIAL_x800C
	closemsg
	scrcmd_815 0
	comparevartovalue VAR_SPECIAL_x800C, 0
	callif eq, scr_seq_0131_0BB2
	comparevartovalue VAR_UNK_40FB, 14
	gotoif eq, scr_seq_0131_0A4D
	apply_movement 0, scr_seq_0131_0D28
	apply_movement 255, scr_seq_0131_0D00
	apply_movement 253, scr_seq_0131_0D1C
	wait_movement
	npc_msg 16
	closemsg
	apply_movement 0, scr_seq_0131_0D4C
	wait_movement
	npc_msg 17
	closemsg
	play_se SEQ_SE_GS_ZENIGAME_JOURO
	fade_screen 6, 6, 0, 0
	wait_fade
	wait 1, VAR_SPECIAL_x800C
	fade_screen 6, 6, 1, 0
	wait_fade
	apply_movement 0, scr_seq_0131_0D30
	wait_movement
	npc_msg 18
	closemsg
	apply_movement 0, scr_seq_0131_0D44
	wait_movement
	npc_msg 19
	closemsg
scr_seq_0131_0A4D:
	play_se SEQ_SE_GS_ZENIGAME_JOURO
	fade_screen 6, 6, 0, 0
	wait_fade
	wait 1, VAR_SPECIAL_x800C
	fade_screen 6, 6, 1, 0
	wait_fade
	comparevartovalue VAR_UNK_40FB, 14
	gotoif eq, scr_seq_0131_0AAA
	get_lead_mon_index VAR_TEMP_x4005
	scrcmd_698 2, 16389, 16390
	comparevartovalue VAR_TEMP_x4006, 1
	gotoif ne, scr_seq_0131_0AA0
	setvar VAR_UNK_4102, 1
	goto scr_seq_0131_0AA6

scr_seq_0131_0AA0:
	setvar VAR_UNK_4102, 2
scr_seq_0131_0AA6:
	clearflag FLAG_UNK_2E7
scr_seq_0131_0AAA:
	play_se SEQ_SE_DP_KAIDAN2
	comparevartovalue VAR_UNK_403E, 6
	gotoif ne, scr_seq_0131_0AE5
	fade_screen 6, 1, 0, 0
	wait_fade
	scrcmd_176 490, 0, 9, 24, 1
	fade_screen 6, 1, 1, 0
	wait_fade
	goto scr_seq_0131_0BAE

scr_seq_0131_0AE5:
	comparevartovalue VAR_UNK_403E, 7
	gotoif ne, scr_seq_0131_0B1C
	fade_screen 6, 1, 0, 0
	wait_fade
	scrcmd_176 492, 0, 9, 24, 1
	fade_screen 6, 1, 1, 0
	wait_fade
	goto scr_seq_0131_0BAE

scr_seq_0131_0B1C:
	comparevartovalue VAR_UNK_403E, 8
	gotoif ne, scr_seq_0131_0B53
	fade_screen 6, 1, 0, 0
	wait_fade
	scrcmd_176 492, 0, 9, 24, 1
	fade_screen 6, 1, 1, 0
	wait_fade
	goto scr_seq_0131_0BAE

scr_seq_0131_0B53:
	comparevartovalue VAR_UNK_403E, 9
	gotoif ne, scr_seq_0131_0B8A
	fade_screen 6, 1, 0, 0
	wait_fade
	scrcmd_176 492, 0, 9, 24, 1
	fade_screen 6, 1, 1, 0
	wait_fade
	goto scr_seq_0131_0BAE

scr_seq_0131_0B8A:
	fade_screen 6, 1, 0, 0
	wait_fade
	scrcmd_176 315, 0, 9, 24, 1
	fade_screen 6, 1, 1, 0
	wait_fade
scr_seq_0131_0BAE:
	releaseall
	end

scr_seq_0131_0BB2:
	get_party_count VAR_SPECIAL_x800C
	subvar VAR_SPECIAL_x800C, 1
	setvar VAR_TEMP_x4008, 0
	fade_screen 6, 1, 0, 0
	wait_fade
	scrcmd_173 VAR_SPECIAL_x800C, VAR_TEMP_x4008
	scrcmd_819
	fade_screen 6, 1, 1, 0
	wait_fade
	return


scr_seq_0131_0BE4:
	.short 11, 4
	.short 8, 4
	.short 33, 1
	.short 254, 0

scr_seq_0131_0BF4:
	.short 8, 2
	.short 11, 5
	.short 8, 1
	.short 33, 1
	.short 254, 0

scr_seq_0131_0C08:
	.short 11, 3
	.short 8, 3
	.short 33, 1
	.short 254, 0

scr_seq_0131_0C18:
	.short 11, 4
	.short 8, 2
	.short 33, 1
	.short 254, 0

scr_seq_0131_0C28:
	.short 11, 4
	.short 8, 3
	.short 254, 0

scr_seq_0131_0C34:
	.short 10, 4
	.short 8, 4
	.short 33, 1
	.short 254, 0

scr_seq_0131_0C44:
	.short 10, 3
	.short 8, 3
	.short 33, 1
	.short 254, 0

scr_seq_0131_0C54:
	.short 8, 2
	.short 10, 5
	.short 8, 1
	.short 33, 1
	.short 254, 0

scr_seq_0131_0C68:
	.short 10, 4
	.short 8, 2
	.short 33, 1
	.short 254, 0

scr_seq_0131_0C78:
	.short 10, 4
	.short 8, 3
	.short 254, 0

scr_seq_0131_0C84:
	.short 9, 3
	.short 33, 1
	.short 254, 0

scr_seq_0131_0C90:
	.short 9, 4
	.short 11, 1
	.short 33, 1
	.short 254, 0

scr_seq_0131_0CA0:
	.short 9, 4
	.short 10, 1
	.short 33, 1
	.short 254, 0

scr_seq_0131_0CB0:
	.short 11, 1
	.short 9, 5
	.short 10, 1
	.short 33, 1
	.short 254, 0

scr_seq_0131_0CC4:
	.short 9, 4
	.short 254, 0

scr_seq_0131_0CCC:
	.short 23, 4
	.short 0, 1
	.short 254, 0

scr_seq_0131_0CD8:
	.short 22, 4
	.short 0, 1
	.short 254, 0

scr_seq_0131_0CE4:
	.short 13, 7
	.short 0, 1
	.short 254, 0

scr_seq_0131_0CF0:
	.short 12, 3
	.short 254, 0

scr_seq_0131_0CF8:
	.short 13, 3
	.short 254, 0

scr_seq_0131_0D00:
	.short 65, 2
	.short 13, 2
	.short 254, 0

scr_seq_0131_0D0C:
	.short 63, 1
	.short 75, 1
	.short 63, 1
	.short 254, 0

scr_seq_0131_0D1C:
	.short 65, 2
	.short 13, 4
	.short 254, 0

scr_seq_0131_0D28:
	.short 12, 9
	.short 254, 0

scr_seq_0131_0D30:
	.short 3, 1
	.short 63, 3
	.short 2, 1
	.short 63, 3
	.short 254, 0

scr_seq_0131_0D44:
	.short 32, 1
	.short 254, 0

scr_seq_0131_0D4C:
	.short 63, 1
	.short 33, 1
	.short 254, 0
	.balign 4, 0
