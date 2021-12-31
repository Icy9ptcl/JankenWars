execute as @a[tag=Hi9j_Roller] run function hi9_jankenwars:internal/turn/tuba/game/dice/newvalue

execute as @a[tag=Hi9j_Roller] at @s run playsound block.note_block.pling player @s ~ ~ ~ 0.6 1
execute as @a[tag=Hi9j_Roller] at @s run scoreboard players operation @s Hi9j_JumpCount += @s Hi9j_SneakTime
execute as @a[tag=Hi9j_Roller] if score @s Hi9j_JumpCount matches 1.. run function hi9_jankenwars:internal/turn/tuba/game/dice/lockvalue

scoreboard players remove Time Hi9j_Dice_Var 1
scoreboard players operation Sec Hi9j_Dice_Var = Time Hi9j_Dice_Var
scoreboard players operation Sec Hi9j_Dice_Var /= #DivSec Hi9j_Dice_Var
title @s 
title @s subtitle [{"text":"残り ","color": "white"},{"score":{"objective": "Hi9j_Dice_Var","name": "Sec"},"bold":true,"color":"red"},{"text":" 秒"}]
title @s title 

scoreboard players set Time Hi9j_Dice_Var 200
scoreboard players set #DivSec Hi9j_Dice_Var 20