execute as @e[predicate=hi9_jankenwars:alive-players] if score @s Hi9j_Participant = TurnPlayer Hi9j_Var run tag @s add Hi9j_Turn

scoreboard players add TurnCount Hi9j_Var 1
scoreboard players operation @e[predicate=hi9_jankenwars:alive-players] Hi9j_Hand = HAND_UNDECIDED Hi9j_Hand
scoreboard players set @a[predicate=hi9_jankenwars:alive-players] Hi9j_Ready 0

playsound entity.arrow.hit_player master @a[predicate=hi9_jankenwars:all-participants] 0 0 0 1 0 1
title @a[predicate=hi9_jankenwars:all-participants] times 20 60 20
title @a[predicate=hi9_jankenwars:all-participants] subtitle {"text":"行動を決めてください","color":"white"}
title @a[predicate=hi9_jankenwars:all-participants] title [{"text":"ターン","color":"gold","underlined": true},{"text":" #","color":"gray"},{"score":{"objective": "Hi9j_Var","name": "TurnCount"},"color":"gold", "bold": true}]

scoreboard players set PlayerCount Hi9j_Var 0
execute as @e[predicate=hi9_jankenwars:alive-players] run scoreboard players add PlayerCount Hi9j_Var 1

# Write some skills.
execute as @e[predicate=hi9_jankenwars:alive-players] run function hi9_jankenwars:show-actions

# Make them decide their moves!
scoreboard players set GameState Hi9j_Var 2

# No Time Limit.
