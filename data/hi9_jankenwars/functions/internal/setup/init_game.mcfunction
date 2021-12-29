scoreboard players set .Players Hi9j_Var 0 
execute as @a[tag=Hi9j_Player] run scoreboard players add .Players Hi9j_Participant 1
execute unless score .Players Hi9j_Participant matches 1.. run tellraw @a "[Hi9j_Jankenwars] プレイヤー (tag: Hi9j_Player) が設定されていません。"
scoreboard players set @a[tag=Hi9j_Player] Hi9j_Participant -1

scoreboard players set TurnCount Hi9j_Var 0

scoreboard objectives remove Hi9j_Participant
scoreboard objectives add Hi9j_Participant dummy
scoreboard objectives remove Hi9j_Ready
scoreboard objectives add Hi9j_Ready dummy

function hi9_jankenwars:internal/player/assign_parts
function hi9_jankenwars:internal/player/reset_players

scoreboard players set GameState Hi9j_Var 0
scoreboard players set State Hi9j_Var 1