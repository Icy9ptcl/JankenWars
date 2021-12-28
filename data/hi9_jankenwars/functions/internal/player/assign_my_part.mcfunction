scoreboard players operation @s Hi9j_Participant = #Next Hi9j_Participant
scoreboard players add #Next Hi9j_Participant 1

tellraw @a[tag=Hi9j_Dbg] [{"text":"// ", "color":"gray"},{"selector": "@s","color":"gray"}, {"text":" に ID "},{"score":{"objective": "Hi9j_Participant","name": "@s"}},{"text":" を割り当てました"}]