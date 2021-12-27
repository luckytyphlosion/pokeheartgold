#include "constants/scrcmd.h"
	.include "asm/macros/script.inc"

	.rodata

	scrdef scr_seq_0019_000E ; 000
	scrdef scr_seq_0019_0074 ; 001
	scrdef scr_seq_0019_02A1 ; 002
	scrdef_end

scr_seq_0019_000E:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	checkflag FLAG_UNK_116
	gotoif TRUE, scr_seq_0019_0053
	scrcmd_495 VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 8
	gotoif eq, scr_seq_0019_0048
	checkflag FLAG_UNK_108
	gotoif TRUE, scr_seq_0019_005E
	checkflag FLAG_UNK_105
	gotoif TRUE, scr_seq_0019_0069
scr_seq_0019_0048:
	npc_msg 3
	waitbutton
	closemsg
	releaseall
	end

scr_seq_0019_0053:
	npc_msg 6
	waitbutton
	closemsg
	releaseall
	end

scr_seq_0019_005E:
	npc_msg 5
	waitbutton
	closemsg
	releaseall
	end

scr_seq_0019_0069:
	npc_msg 4
	waitbutton
	closemsg
	releaseall
	end

scr_seq_0019_0074:
	scrcmd_609
	lockall
	scrcmd_386 VAR_TEMP_x400A
	comparevartovalue VAR_TEMP_x400A, 0
	gotoif ne, scr_seq_0019_0097
	apply_movement 0, scr_seq_0019_02D8
	goto scr_seq_0019_009F

scr_seq_0019_0097:
	apply_movement 0, scr_seq_0019_02E0
scr_seq_0019_009F:
	wait_movement
	get_player_coords VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	comparevartovalue VAR_TEMP_x400A, 0
	callif eq, scr_seq_0019_0150
	comparevartovalue VAR_TEMP_x400A, 2
	callif eq, scr_seq_0019_0192
	checkflag FLAG_UNK_093
	gotoif TRUE, scr_seq_0019_028E
	scrcmd_602 0
	scrcmd_603
	scrcmd_604 56
	comparevartovalue VAR_TEMP_x400A, 0
	gotoif ne, scr_seq_0019_00F1
	apply_movement 255, scr_seq_0019_0344
	goto scr_seq_0019_0101

scr_seq_0019_00F1:
	apply_movement 0, scr_seq_0019_0354
	apply_movement 255, scr_seq_0019_0354
scr_seq_0019_0101:
	wait_movement
	scrcmd_603
	scrcmd_602 1
	scrcmd_604 48
	scrcmd_495 VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 7
	gotoif ne, scr_seq_0019_0127
	npc_msg 0
	goto scr_seq_0019_012A

scr_seq_0019_0127:
	npc_msg 1
scr_seq_0019_012A:
	closemsg
	get_player_coords VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	comparevartovalue VAR_TEMP_x400A, 0
	callif eq, scr_seq_0019_01EF
	comparevartovalue VAR_TEMP_x400A, 2
	callif eq, scr_seq_0019_0231
	releaseall
	end

scr_seq_0019_0150:
	comparevartovalue VAR_SPECIAL_x8004, 7
	gotoif ne, scr_seq_0019_016B
	apply_movement 0, scr_seq_0019_02EC
	goto scr_seq_0019_018E

scr_seq_0019_016B:
	comparevartovalue VAR_SPECIAL_x8004, 8
	gotoif ne, scr_seq_0019_0186
	apply_movement 0, scr_seq_0019_02FC
	goto scr_seq_0019_018E

scr_seq_0019_0186:
	apply_movement 0, scr_seq_0019_0304
scr_seq_0019_018E:
	wait_movement
	return

scr_seq_0019_0192:
	comparevartovalue VAR_SPECIAL_x8005, 7
	gotoif ne, scr_seq_0019_01AD
	apply_movement 0, scr_seq_0019_0314
	goto scr_seq_0019_01EB

scr_seq_0019_01AD:
	comparevartovalue VAR_SPECIAL_x8005, 8
	gotoif ne, scr_seq_0019_01C8
	apply_movement 0, scr_seq_0019_0324
	goto scr_seq_0019_01EB

scr_seq_0019_01C8:
	comparevartovalue VAR_SPECIAL_x8005, 9
	gotoif ne, scr_seq_0019_01E3
	apply_movement 0, scr_seq_0019_032C
	goto scr_seq_0019_01EB

scr_seq_0019_01E3:
	apply_movement 0, scr_seq_0019_0338
scr_seq_0019_01EB:
	wait_movement
	return

scr_seq_0019_01EF:
	comparevartovalue VAR_SPECIAL_x8004, 7
	gotoif ne, scr_seq_0019_020A
	apply_movement 0, scr_seq_0019_0364
	goto scr_seq_0019_022D

scr_seq_0019_020A:
	comparevartovalue VAR_SPECIAL_x8004, 8
	gotoif ne, scr_seq_0019_0225
	apply_movement 0, scr_seq_0019_0378
	goto scr_seq_0019_022D

scr_seq_0019_0225:
	apply_movement 0, scr_seq_0019_0384
scr_seq_0019_022D:
	wait_movement
	return

scr_seq_0019_0231:
	comparevartovalue VAR_SPECIAL_x8005, 7
	gotoif ne, scr_seq_0019_024C
	apply_movement 0, scr_seq_0019_0398
	goto scr_seq_0019_028A

scr_seq_0019_024C:
	comparevartovalue VAR_SPECIAL_x8005, 8
	gotoif ne, scr_seq_0019_0267
	apply_movement 0, scr_seq_0019_03A4
	goto scr_seq_0019_028A

scr_seq_0019_0267:
	comparevartovalue VAR_SPECIAL_x8005, 9
	gotoif ne, scr_seq_0019_0282
	apply_movement 0, scr_seq_0019_03B0
	goto scr_seq_0019_028A

scr_seq_0019_0282:
	apply_movement 0, scr_seq_0019_03C0
scr_seq_0019_028A:
	wait_movement
	return

scr_seq_0019_028E:
	npc_msg 2
	closemsg
	scrcmd_774 0
	releaseall
	setvar VAR_UNK_40F3, 1
	end

scr_seq_0019_02A1:
	wait 30, VAR_SPECIAL_x800C
	comparevartovalue VAR_TEMP_x400A, 0
	gotoif ne, scr_seq_0019_02C2
	apply_movement 0, scr_seq_0019_03D0
	goto scr_seq_0019_02CA

scr_seq_0019_02C2:
	apply_movement 0, scr_seq_0019_03E0
scr_seq_0019_02CA:
	wait_movement
	npc_msg 3
	waitbutton
	closemsg
	end

scr_seq_0019_02D5:
	.byte 0x00, 0x00, 0x00

scr_seq_0019_02D8:
	.short 75, 1
	.short 254, 0

scr_seq_0019_02E0:
	.short 3, 1
	.short 75, 1
	.short 254, 0

scr_seq_0019_02EC:
	.short 13, 2
	.short 14, 1
	.short 13, 1
	.short 254, 0

scr_seq_0019_02FC:
	.short 13, 3
	.short 254, 0

scr_seq_0019_0304:
	.short 13, 2
	.short 15, 1
	.short 13, 1
	.short 254, 0

scr_seq_0019_0314:
	.short 12, 1
	.short 15, 2
	.short 15, 1
	.short 254, 0

scr_seq_0019_0324:
	.short 15, 3
	.short 254, 0

scr_seq_0019_032C:
	.short 13, 1
	.short 15, 3
	.short 254, 0

scr_seq_0019_0338:
	.short 13, 2
	.short 15, 3
	.short 254, 0

scr_seq_0019_0344:
	.short 71, 1
	.short 13, 1
	.short 72, 1
	.short 254, 0

scr_seq_0019_0354:
	.short 71, 1
	.short 15, 1
	.short 72, 1
	.short 254, 0

scr_seq_0019_0364:
	.short 12, 1
	.short 15, 1
	.short 12, 2
	.short 33, 1
	.short 254, 0

scr_seq_0019_0378:
	.short 12, 3
	.short 33, 1
	.short 254, 0

scr_seq_0019_0384:
	.short 12, 1
	.short 14, 1
	.short 12, 2
	.short 33, 1
	.short 254, 0

scr_seq_0019_0398:
	.short 14, 4
	.short 13, 1
	.short 254, 0

scr_seq_0019_03A4:
	.short 14, 4
	.short 33, 1
	.short 254, 0

scr_seq_0019_03B0:
	.short 14, 4
	.short 12, 1
	.short 33, 1
	.short 254, 0

scr_seq_0019_03C0:
	.short 14, 4
	.short 12, 2
	.short 33, 1
	.short 254, 0

scr_seq_0019_03D0:
	.short 71, 1
	.short 4, 1
	.short 72, 1
	.short 254, 0

scr_seq_0019_03E0:
	.short 71, 1
	.short 6, 1
	.short 72, 1
	.short 254, 0
	.balign 4, 0
