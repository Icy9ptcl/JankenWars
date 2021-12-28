scoreboard players operation @s Hi9j_MaxHealth = VitBase Hi9j_Cfg
scoreboard players operation #tmp Hi9j_MaxHealth = VitMulti Hi9j_Cfg
scoreboard players operation #tmp Hi9j_MaxHealth *= @s Hi9j_St_Vit
scoreboard players operation @s Hi9j_MaxHealth += #tmp Hi9j_MaxHealth

execute unless score @s Hi9j_St_Ratk matches -2147483648..2147483647 run scoreboard players operation @s Hi9j_St_Ratk = DefaultATK Hi9j_Cfg
execute unless score @s Hi9j_St_Satk matches -2147483648..2147483647 run scoreboard players operation @s Hi9j_St_Satk = DefaultATK Hi9j_Cfg
execute unless score @s Hi9j_St_Patk matches -2147483648..2147483647 run scoreboard players operation @s Hi9j_St_Patk = DefaultATK Hi9j_Cfg
