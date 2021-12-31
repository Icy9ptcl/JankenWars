# tellraw @a[tag=Hi9j_Dbg] [{"text":"// MOVE PHASE: targets: ", "color":"gray"},{"selector":"@e[tag=Hi9j_HandEntity]"}]
execute as @e[tag=Hi9j_HandEntity] at @s run function hi9_jankenwars:internal/effect/hands/move_general

execute unless entity @e[tag=Hi9j_Hand_WIP] if score FightFlag Hi9j_Var = FG_NORMAL Hi9j_Const run scoreboard players set PlayState Hi9j_Var 4
execute unless entity @e[tag=Hi9j_Hand_WIP] if score FightFlag Hi9j_Var = FG_DYING_TUBA Hi9j_Const run scoreboard players set PlayState Hi9j_Var 3
execute unless entity @e[tag=Hi9j_Hand_WIP] if score FightFlag Hi9j_Var = FG_TIE_TUBA Hi9j_Const run scoreboard players set PlayState Hi9j_Var 7

