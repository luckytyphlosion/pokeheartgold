#ifndef POKEHEARTGOLD_CONSTANTS_STD_SCRIPT_H
#define POKEHEARTGOLD_CONSTANTS_STD_SCRIPT_H

#include "constants/trainers.h"

// The _std_XXX constants are group thresholds for
// use in fieldmap.c (sScriptBankMapping).
// The std_XXX constants (no leading underscore)
// are for use in event scripts.

#define _std_misc                       2000
#define std_signpost                    2000
#define std_hidden_item_fanfare         2001
#define std_nurse_joy                   2002
#define std_obtain_item_verbose         2008
#define std_bag_is_full                 2009
#define std_mart_intro                  2011
#define std_wifi_club_closed            2025
#define std_play_friend_music           2029
#define std_fade_end_friend_music       2030
#define std_play_rival_intro_music      2031
#define std_give_item_verbose           2033
#define std_play_mom_music              2036
#define std_play_follow_music           2037
#define std_fade_end_mom_music          2038
#define std_phone_call                  2039
#define std_pokemart                    2048
#define std_special_mart                2052
#define std_play_kimono_girl_music      2067
#define std_fade_end_kimono_girl_music  2068
#define std_play_rival_outro_music      2070
#define std_fade_end_rival_outro_music  2071

#define _std_bookshelves                2500

#define _std_apricorn_tree              2800

#define _std_npc_trainer                3000
#define std_trainer(trainer) ((trainer)-FIRST_TRAINER_INDEX+_std_npc_trainer)

#define _std_npc_trainer_2              5000
#define std_trainer_2(trainer) ((trainer)-FIRST_TRAINER_INDEX+_std_npc_trainer_2)

#define _std_item_ball                  7000
#define std_itemball_r29_potion                  7000
#define std_itemball_r30_antidote                7001
#define std_itemball_r30_potion                  7002
#define std_itemball_r31_potion                  7003
#define std_itemball_r31_poke_ball               7004
#define std_itemball_t22_rare_candy              7005
#define std_itemball_t22_pp_up                   7006
#define std_itemball_d15r0101_parlyz_heal        7007
#define std_itemball_d15r0102_x_accuracy         7008
#define std_itemball_d15r0103_potion             7009
#define std_itemball_d15r0103_escape_rope        7010
#define std_itemball_d24r0101_potion             7011
#define std_itemball_d24r0101_hyper_potion       7012
#define std_itemball_d24r0212_heal_powder        7013
#define std_itemball_d24r0212_energypowder       7014
#define std_itemball_d24r0212_oran_berry         7015
#define std_itemball_d24r0212_pecha_berry        7016
#define std_itemball_d24r0213_heal_powder        7017
#define std_itemball_d24r0213_energy_root        7018
#define std_itemball_d24r0213_sitrus_berry       7019
#define std_itemball_d24r0213_moon_stone         7020
#define std_itemball_d24r0215_stardust           7021
#define std_itemball_d24r0215_star_piece         7022
#define std_itemball_d24r0215_leppa_berry        7023
#define std_itemball_d24r0215_mystic_water       7024
#define std_itemball_d24r0214_revival_herb       7025
#define std_itemball_d24r0214_charcoal           7026
#define std_itemball_d24r0214_life_orb           7027
#define std_itemball_d24r0214_leppa_berry        7028
#define std_itemball_r32_repel                   7029
#define std_itemball_r32_great_ball              7030
#define std_itemball_r32_tm09                    7031
#define std_itemball_r32_shell_bell              7032
#define std_itemball_d25r0101_x_attack           7033
#define std_itemball_d25r0101_great_ball         7034
#define std_itemball_d25r0101_potion             7035
#define std_itemball_d25r0101_awakening          7036
#define std_itemball_d25r0102_x_defense          7037
#define std_itemball_d25r0102_tm39               7038
#define std_itemball_d25r0103_elixir             7039
#define std_itemball_d25r0103_hyper_potion       7040
#define std_itemball_d26r0102_super_potion       7041
#define std_itemball_d26r0103_tm18               7042
#define std_itemball_d36r0101_revive             7043
#define std_itemball_d36r0101_x_attack           7044
#define std_itemball_d36r0101_antidote           7045
#define std_itemball_d36r0101_ether              7046
#define std_itemball_r34_nugget                  7047
#define std_itemball_r34_tm63                    7048
#define std_itemball_d37r0105_tm82               7049
#define std_itemball_d37r0105_max_ether          7050
#define std_itemball_d37r0105_ultra_ball         7051
#define std_itemball_d37r0103_burn_heal          7052
#define std_itemball_d37r0103_amulet_coin        7053
#define std_itemball_d37r0103_ether              7054
#define std_itemball_d37r0103_ultra_ball         7055
#define std_itemball_d37r0104_full_heal          7056
#define std_itemball_d37r0104_smoke_ball         7057
#define std_itemball_d37r0102_coin_case          7058
#define std_itemball_t25r1101_tm78               7059
#define std_itemball_d23r0104_ultra_ball         7060
#define std_itemball_r35_tm66                    7061
#define std_itemball_r35_parlyz_heal             7062
#define std_itemball_d22r0101_soothe_bell        7063
#define std_itemball_d22r0101_tm28               7064
#define std_itemball_d22r0101_shiny_stone        7065
#define std_itemball_r36_hyper_potion            7066
#define std_itemball_d18r0101_antidote           7067
#define std_itemball_d18r0101_hp_up              7068
#define std_itemball_d18r0102_tm12               7069
#define std_itemball_d17r0103_full_heal          7070
#define std_itemball_d17r0104_escape_rope        7071
#define std_itemball_d17r0104_ultra_ball         7072
#define std_itemball_d17r0104_pp_up              7073
#define std_itemball_d17r0105_rare_candy         7074
#define std_itemball_d17r0106_max_potion         7075
#define std_itemball_d17r0106_full_heal          7076
#define std_itemball_d17r0107_max_revive         7077
#define std_itemball_d17r0108_full_restore       7078
#define std_itemball_d17r0108_max_elixir         7079
#define std_itemball_d17r0108_nugget             7080
#define std_itemball_d17r0109_hp_up              7081
#define std_itemball_r38_max_potion              7082
#define std_itemball_r38_lax_incense             7083
#define std_itemball_r39_tm60                    7084
#define std_itemball_t26_tm57                    7085
#define std_itemball_d27r0103_rare_candy         7086
#define std_itemball_d27r0104_ether              7087
#define std_itemball_d27r0105_tm87               7088
#define std_itemball_d27r0106_super_repel        7089
#define std_itemball_d27r0107_super_potion       7090
#define std_itemball_w40_tm88                    7091
#define std_itemball_d40r0101_ultra_ball         7092
#define std_itemball_d40r0101_ultra_ball_2       7093
#define std_itemball_d40r0102_escape_rope        7094
#define std_itemball_d40r0102_carbos             7095
#define std_itemball_d40r0102_full_restore       7096
#define std_itemball_d40r0102_nugget             7097
#define std_itemball_d40r0102_calcium            7098
#define std_itemball_d40r0104_max_revive         7099
#define std_itemball_d40r0104_full_restore       7100
#define std_itemball_d40r0104_max_elixir         7101
#define std_itemball_d40r0106_rare_candy         7102
#define std_itemball_r47_revive                  7103
#define std_itemball_r47_lagging_tail            7104
#define std_itemball_r47_wave_incense            7105
#define std_itemball_r47_white_flute             7106
#define std_itemball_r48_nugget                  7107
#define std_itemball_r42_super_potion            7108
#define std_itemball_r42_dubious_disc            7109
#define std_itemball_r42_tm65                    7110
#define std_itemball_d38r0101_ether              7111
#define std_itemball_d38r0101_revive             7112
#define std_itemball_d38r0102_escape_rope        7113
#define std_itemball_d38r0102_nugget             7114
#define std_itemball_d38r0102_iron_ball          7115
#define std_itemball_d38r0102_max_potion         7116
#define std_itemball_d38r0102_iron               7117
#define std_itemball_d38r0102_max_revive         7118
#define std_itemball_d38r0102_ultra_ball         7119
#define std_itemball_d38r0102_full_incense       7120
#define std_itemball_d38r0102_protector          7121
#define std_itemball_d38r0103_rare_candy         7122
#define std_itemball_d38r0103_max_potion         7123
#define std_itemball_d38r0103_tm40               7124
#define std_itemball_d38r0103_elixir             7125
#define std_itemball_d38r0103_dragon_scale       7126
#define std_itemball_d38r0103_escape_rope        7127
#define std_itemball_d38r0104_carbos             7128
#define std_itemball_d38r0104_pp_up              7129
#define std_itemball_d38r0104_full_restore       7130
#define std_itemball_d38r0104_max_ether          7131
#define std_itemball_d38r0104_hyper_potion       7132
#define std_itemball_d35r0102_hyper_potion       7133
#define std_itemball_d35r0102_guard_spec_        7134
#define std_itemball_d35r0102_nugget             7135
#define std_itemball_d35r0103_tm46               7136
#define std_itemball_d35r0104_tm49               7137
#define std_itemball_d35r0104_full_heal          7138
#define std_itemball_d35r0104_protein            7139
#define std_itemball_d35r0104_x_special          7140
#define std_itemball_d35r0104_ultra_ball         7141
#define std_itemball_r43_max_ether               7142
#define std_itemball_t29_tm43                    7143
#define std_itemball_t29_choice_specs            7144
#define std_itemball_t29_red_flute               7145
#define std_itemball_r44_max_repel               7146
#define std_itemball_r44_max_revive              7147
#define std_itemball_r44_ultra_ball              7148
#define std_itemball_d39r0101_hm07               7149
#define std_itemball_d39r0101_protein            7150
#define std_itemball_d39r0101_pp_up              7151
#define std_itemball_d39r0103_full_heal          7152
#define std_itemball_d39r0103_max_potion         7153
#define std_itemball_d39r0104_nevermeltice       7154
#define std_itemball_d39r0103_tm72               7155
#define std_itemball_d39r0102_iron               7156
#define std_itemball_d44r0102_calcium            7157
#define std_itemball_d44r0102_max_elixir         7158
#define std_itemball_d44r0102_dragon_fang        7159
#define std_itemball_r45_elixir                  7160
#define std_itemball_r45_max_potion              7161
#define std_itemball_r45_full_heal               7162
#define std_itemball_r45_nugget                  7163
#define std_itemball_r45_revive                  7164
#define std_itemball_r46_x_speed                 7165
#define std_itemball_d42r0101_tm54               7166
#define std_itemball_d42r0101_revive             7167
#define std_itemball_d42r0102_potion             7168
#define std_itemball_d42r0102_hyper_potion       7169
#define std_itemball_d42r0102_full_heal          7170
#define std_itemball_d42r0102_dire_hit           7171
#define std_itemball_d42r0102_black_flute        7172
#define std_itemball_d45r0101_moon_stone         7173
#define std_itemball_r27_rare_candy              7174
#define std_itemball_r27_tm02                    7175
#define std_itemball_r27_destiny_knot            7176
#define std_itemball_r26_max_elixir              7177
#define std_itemball_d43r0101_max_revive         7178
#define std_itemball_d43r0101_full_heal          7179
#define std_itemball_d43r0101_potion             7180
#define std_itemball_d43r0102_tm26               7181
#define std_itemball_d43r0102_hp_up              7182
#define std_itemball_d43r0102_full_restore       7183
#define std_itemball_d43r0103_ultra_ball         7184
#define std_itemball_d43r0103_tm79               7185
#define std_itemball_d43r0103_rare_candy         7186
#define std_itemball_t06_luck_incense            7187
#define std_itemball_t06_sticky_barb             7188
#define std_itemball_d01r0101_pp_max             7189
#define std_itemball_d01r0101_rock_incense       7190
#define std_itemball_r06_tm62                    7191
#define std_itemball_r08_tm41                    7192
#define std_itemball_r10r0101_tm69               7193
#define std_itemball_d05r0101_elixir             7194
#define std_itemball_d05r0101_tm56               7195
#define std_itemball_d05r0102_iron               7196
#define std_itemball_d05r0102_pp_up              7197
#define std_itemball_d05r0102_revive             7198
#define std_itemball_d05r0102_oval_stone         7199
#define std_itemball_r09_tm91                    7200
#define std_itemball_r09_full_restore            7201
#define std_itemball_r09_light_clay              7202
#define std_itemball_r09_max_potion              7203
#define std_itemball_r25_protein                 7204
#define std_itemball_r07_mental_herb             7205
#define std_itemball_t07_tm67                    7206
#define std_itemball_r12_calcium                 7207
#define std_itemball_r12_yellow_flute            7208
#define std_itemball_r15_pp_up                   7209
#define std_itemball_r15_rose_incense            7210
#define std_itemball_r11_tm86                    7211
#define std_itemball_r02r0101_carbos             7212
#define std_itemball_r02_elixir                  7213
#define std_itemball_d46r0101_dire_hit           7214
#define std_itemball_d46r0101_blue_flute         7215
#define std_itemball_d46r0101_leaf_stone         7216
#define std_itemball_d46r0101_tm77               7217
#define std_itemball_t03_wise_glasses            7218
#define std_itemball_r03_big_root                7219
#define std_itemball_r04_hp_up                   7220
#define std_itemball_t09_magmarizer              7221
#define std_itemball_d11r0102_ice_heal           7222
#define std_itemball_d11r0102_grip_claw          7223
#define std_itemball_d11r0103_water_stone        7224
#define std_itemball_d11r0104_revive             7225
#define std_itemball_d11r0104_big_pearl          7226
#define std_itemball_d11r0105_ultra_ball         7227
#define std_itemball_d11r0105_tm13               7228
#define std_itemball_w19_tm55                    7229
#define std_itemball_r28_tm35                    7230
#define std_itemball_t31_reaper_cloth            7231
#define std_itemball_d41r0101_full_restore       7232
#define std_itemball_d41r0102_pure_incense       7233
#define std_itemball_d41r0102_dawn_stone         7234
#define std_itemball_d41r0103_escape_rope        7235
#define std_itemball_d41r0103_tm76               7236
#define std_itemball_d41r0104_expert_belt        7237
#define std_itemball_d41r0106_max_elixir         7238
#define std_itemball_d41r0106_calcium            7239
#define std_itemball_d41r0106_protein            7240
#define std_itemball_d41r0106_max_revive         7241
#define std_itemball_d03r0101_max_elixir         7242
#define std_itemball_d03r0101_full_restore       7243
#define std_itemball_d03r0101_nugget             7244
#define std_itemball_d03r0101_sea_incense        7245
#define std_itemball_d03r0102_pp_up              7246
#define std_itemball_d03r0102_ultra_ball         7247
#define std_itemball_d03r0102_tm24               7248
#define std_itemball_d03r0102_odd_incense        7249
#define std_itemball_d03r0103_max_revive         7250
#define std_itemball_d03r0103_ultra_ball         7251
#define std_itemball_d03r0103_dusk_stone         7252
#define std_itemball_d03r0103_electirizer        7253
#define std_itemball_d03r0103_black_sludge       7254
#define std_itemball_variadic                    7255

#define _std_hidden_item                                8000
#define std_hiddenitem_t20_potion                       8000
#define std_hiddenitem_r29_r30_t21_nugget               8001
#define std_hiddenitem_r30_nugget                       8002
#define std_hiddenitem_t22_potion                       8003
#define std_hiddenitem_r32_poke_ball                    8004
#define std_hiddenitem_r32_max_ether                    8005
#define std_hiddenitem_t23_max_revive                   8006
#define std_hiddenitem_r34_hyper_potion                 8007
#define std_hiddenitem_r34_elixir                       8008
#define std_hiddenitem_r34_t25_hyper_potion             8009
#define std_hiddenitem_r35_poke_ball                    8010
#define std_hiddenitem_r36_great_ball                   8011
#define std_hiddenitem_t27_big_mushroom                 8012
#define std_hiddenitem_t27_tinymushroom                 8013
#define std_hiddenitem_d42r0102_rare_candy              8014
#define std_hiddenitem_d42r0102_nugget                  8015
#define std_hiddenitem_d42r0101_great_ball              8016
#define std_hiddenitem_d42r0101_parlyz_heal             8017
#define std_hiddenitem_d42r0101_big_pearl               8018
#define std_hiddenitem_d18r0101_x_speed                 8019
#define std_hiddenitem_d18r0101_revive                  8020
#define std_hiddenitem_d18r0102_ultra_ball              8021
#define std_hiddenitem_r38_calcium                      8022
#define std_hiddenitem_t26_heart_scale                  8023
#define std_hiddenitem_w40_great_ball                   8024
#define std_hiddenitem_t24_super_potion                 8025
#define std_hiddenitem_t24_full_heal                    8026
#define std_hiddenitem_d26r0101_great_ball              8027
#define std_hiddenitem_d26r0102_super_potion            8028
#define std_hiddenitem_d26r0102_full_heal               8029
#define std_hiddenitem_d36r0101_antidote                8030
#define std_hiddenitem_d36r0101_super_potion            8031
#define std_hiddenitem_d36r0101_full_heal               8032
#define std_hiddenitem_d36r0101_ether                   8033
#define std_hiddenitem_d22r0101_d22r0102_full_heal      8034
#define std_hiddenitem_d22r0101_d22r0102_repel          8035
#define std_hiddenitem_t29_big_mushroom                 8036
#define std_hiddenitem_t29_tinymushroom                 8037
#define std_hiddenitem_w20_tinymushroom                 8038
#define std_hiddenitem_r47_rare_candy                   8039
#define std_hiddenitem_r47_super_potion                 8040
#define std_hiddenitem_d47_super_potion                 8041
#define std_hiddenitem_r42_parlyz_heal                  8042
#define std_hiddenitem_d38r0101_super_potion            8043
#define std_hiddenitem_d38r0101_antidote                8044
#define std_hiddenitem_d38r0102_max_potion              8045
#define std_hiddenitem_d38r0102_revive                  8046
#define std_hiddenitem_d38r0103_nugget                  8047
#define std_hiddenitem_d38r0103_awakening               8048
#define std_hiddenitem_d38r0104_full_heal               8049
#define std_hiddenitem_d38r0104_full_heal_2             8050
#define std_hiddenitem_d35r0102_pp_up                   8051
#define std_hiddenitem_d37r0103_protein                 8052
#define std_hiddenitem_d37r0103_hyper_potion            8053
#define std_hiddenitem_d35r0103_ether                   8054
#define std_hiddenitem_d35r0103_rare_candy              8055
#define std_hiddenitem_d01r0101_ultra_ball              8056
#define std_hiddenitem_r05r0202_ether                   8057
#define std_hiddenitem_r05r0202_ultra_ball              8058
#define std_hiddenitem_d05r0101_antidote                8059
#define std_hiddenitem_d05r0101_revive                  8060
#define std_hiddenitem_d05r0102_tinymushroom            8061
#define std_hiddenitem_d17r0103_big_mushroom            8062
#define std_hiddenitem_d17r0105_big_mushroom            8063
#define std_hiddenitem_d17r0108_tinymushroom            8064
#define std_hiddenitem_d18r0102_tinymushroom            8065
#define std_hiddenitem_d27r0104_max_potion              8066
#define std_hiddenitem_d37r0103_full_restore            8067
#define std_hiddenitem_d37r0105_carbos                  8068
#define std_hiddenitem_d37r0105_hp_up                   8069
#define std_hiddenitem_d39r0101_nugget                  8070
#define std_hiddenitem_d39r0103_pp_up                   8071
#define std_hiddenitem_d39r0101_x_attack                8072
#define std_hiddenitem_d40r0101_rare_candy              8073
#define std_hiddenitem_d40r0102_full_heal               8074
#define std_hiddenitem_d40r0104_hyper_potion            8075
#define std_hiddenitem_d41r0101_protein                 8076
#define std_hiddenitem_d41r0101_pearl                   8077
#define std_hiddenitem_d41r0106_rare_candy              8078
#define std_hiddenitem_d43r0101_hyper_potion            8079
#define std_hiddenitem_d43r0101_max_ether               8080
#define std_hiddenitem_d44r0102_stardust                8081
#define std_hiddenitem_d44r0102_stardust_2              8082
#define std_hiddenitem_d44r0102_stardust_3              8083
#define std_hiddenitem_p01r0104_stardust                8084
#define std_hiddenitem_d46r0101_rare_candy              8085
#define std_hiddenitem_p01r0102_ultra_ball              8086
#define std_hiddenitem_d46r0101_super_repel             8087
#define std_hiddenitem_d11r0101_pearl                   8088
#define std_hiddenitem_d11r0102_revive                  8089
#define std_hiddenitem_d11r0103_full_restore            8090
#define std_hiddenitem_d11r0103_revive                  8091
#define std_hiddenitem_d11r0104_stardust                8092
#define std_hiddenitem_d03r0101_big_pearl               8093
#define std_hiddenitem_d03r0101_stardust                8094
#define std_hiddenitem_d03r0101_pearl                   8095
#define std_hiddenitem_d03r0102_ultra_ball              8096
#define std_hiddenitem_r32_tinymushroom                 8097
#define std_hiddenitem_r39_tinymushroom                 8098
#define std_hiddenitem_w41_tinymushroom                 8099
#define std_hiddenitem_r44_max_potion                   8100
#define std_hiddenitem_r45_hyper_potion                 8101
#define std_hiddenitem_t29_revive                       8102
#define std_hiddenitem_t06_max_repel                    8103
#define std_hiddenitem_r11_ether                        8104
#define std_hiddenitem_r09_rare_candy                   8105
#define std_hiddenitem_t04_ultra_ball                   8106
#define std_hiddenitem_r25_nugget                       8107
#define std_hiddenitem_t22_full_restore                 8108
#define std_hiddenitem_r17_hp_up                        8109
#define std_hiddenitem_r17_hyper_potion                 8110
#define std_hiddenitem_r13_full_heal                    8111
#define std_hiddenitem_r12_max_revive                   8112
#define std_hiddenitem_r04_ultra_ball                   8113
#define std_hiddenitem_t09_w21_revive                   8114
#define std_hiddenitem_r28_full_heal                    8115
#define std_hiddenitem_t31_x_sp__def                    8116
#define std_hiddenitem_d03r0102_full_restore            8117
#define std_hiddenitem_d03r0102_rare_candy              8118
#define std_hiddenitem_d03r0102_max_potion              8119
#define std_hiddenitem_d03r0102_elixir                  8120
#define std_hiddenitem_d03r0103_max_potion              8121
#define std_hiddenitem_t07_ice_heal                     8122
#define std_hiddenitem_d03r0103_revive                  8123
#define std_hiddenitem_d03r0103_carbos                  8124
#define std_hiddenitem_d17r1101_revive                  8125
#define std_hiddenitem_d17r1101_max_potion              8126
#define std_hiddenitem_d17r1101_max_elixir              8127
#define std_hiddenitem_d17r1101_pp_up                   8128
#define std_hiddenitem_d17r1101_revive_2                8129
#define std_hiddenitem_d47_big_mushroom                 8130
#define std_hiddenitem_d47_nugget                       8131
#define std_hiddenitem_t27_tinymushroom_2               8132
#define std_hiddenitem_t27_max_potion                   8133
#define std_hiddenitem_t08_full_heal                    8134
#define std_hiddenitem_r39_max_revive                   8135
#define std_hiddenitem_r39_pp_up                        8136
#define std_hiddenitem_r39_t26_ultra_ball               8137
#define std_hiddenitem_r03_hyper_potion                 8138
#define std_hiddenitem_r03_zinc                         8139
#define std_hiddenitem_d38r0102_rare_candy              8140
#define std_hiddenitem_d38r0102_iron                    8141
#define std_hiddenitem_d38r0102_full_heal               8142
#define std_hiddenitem_d38r0103_heart_scale             8143
#define std_hiddenitem_d38r0103_pearl                   8144
#define std_hiddenitem_r03_pearl                        8145
#define std_hiddenitem_d24r0101_big_pearl               8146
#define std_hiddenitem_d24r0101_max_revive              8147
#define std_hiddenitem_d24r0101_calcium                 8148
#define std_hiddenitem_d24r0101_full_restore            8149
#define std_hiddenitem_d24r0101_x_special               8150
#define std_hiddenitem_d25r0101_revive                  8151
#define std_hiddenitem_d25r0101_x_accuracy              8152
#define std_hiddenitem_d25r0102_x_defense               8153
#define std_hiddenitem_d25r0101_max_potion              8154
#define std_hiddenitem_d25r0102_hp_up                   8155
#define std_hiddenitem_d25r0103_carbos                  8156
#define std_hiddenitem_d25r0103_ether                   8157
#define std_hiddenitem_p01r0102_nugget                  8158
#define std_hiddenitem_d49_revive                       8159
#define std_hiddenitem_d49_pp_up                        8160
#define std_hiddenitem_d32r0102_max_ether               8161
#define std_hiddenitem_t06_max_elixir                   8162
#define std_hiddenitem_t06_nugget                       8163
#define std_hiddenitem_t06_calcium                      8164
#define std_hiddenitem_d41r0102_elixir                  8165
#define std_hiddenitem_t09_max_ether                    8166
#define std_hiddenitem_t09_full_restore                 8167
#define std_hiddenitem_t06_big_mushroom                 8168
#define std_hiddenitem_d05r0102_big_mushroom            8169
#define std_hiddenitem_w41_tinymushroom_2               8170
#define std_hiddenitem_w41_tinymushroom_3               8171
#define std_hiddenitem_w41_tinymushroom_4               8172
#define std_hiddenitem_w41_pp_up                        8173
#define std_hiddenitem_w20_guard_spec_                  8174
#define std_hiddenitem_w21_max_revive                   8175
#define std_hiddenitem_w21_star_piece                   8176
#define std_hiddenitem_w21_star_piece_2                 8177
#define std_hiddenitem_w19_hyper_potion                 8178
#define std_hiddenitem_w19_revive                       8179
#define std_hiddenitem_w19_max_revive                   8180
#define std_hiddenitem_r27_ultra_ball                   8181
#define std_hiddenitem_r27_big_mushroom                 8182
#define std_hiddenitem_r26_r27_nugget                   8183
#define std_hiddenitem_r26_stardust                     8184
#define std_hiddenitem_d43r0102_stardust                8185
#define std_hiddenitem_d43r0102_stardust_2              8186
#define std_hiddenitem_d43r0103_stardust                8187
#define std_hiddenitem_d43r0103_rare_candy              8188
#define std_hiddenitem_d43r0102_iron                    8189
#define std_hiddenitem_t10_star_piece                   8190
#define std_hiddenitem_d40r0102_escape_rope             8191
#define std_hiddenitem_d40r0102_ice_heal                8192
#define std_hiddenitem_d40r0102_pearl                   8193
#define std_hiddenitem_r04_pearl                        8194
#define std_hiddenitem_d02r0101_max_revive              8195
#define std_hiddenitem_d02r0103_d02r0104_rare_candy     8196
#define std_hiddenitem_r10_zinc                         8197
#define std_hiddenitem_t03_big_pearl                    8198
#define std_hiddenitem_t03_pearl                        8199
#define std_hiddenitem_t02_pearl                        8200
#define std_hiddenitem_d41r0101_revive                  8201
#define std_hiddenitem_d41r0105_max_elixir              8202
#define std_hiddenitem_d41r0105_rare_candy              8203
#define std_hiddenitem_d41r0102_full_restore            8204
#define std_hiddenitem_d41r0102_dire_hit                8205
#define std_hiddenitem_d41r0107_ultra_ball              8206
#define std_hiddenitem_w19_revive_2                     8207
#define std_hiddenitem_w19_rare_candy                   8208
#define std_hiddenitem_d48r0101_max_ether               8209
#define std_hiddenitem_d11r0104_hyper_potion            8210
#define std_hiddenitem_d36r0101_ultra_ball              8211
#define std_hiddenitem_d36r0101_hyper_potion            8212
#define std_hiddenitem_d36r0101_max_potion              8213
#define std_hiddenitem_d36r0101_iron                    8214
#define std_hiddenitem_d36r0101_max_revive              8215
#define std_hiddenitem_d46r0101_hyper_potion            8216
#define std_hiddenitem_d46r0101_rare_candy_2            8217
#define std_hiddenitem_d46r0101_revive                  8218
#define std_hiddenitem_d46r0101_ultra_ball              8219
#define std_hiddenitem_d46r0101_pp_up                   8220
#define std_hiddenitem_d03r0102_big_pearl               8221
#define std_hiddenitem_d41r0106_zinc                    8222
#define std_hiddenitem_d11r0105_full_heal               8223
#define std_hiddenitem_d01r0101_protein                 8224
#define std_hiddenitem_t21_max_revive                   8225
#define std_hiddenitem_d50r0101_ultra_ball              8226
#define std_hiddenitem_t03_nugget                       8227
#define std_hiddenitem_d39r0102_deepseatooth            8228
#define std_hiddenitem_w20_deepseascale                 8229
#define std_hiddenitem_r45_r46_pp_max                   8230

#define _std_safari                     8800
#define std_safari_place_object         8800
#define std_safari_remove_object        8801
#define std_safari_steps_out            8802
#define std_safari_balls_out            8803
#define std_safari_storage_out          8804
#define std_safari_enter                8805
#define std_safari_exit                 8806

#define _std_chatot                     8900

#define _std_comm_reception             9000
#define std_wireless_colosseum          9001
#define std_union_room                  9003
#define std_trainer_card_explain        9017

#define _std_colosseum                  9100

#define _std_wifi_reception             9200

#define _std_group                      9300
#define std_group                       9300

#define _std_daycare                    9500
#define std_daycare_man                 9500
#define std_daycare_lady                9501

#define _std_init                       9600
#define std_init                        9600

#define _std_dex_evaluation             9950
#define std_via_pc_evaluate_dex         9950
#define std_in_person_evaluate_dex      9951

#define _std_field_move                10000
#define std_field_cut                  10000
#define std_field_rock_smash           10001
#define std_field_strength             10002
#define std_field_rock_climb           10003
#define std_field_surf                 10004
#define std_field_waterfall            10005
#define std_field_flash                10006
#define std_menu_cut                   10007
#define std_menu_rock_smash            10008
#define std_menu_strength              10009
#define std_menu_rock_climb            10010
#define std_menu_surf                  10011
#define std_menu_waterfall             10012
#define std_menu_flash                 10013
#define std_field_headbutt             10014
#define std_boulder_fell_down          10015
#define std_field_whirlpool            10016
#define std_menu_whirlpool             10017
#define std_menu_headbutt              10018

#define _std_mystery_gift              10200
#define std_hide_show_deliverymen      10200
#define std_mystery_gift_deliveryman   10201
#define std_moms_gift_deliveryman      10202
#define std_hide_show_deliverymen_2    10203

#define _std_scratch_card              10490
#define std_scratch_card               10490

#endif //POKEHEARTGOLD_CONSTANTS_STD_SCRIPT_H
