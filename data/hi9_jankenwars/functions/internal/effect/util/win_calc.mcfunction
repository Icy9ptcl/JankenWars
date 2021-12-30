execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].targetID int 1 run scoreboard players get @e[tag=Hi9j_summon_target,limit=1] Hi9j_Participant

execute store result score #ToX Hi9j_Var run data get entity @e[tag=Hi9j_summon_target,limit=1] Pos[0] 100
execute store result score #ToY Hi9j_Var run data get entity @e[tag=Hi9j_summon_target,limit=1] Pos[1] 100
execute store result score #ToZ Hi9j_Var run data get entity @e[tag=Hi9j_summon_target,limit=1] Pos[2] 100

execute store result score #FromX Hi9j_Var run data get entity @s Pos[0] 100
execute store result score #FromY Hi9j_Var run data get entity @s Pos[1] 100
execute store result score #FromZ Hi9j_Var run data get entity @s Pos[2] 100

scoreboard players set #AvgTwo Hi9j_Var 2

scoreboard players operation #ToX Hi9j_Var += #FromX Hi9j_Var
scoreboard players operation #ToY Hi9j_Var += #FromY Hi9j_Var
scoreboard players operation #ToZ Hi9j_Var += #FromZ Hi9j_Var
scoreboard players operation #ToX Hi9j_Var /= #AvgTwo Hi9j_Var
scoreboard players operation #ToY Hi9j_Var /= #AvgTwo Hi9j_Var
scoreboard players operation #ToZ Hi9j_Var /= #AvgTwo Hi9j_Var

execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].fromX double 0.01 run scoreboard players get #FromX Hi9j_Var
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].fromY double 0.01 run scoreboard players get #FromY Hi9j_Var
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].fromZ double 0.01 run scoreboard players get #FromZ Hi9j_Var
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].destX double 0.01 run scoreboard players get #ToX Hi9j_Var
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].destY double 0.01 run scoreboard players get #ToY Hi9j_Var
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].destZ double 0.01 run scoreboard players get #ToZ Hi9j_Var
