scoreboard objectives add Hi9j_JumpCount minecraft.custom:jump
scoreboard objectives add Hi9j_SneakTime minecraft.custom:sneak_time
scoreboard objectives add Hi9j_Dice_Var dummy
scoreboard objectives add Hi9j_Dice_Value dummy
scoreboard players set Time Hi9j_Dice_Var 200
scoreboard players set #DivSec Hi9j_Dice_Var 20

scoreboard players set MaxValue Hi9j_Dice_Var 10
# +- (BaseEntro)% 増減する
scoreboard players set $Max Hi9v_Random 89
# 乱数
function hi9_random:random

scoreboard players operation MaxValue Hi9j_Dice_Var += Random Hi9v_Random

tag @e remove Hi9j_Roller
tag @e[tag=Hi9j_TubaAtk] add Hi9j_Roller
tag @e[tag=Hi9j_TubaDef] add Hi9j_Roller
