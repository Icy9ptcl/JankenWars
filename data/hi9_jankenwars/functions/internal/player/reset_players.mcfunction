
execute as @e[tag=Hi9j_Player] run function hi9_jankenwars:internal/player/calculate_status

execute as @e[tag=Hi9j_Player] run scoreboard players operation @s Hi9j_Health = @s Hi9j_MaxHealth
