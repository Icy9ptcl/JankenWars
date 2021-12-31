execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].targetID int 1 run scoreboard players get @e[tag=Hi9j_summon_target,limit=1] Hi9j_Participant

tellraw @a[tag=Hi9j_Dbg] [{"text":"// LOSE_CALC: towards -> ", "color":"gray"},{"selector":"@e[tag=Hi9j_summon_target,limit=1]"}]


execute store result score #FromX Hi9j_Var run data get entity @s Pos[0] 100
execute store result score #FromY Hi9j_Var run data get entity @s Pos[1] 100
execute store result score #FromZ Hi9j_Var run data get entity @s Pos[2] 100

execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].fromX double 0.01 run scoreboard players get #FromX Hi9j_Var
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].fromY double 0.01 run scoreboard players get #FromY Hi9j_Var
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].fromZ double 0.01 run scoreboard players get #FromZ Hi9j_Var
