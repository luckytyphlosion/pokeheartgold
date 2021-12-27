#include "constants/scrcmd.h"
	.include "asm/macros/script.inc"

	.rodata

	scrdef scr_seq_0825_0010 ; 000
	scrdef scr_seq_0825_000A ; 001
	scrdef_end

scr_seq_0825_000A:
	scrcmd_081 0
	end

scr_seq_0825_0010:
	scrcmd_609
	lockall
	scrcmd_602 0
	scrcmd_603
	scrcmd_604 55
	apply_movement 255, scr_seq_0825_0188
	apply_movement 0, scr_seq_0825_0194
	wait_movement
	scrcmd_603
	scrcmd_602 1
	scrcmd_604 48
	buffer_players_name 0
	gender_msgbox 0, 1
	closemsg
	scrcmd_602 0
	scrcmd_603
	scrcmd_604 55
	apply_movement 255, scr_seq_0825_01A8
	wait_movement
	scrcmd_603
	scrcmd_602 1
	scrcmd_604 48
	party_count_not_egg VAR_SPECIAL_x800C
	scrcmd_514 32780
	scrcmd_515 23
	fade_screen 6, 1, 0, 0
	wait_fade
	call scr_seq_0825_01B4
	hasitem ITEM_S_S__TICKET, 1, VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif eq, scr_seq_0825_009A
	setvar VAR_UNK_4106, 3
scr_seq_0825_009A:
	setflag FLAG_UNK_97E
	clearflag FLAG_UNK_2CC
	checkflag FLAG_UNK_116
	callif FALSE, scr_seq_0825_01C9
	checkflag FLAG_UNK_117
	callif FALSE, scr_seq_0825_01CF
	checkflag FLAG_UNK_169
	callif FALSE, scr_seq_0825_01D5
	checkflag FLAG_UNK_16A
	callif FALSE, scr_seq_0825_01DB
	checkflag FLAG_UNK_16B
	callif FALSE, scr_seq_0825_01E1
	checkflag FLAG_UNK_16C
	callif FALSE, scr_seq_0825_01E7
	checkflag FLAG_UNK_14A
	callif FALSE, scr_seq_0825_01ED
	checkflag FLAG_UNK_16D
	callif FALSE, scr_seq_0825_0206
	checkflag FLAG_UNK_173
	gotoif FALSE, scr_seq_0825_020C
scr_seq_0825_0105:
	checkflag FLAG_UNK_175
	callif FALSE, scr_seq_0825_0227
	scrcmd_495 VAR_TEMP_x4000
	comparevartovalue VAR_TEMP_x4000, 7
	gotoif ne, scr_seq_0825_012D
	goto scr_seq_0825_023A

scr_seq_0825_0127:
	.byte 0x16, 0x00, 0x06, 0x00, 0x00, 0x00
scr_seq_0825_012D:
	goto scr_seq_0825_024F

scr_seq_0825_0133:
	checkflag FLAG_UNK_17B
	callif FALSE, scr_seq_0825_0264
	comparevartovalue VAR_UNK_4046, 2
	callif eq, scr_seq_0825_026A
	comparevartovalue VAR_UNK_4045, 2
	callif eq, scr_seq_0825_0275
	comparevartovalue VAR_UNK_4047, 2
	callif eq, scr_seq_0825_0280
	comparevartovalue VAR_UNK_4048, 2
	callif eq, scr_seq_0825_028B
	scrcmd_163 0
	scrcmd_150
	fade_screen 6, 1, 1, 0
	wait_fade
	releaseall
	end


scr_seq_0825_0188:
	.short 12, 14
	.short 3, 2
	.short 254, 0

scr_seq_0825_0194:
	.short 12, 12
	.short 3, 2
	.short 15, 1
	.short 2, 2
	.short 254, 0

scr_seq_0825_01A8:
	.short 0, 2
	.short 12, 4
	.short 254, 0
scr_seq_0825_01B4:
	checkflag FLAG_UNK_964
	gotoif TRUE, scr_seq_0825_01C3
	setflag FLAG_UNK_998
scr_seq_0825_01C3:
	clearflag FLAG_UNK_25F
	return

scr_seq_0825_01C9:
	clearflag FLAG_UNK_242
	return

scr_seq_0825_01CF:
	clearflag FLAG_UNK_243
	return

scr_seq_0825_01D5:
	clearflag FLAG_UNK_1C2
	return

scr_seq_0825_01DB:
	clearflag FLAG_UNK_1E3
	return

scr_seq_0825_01E1:
	clearflag FLAG_UNK_305
	return

scr_seq_0825_01E7:
	clearflag FLAG_UNK_306
	return

scr_seq_0825_01ED:
	scrcmd_294 15, VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif ne, scr_seq_0825_0204
	clearflag FLAG_UNK_297
scr_seq_0825_0204:
	return

scr_seq_0825_0206:
	clearflag FLAG_UNK_307
	return

scr_seq_0825_020C:
	checkflag FLAG_UNK_0F9
	gotoif TRUE, scr_seq_0825_021D
	goto scr_seq_0825_0105

scr_seq_0825_021D:
	clearflag FLAG_UNK_31B
	goto scr_seq_0825_0105

scr_seq_0825_0227:
	comparevartovalue VAR_UNK_4089, 3
	gotoif ne, scr_seq_0825_0238
	clearflag FLAG_UNK_30E
scr_seq_0825_0238:
	return

scr_seq_0825_023A:
	checkflag FLAG_UNK_17A
	gotoif TRUE, scr_seq_0825_0133
	clearflag FLAG_UNK_18B
	goto scr_seq_0825_0133

scr_seq_0825_024F:
	checkflag FLAG_UNK_17A
	gotoif TRUE, scr_seq_0825_0133
	clearflag FLAG_UNK_18B
	goto scr_seq_0825_0133

scr_seq_0825_0264:
	clearflag FLAG_UNK_2D2
	return

scr_seq_0825_026A:
	setvar VAR_UNK_4046, 0
	scrcmd_464 1
	return

scr_seq_0825_0275:
	setvar VAR_UNK_4045, 0
	scrcmd_464 0
	return

scr_seq_0825_0280:
	setvar VAR_UNK_4047, 0
	scrcmd_464 2
	return

scr_seq_0825_028B:
	setvar VAR_UNK_4048, 0
	scrcmd_464 3
	return
	.balign 4, 0
