function oh_my_dat:please

# tellraw @a[tag=Hi9j_Dbg] [{"text":"// MOVE: nbt ", "color":"gray"},{"storage":"oh_my_dat:", "nbt":"_[-4][-4][-4][-4][-4][-4][-4][-4]"}]


execute if entity @s[tag=Hi9j_Hand_Rock] run function hi9_jankenwars:internal/effect/hands/move/rock_1

execute if entity @s[tag=Hi9j_Hand_Scissors] run function hi9_jankenwars:internal/effect/hands/move/scissor_1

execute if entity @s[tag=Hi9j_Hand_Paper] run function hi9_jankenwars:internal/effect/hands/move/paper_1

