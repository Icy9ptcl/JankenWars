scoreboard objectives remove Hi9j_Participant
scoreboard objectives add Hi9j_Participant dummy
scoreboard players set @a[tag=Hi9j_Player] Hi9j_Participant -1


# プレイヤーにIDを割り当てます
# 1 から 最大人数と同じ数まで 割り当てます
scoreboard players set #Next Hi9j_Participant 1
execute as @e[predicate=hi9_jankenwars:all-players] run function hi9_jankenwars:internal/player/assign_my_part

tellraw @a[tag=Hi9j_Dbg] [{"text":"// ", "color":"gray"},{"text":" IDを参加者に割り当てました"}]

scoreboard players set @a[tag=Hi9j_Spec] Hi9j_Participant -100