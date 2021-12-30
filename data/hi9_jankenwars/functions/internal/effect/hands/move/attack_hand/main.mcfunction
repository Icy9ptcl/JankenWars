scoreboard players set #Phase Hi9j_Var -1
execute store result score #Phase Hi9j_Var run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].phase 1
execute store result score #Tick Hi9j_Var run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].currentTick 1

execute if score #Phase Hi9j_Var matches 0 run function hi9_jankenwars:internal/effect/hands/move/attack_hand/phase_0
execute if score #Phase Hi9j_Var matches 1 run function hi9_jankenwars:internal/effect/hands/move/attack_hand/phase_1

scoreboard players add #Tick Hi9j_Var 1

execute if score #Phase Hi9j_Var matches 0 run execute store result score #NextTick Hi9j_Var run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].frames[0] 1
execute if score #Phase Hi9j_Var matches 1 run execute store result score #NextTick Hi9j_Var run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].frames[1] 1

# Go next tick?
execute if score #Tick Hi9j_Var >= #NextTick Hi9j_Var run scoreboard players add #Phase Hi9j_Var 1
execute if score #Tick Hi9j_Var >= #NextTick Hi9j_Var run execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].phase int 1 run scoreboard players get #Phase Hi9j_Var

execute if score #Phase Hi9j_Var matches 2 run function hi9_jankenwars:internal/effect/hands/move/attack_hand/dispose