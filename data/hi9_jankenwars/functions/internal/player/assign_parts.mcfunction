scoreboard objectives remove Hi9j_Participant
scoreboard objectives add Hi9j_Participant dummy

scoreboard players set #Next Hi9j_Participant 1
execute as @a[tag=Hi9j_Player] run function hi9_jankenwars:internal/player/assign_my_part

tellraw @a[tag=Hi9j_Dbg] [{"text":"// ", "color":"gray"},{"text":" IDを参加者に割り当てました"}]

scoreboard players set @a[tag=Hi9j_Spec] Hi9j_Participant -1