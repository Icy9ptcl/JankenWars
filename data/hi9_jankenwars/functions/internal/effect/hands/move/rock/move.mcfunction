function hi9_jankenwars:internal/effect/hands/move/attack_hand/main

execute positioned ~-1 ~1.5 ~ run particle minecraft:dust 1 0 0 2
execute positioned ~-2 ~1.5 ~ run particle minecraft:dust 1 0 0 2
execute positioned ~1 ~1.5 ~ run particle minecraft:dust 1 0 0 2
execute positioned ~2 ~1.5 ~ run particle minecraft:dust 1 0 0 2
execute positioned ~ ~1.5 ~ run particle minecraft:dust 1 0 0 5
execute positioned ~ ~1.5 ~-2 run particle minecraft:dust 1 0 0 2
execute positioned ~ ~1.5 ~-1 run particle minecraft:dust 1 0 0 2
execute positioned ~ ~1.5 ~1 run particle minecraft:dust 1 0 0 2
execute positioned ~ ~1.5 ~2 run particle minecraft:dust 1 0 0 2

execute if score #Phase Hi9j_Var matches 2 run function hi9_jankenwars:internal/effect/hands/move/rock/destroyed

execute if score TubaState Hi9j_Var matches 2 run function hi9_jankenwars:internal/effect/hands/move/rock/tuba
