# Ouch!
execute as @e[tag=Hi9j_HandEntity] at @s run function hi9_jankenwars:internal/effect/hands/hit_general

# 演出など必要ならば長くしよう
scoreboard players operation HitWaitTime Hi9j_Var = Hit_Wait Hi9j_Cfg

execute as @e[predicate=hi9_jankenwars:all-players] run execute unless score @s Hi9j_Dmg matches 0 run function hi9_jankenwars:internal/effect/apply_damage

scoreboard players set HitTick Hi9j_Var 0
scoreboard players set PlayState Hi9j_Var 5