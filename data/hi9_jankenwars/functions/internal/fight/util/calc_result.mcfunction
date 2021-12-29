# 勝敗の計算
# 手の種類数で分けられる
scoreboard players set .R Hi9j_Hand 0
scoreboard players set .S Hi9j_Hand 0
scoreboard players set .P Hi9j_Hand 0
# Mity はスキルなどで全部に勝つヤツ
# Dis はスキルなどで負けるヤツ
# None はなんも出してない
scoreboard players set .Mity Hi9j_Hand 0
scoreboard players set .Dis Hi9j_Hand 0
scoreboard players set .None Hi9j_Hand 0

execute as @e[predicate=hi9_jankenwars:alive-players] run function hi9_jankenwars:internal/turn/log_hand

#&bPSR
scoreboard players set .Types Hi9j_Hand 0
execute if score .R Hi9j_Hand matches 1.. run scoreboard players add .Types Hi9j_Hand 1
execute if score .S Hi9j_Hand matches 1.. run scoreboard players add .Types Hi9j_Hand 2
execute if score .P Hi9j_Hand matches 1.. run scoreboard players add .Types Hi9j_Hand 4

scoreboard players operation FightFlag Hi9j_Var = FG_NORMAL Hi9j_Var

# あいこだと仮定する
tag @a remove Hi9j_Winner
tag @a remove Hi9j_Loser

scoreboard players operation FightFlag Hi9j_Var = FG_TIE_TUBA Hi9j_Var
# 001
# 010
# 011
execute if score .Types Hi9j_Hand matches 3 run scoreboard players operation FightFlag Hi9j_Var = FG_NORMAL Hi9j_Var
execute if score .Types Hi9j_Hand matches 3 run execute as @a[predicate=hi9_jankenwars:alive-players] if score @s Hi9j_Hand = HAND_ROCK Hi9j_Const run tag @s add Hi9j_Winner
execute if score .Types Hi9j_Hand matches 3 run execute as @a[predicate=hi9_jankenwars:alive-players] if score @s Hi9j_Hand = HAND_SCISSORS Hi9j_Const run tag @s add Hi9j_Loser
# 100
# 101
execute if score .Types Hi9j_Hand matches 5 run execute as @a[predicate=hi9_jankenwars:alive-players] if score @s Hi9j_Hand = HAND_ROCK Hi9j_Const run tag @s add Hi9j_Winner
execute if score .Types Hi9j_Hand matches 5 run execute as @a[predicate=hi9_jankenwars:alive-players] if score @s Hi9j_Hand = HAND_SCISSORS Hi9j_Const run tag @s add Hi9j_Loser
# 110
execute if score .Types Hi9j_Hand matches 6 run execute as @a[predicate=hi9_jankenwars:alive-players] if score @s Hi9j_Hand = HAND_SCISSORS Hi9j_Const run tag @s add Hi9j_Winner
execute if score .Types Hi9j_Hand matches 6 run execute as @a[predicate=hi9_jankenwars:alive-players] if score @s Hi9j_Hand = HAND_PAPER Hi9j_Const run tag @s add Hi9j_Loser
# 111

# 誰かの体力がなくなりそうな場合もつばぜり合いが発生するが、ここでは判定したくない
scoreboard players operation GameState Hi9j_Var = GS_SHOW Hi9j_Var
