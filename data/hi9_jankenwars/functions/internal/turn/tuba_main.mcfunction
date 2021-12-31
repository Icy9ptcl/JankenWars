execute as @e[tag=Hi9j_HandEntity] at @s run function hi9_jankenwars:internal/effect/hands/move_general

execute if score TubaState Hi9j_Var matches 0 run function hi9_jankenwars:internal/turn/tuba/prepare
