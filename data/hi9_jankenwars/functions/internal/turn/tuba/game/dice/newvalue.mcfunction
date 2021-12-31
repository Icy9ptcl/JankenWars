scoreboard players operation $Max Hi9v_Random = MaxValue Hi9j_Dice_Var
# 乱数
function hi9_random:random

scoreboard players operation @s Hi9j_Dice_Var = Random Hi9v_Random
playsound minecraft:block.note_block.hat player @s ~ ~ ~ 1 1.2