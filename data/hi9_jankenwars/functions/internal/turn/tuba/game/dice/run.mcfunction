execute as @a[tag=Hi9j_Roller] run function hi9_jankenwars:internal/turn/tuba/game/dice/newvalue

execute as @a[tag=Hi9j_Roller] at @s run playsound block.note_block.pling player @s ~ ~ ~ 0.4 1
execute as @a[tag=Hi9j_Roller] at @s run scoreboard players operation @s Hi9j_JumpCount += @s Hi9j_SneakTime
execute as @a[tag=Hi9j_Roller] if score @s Hi9j_JumpCount matches 1.. run function hi9_jankenwars:internal/turn/tuba/game/dice/lockvalue

scoreboard players remove Time Hi9j_Dice_Var 1
scoreboard players operation Sec Hi9j_Dice_Var = Time Hi9j_Dice_Var
scoreboard players operation Sec Hi9j_Dice_Var /= #DivSec Hi9j_Dice_Var
scoreboard players operation Fl Hi9j_Dice_Var = Time Hi9j_Dice_Var
scoreboard players operation Fl Hi9j_Dice_Var %= #DivSec Hi9j_Dice_Var
execute if score Fl Hi9j_Dice_Var matches 0 run execute as @a[tag=Hi9j_Roller] at @s run playsound block.note_block.hat master @s ~ ~ ~ 2 1

title @s times 1 100000 0
title @s actionbar [{"text":"スニークかジャンプでルーレットを止める","color": "white"}]
title @s subtitle [{"text":"残り ","color": "white"},{"score":{"objective": "Hi9j_Dice_Var","name": "Sec"},"bold":true,"color":"red"},{"text":" 秒"}]
execute if entity @s[tag=Hi9j_Roller] run title @s title {"score":{"objective": "Hi9j_Dice_Value","name":"@s"},"color":"white","bold":true}
execute if entity @s[tag=!Hi9j_Roller] run title @s title {"score":{"objective": "Hi9j_Dice_Value","name":"@s"},"color":"gold","bold":true}

execute unless entity @e[tag=Hi9j_Roller] run scoreboard players remove Time Hi9j_Dice_Var 7
execute if score Time Hi9j_Dice_Var matches ..0 run scoreboard players set TubaState Hi9j_Var 3
