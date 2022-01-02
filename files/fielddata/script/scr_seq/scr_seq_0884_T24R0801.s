#include "constants/scrcmd.h"
#include "fielddata/script/scr_seq/event_T24R0801.h"
#include "msgdata/msg/msg_0580_T24R0801.h"
	.include "asm/macros/script.inc"

	.rodata

	scrdef scr_seq_T24R0801_000
	scrdef_end

scr_seq_T24R0801_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	get_game_version VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 7
	gotoif ne, _002B
	goto _0031
	.byte 0x16, 0x00, 0x06, 0x00, 0x00, 0x00
_002B:
	goto _0073

_0031:
	hasitem ITEM_CLEAR_BELL, 1, VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif ge, _0061
	hasitem ITEM_RAINBOW_WING, 1, VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif ge, _006A
	goto _00B5

_0061:
	npc_msg msg_0580_T24R0801_00003
	goto _00B8

_006A:
	npc_msg msg_0580_T24R0801_00001
	goto _00B8

_0073:
	hasitem ITEM_TIDAL_BELL, 1, VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif ge, _00A3
	hasitem ITEM_SILVER_WING, 1, VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif ge, _00AC
	goto _00B5

_00A3:
	npc_msg msg_0580_T24R0801_00004
	goto _00B8

_00AC:
	npc_msg msg_0580_T24R0801_00002
	goto _00B8

_00B5:
	npc_msg msg_0580_T24R0801_00000
_00B8:
	waitbutton
	closemsg
	releaseall
	end
	.balign 4, 0
