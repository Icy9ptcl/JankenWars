execute as @e[tag=Hi9j_HandEntity] at @s run function hi9_jankenwars:internal/effect/hands/move_general

execute if score TubaState Hi9j_Var matches 0 run function hi9_jankenwars:internal/turn/tuba/prepare

execute if score TubaState Hi9j_Var matches 1 run function hi9_jankenwars:internal/turn/tuba/anticipation

execute if score TubaState Hi9j_Var matches 2 run function hi9_jankenwars:internal/turn/tuba/run

execute if score TubaState Hi9j_Var matches 3 run function hi9_jankenwars:internal/turn/tuba/judge

execute if score TubaState Hi9j_Var matches 4 run function hi9_jankenwars:internal/turn/tuba/end_wait

execute if score TubaState Hi9j_Var matches 5 run function hi9_jankenwars:internal/turn/tuba/cleanup
