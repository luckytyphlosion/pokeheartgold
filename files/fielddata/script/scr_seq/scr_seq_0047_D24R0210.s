#include "constants/scrcmd.h"
#include "fielddata/script/scr_seq/event_D24R0210.h"
#include "msgdata/msg/msg_0003_EVERYWHERE.h"
	.include "asm/macros/script.inc"

	.rodata

	scrdef scr_seq_D24R0210_000
	scrdef scr_seq_D24R0210_001
	scrdef scr_seq_D24R0210_002
	scrdef_end

scr_seq_D24R0210_000:
	play_se SEQ_SE_GS_RAKKA01
	apply_movement obj_player, _0064
	scrcmd_374 255
	wait_movement
	scrcmd_561 0, 1, 1, 8
	play_se SEQ_SE_DP_SUTYA2
	setvar VAR_UNK_40D1, 0
	comparevartovalue VAR_UNK_40EE, 1
	gotoif eq, _004D
	setvar VAR_UNK_40EE, 1
	addvar VAR_UNK_40F1, 1
_004D:
	end

scr_seq_D24R0210_001:
	comparevartovalue VAR_UNK_40D1, 1
	gotoif ne, _0060
	scrcmd_375 255
_0060:
	end
	.byte 0x00, 0x00

_0064:
	step 68, 1
	step_end
scr_seq_D24R0210_002:
	scrcmd_609
	lockall
	setvar VAR_UNK_40CE, 1
	setflag FLAG_UNK_111
	scrcmd_729 VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 0
	gotoif eq, _009A
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif eq, _00FF
	end

_009A:
	scrcmd_386 VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 0
	gotoif ne, _00B9
	apply_movement obj_player, _0218
	goto _00F7

_00B9:
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif ne, _00D4
	apply_movement obj_player, _0234
	goto _00F7

_00D4:
	comparevartovalue VAR_SPECIAL_x800C, 2
	gotoif ne, _00EF
	apply_movement obj_player, _0250
	goto _00F7

_00EF:
	apply_movement obj_player, _026C
_00F7:
	wait_movement
	goto _017E

_00FF:
	scrcmd_386 VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 0
	gotoif ne, _0126
	apply_movement obj_player, _0218
	apply_movement obj_partner_poke, _0224
	goto _017C

_0126:
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif ne, _0149
	apply_movement obj_player, _0234
	apply_movement obj_partner_poke, _0240
	goto _017C

_0149:
	comparevartovalue VAR_SPECIAL_x800C, 2
	gotoif ne, _016C
	apply_movement obj_player, _0250
	apply_movement obj_partner_poke, _025C
	goto _017C

_016C:
	apply_movement obj_player, _026C
	apply_movement obj_partner_poke, _0278
_017C:
	wait_movement
_017E:
	play_se SEQ_SE_GS_RAKKA01
	comparevartovalue VAR_UNK_403E, 7
	gotoif ge, _01C4
	comparevartovalue VAR_UNK_403E, 6
	gotoif eq, _01EE
	fade_screen 6, 1, 0, 0x00
	wait_fade
	scrcmd_176 315, 0, 25, 42, VAR_SPECIAL_x800C
	fade_screen 6, 1, 1, 0x00
	wait_fade
_01C0:
	releaseall
	end

_01C4:
	fade_screen 6, 1, 0, 0x00
	wait_fade
	scrcmd_176 492, 0, 25, 42, VAR_SPECIAL_x800C
	fade_screen 6, 1, 1, 0x00
	wait_fade
	goto _01C0

_01EE:
	fade_screen 6, 1, 0, 0x00
	wait_fade
	scrcmd_176 490, 0, 25, 42, VAR_SPECIAL_x800C
	fade_screen 6, 1, 1, 0x00
	wait_fade
	goto _01C0


_0218:
	step 40, 4
	step 69, 1
	step_end

_0224:
	step 62, 3
	step 20, 1
	step 69, 1
	step_end

_0234:
	step 41, 4
	step 69, 1
	step_end

_0240:
	step 62, 3
	step 21, 1
	step 69, 1
	step_end

_0250:
	step 42, 4
	step 69, 1
	step_end

_025C:
	step 62, 3
	step 22, 1
	step 69, 1
	step_end

_026C:
	step 43, 4
	step 69, 1
	step_end

_0278:
	step 62, 3
	step 23, 1
	step 69, 1
	step_end
	.balign 4, 0
