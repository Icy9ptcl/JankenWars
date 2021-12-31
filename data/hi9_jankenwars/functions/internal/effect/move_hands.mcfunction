tellraw @a[tag=Hi9j_Dbg] [{"text":"// MOVE PHASE: targets: ", "color":"gray"},{"selector":"@e[tag=Hi9j_HandEntity]"}]


execute as @e[tag=Hi9j_HandEntity] at @s run function hi9_jankenwars:internal/effect/hands/move_general

execute unless entity @e[tag=Hi9j_Hand_WIP] run scoreboard players set PlayState Hi9j_Var 3