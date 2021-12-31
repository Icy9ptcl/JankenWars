### --> (実行者) 誰の手？
###     @Hi9j_summon_target 誰への演出？

execute if score @s Hi9j_Hand = HAND_ROCK Hi9j_Const run function hi9_jankenwars:internal/effect/hands/summon/summon_rock
execute if score @s Hi9j_Hand = HAND_SCISSORS Hi9j_Const run function hi9_jankenwars:internal/effect/hands/summon/summon_scissors
execute if score @s Hi9j_Hand = HAND_PAPER Hi9j_Const run function hi9_jankenwars:internal/effect/hands/summon/summon_paper

execute as @e[tag=Hi9j_Tgt] run function oh_my_dat:please
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].phase set value 0
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].tick set value 0
# appear 10, attack 20
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].frames set value [50,10,10]

execute if entity @s[tag=Hi9j_Attacker] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].winFlag set value 1
execute if entity @s[tag=Hi9j_Defence] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].winFlag set value 0

execute if entity @s[tag=Hi9j_Attacker] run function hi9_jankenwars:internal/effect/util/win_calc
execute if entity @s[tag=Hi9j_Defence] run function hi9_jankenwars:internal/effect/util/lose_calc
tellraw @a[tag=Hi9j_Dbg] [{"text":"// OMD store: ", "color":"gray"},{"storage":"oh_my_dat:", "nbt":"_[-4][-4][-4][-4][-4][-4][-4][-4]"}]

tag @e[tag=Hi9j_Tgt] remove Hi9j_Tgt
