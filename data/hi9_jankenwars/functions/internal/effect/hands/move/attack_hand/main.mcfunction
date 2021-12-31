scoreboard players set #Phase Hi9j_Var -1
execute store result score #Phase Hi9j_Var run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].phase 1
execute store result score #Tick Hi9j_Var run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].tick 1

execute if score #Phase Hi9j_Var matches 0 run execute store result score #NextTick Hi9j_Var run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].frames[0] 1
execute if score #Phase Hi9j_Var matches 1 run execute store result score #NextTick Hi9j_Var run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].frames[1] 1
execute if score #Phase Hi9j_Var matches 2 run execute store result score #NextTick Hi9j_Var run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].frames[2] 1
execute if score #Phase Hi9j_Var matches 3 run execute store result score #NextTick Hi9j_Var run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].frames[3] 1

#tellraw @a[tag=Hi9j_Dbg] [{"text":"// ", "color":"gray"},{"selector": "@s","color":"gray"},{"text":" Phase "},{"score":{"objective":"Hi9j_Var","name":"#Phase"}},{"text":"  frame "},{"score":{"objective":"Hi9j_Var","name":"#Tick"}},{"text":"  / "},{"score":{"objective":"Hi9j_Var","name":"#NextTick"}}]
# tellraw @a[tag=Hi9j_Dbg] [{"text":"// NBT: ", "color":"gray"},{"storage":"oh_my_dat:", "nbt":"_[-4][-4][-4][-4][-4][-4][-4][-4]"}]

execute if score #Phase Hi9j_Var matches 0 run function hi9_jankenwars:internal/effect/hands/move/attack_hand/phase_0
execute if score #Phase Hi9j_Var matches 1 run function hi9_jankenwars:internal/effect/hands/move/attack_hand/phase_1
execute if score #Phase Hi9j_Var matches 2 run function hi9_jankenwars:internal/effect/hands/move/attack_hand/phase_2
execute if score #Phase Hi9j_Var matches 3 run function hi9_jankenwars:internal/effect/hands/move/attack_hand/phase_3

scoreboard players add #Tick Hi9j_Var 1

# Go next phase?
execute if score #Tick Hi9j_Var >= #NextTick Hi9j_Var run scoreboard players add #Phase Hi9j_Var 1
execute if score #Tick Hi9j_Var >= #NextTick Hi9j_Var run scoreboard players set #Tick Hi9j_Var 0

execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].tick int 1 run scoreboard players get #Tick Hi9j_Var
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].phase int 1 run scoreboard players get #Phase Hi9j_Var
