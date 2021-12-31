# CALL IT ANYWAYS otherwise we're gonna get our storage full very soon
execute if entity @s[type=armor_stand] run function oh_my_dat:release

scoreboard players reset @s Hi9j_Eff_ID
scoreboard players reset @s Hi9j_Eff_Tick 

tellraw @a[tag=Hi9j_Dbg] [{"text":"// ", "color":"gray"},{"selector": "@s","color":"gray"}, {"text":" disposed"}]

kill @s[type=armor_stand]