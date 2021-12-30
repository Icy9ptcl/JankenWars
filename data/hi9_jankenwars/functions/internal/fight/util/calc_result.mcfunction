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

#&bPSR / ここらのマジックナンバーは許して
scoreboard players set .Types Hi9j_Hand 0
execute if score .R Hi9j_Hand matches 1.. run scoreboard players add .Types Hi9j_Hand 1
execute if score .S Hi9j_Hand matches 1.. run scoreboard players add .Types Hi9j_Hand 2
execute if score .P Hi9j_Hand matches 1.. run scoreboard players add .Types Hi9j_Hand 4

scoreboard players operation FightFlag Hi9j_Var = FG_NORMAL Hi9j_Var

# あいこだと仮定する
tag @a remove Hi9j_Attacker
tag @a remove Hi9j_Defence

# つばぜり合いに巻き込まれるのは？
tag @a remove Hi9j_TubaAtk
tag @a remove Hi9j_TubaDef

scoreboard players operation FightFlag Hi9j_Var = FG_TIE_TUBA Hi9j_Var
# 001
# 010
# 011
execute if score .Types Hi9j_Hand matches 3 run scoreboard players operation FightFlag Hi9j_Var = FG_NORMAL Hi9j_Var
execute if score .Types Hi9j_Hand matches 3 run execute as @a[predicate=hi9_jankenwars:alive-players] if score @s Hi9j_Hand = HAND_ROCK Hi9j_Const run tag @s add Hi9j_Attacker
execute if score .Types Hi9j_Hand matches 3 run execute as @a[predicate=hi9_jankenwars:alive-players] if score @s Hi9j_Hand = HAND_SCISSORS Hi9j_Const run tag @s add Hi9j_Defence
# 100
# 101
execute if score .Types Hi9j_Hand matches 5 run execute as @a[predicate=hi9_jankenwars:alive-players] if score @s Hi9j_Hand = HAND_ROCK Hi9j_Const run tag @s add Hi9j_Attacker
execute if score .Types Hi9j_Hand matches 5 run execute as @a[predicate=hi9_jankenwars:alive-players] if score @s Hi9j_Hand = HAND_SCISSORS Hi9j_Const run tag @s add Hi9j_Defence
# 110
execute if score .Types Hi9j_Hand matches 6 run execute as @a[predicate=hi9_jankenwars:alive-players] if score @s Hi9j_Hand = HAND_SCISSORS Hi9j_Const run tag @s add Hi9j_Attacker
execute if score .Types Hi9j_Hand matches 6 run execute as @a[predicate=hi9_jankenwars:alive-players] if score @s Hi9j_Hand = HAND_PAPER Hi9j_Const run tag @s add Hi9j_Defence
# 111

# ダメージ計算
# 勝敗がはっきりしている場合のみ
execute if score FightFlag Hi9j_Var = FG_NORMAL Hi9j_Var run scoreboard players operation #AtkHandId Hi9j_Var = @r[tag=Hi9j_Attacker,limit=1] Hi9j_Hand
execute if score FightFlag Hi9j_Var = FG_NORMAL Hi9j_Var run scoreboard players operation #DefHandId Hi9j_Var = @r[tag=Hi9j_Defence,limit=1] Hi9j_Hand
execute if score FightFlag Hi9j_Var = FG_NORMAL Hi9j_Var run function hi9_jankenwars:internal/fight/util/calc_2t_dmg

# 防御側の誰かの体力がなくなりそうな場合つばぜり合いが発生する
# 攻撃側がスキルの影響でなくなりそうな場合は無視
scoreboard objectives remove Hi9j_Tmp
scoreboard objectives add Hi9j_Tmp dummy
execute as @a[tag=Hi9j_Defence] run scoreboard players operation @s Hi9j_Tmp = @s Hi9j_Health
execute as @a[tag=Hi9j_Defence] run scoreboard players operation @s Hi9j_Tmp -= @s Hi9j_Dmg
# ヤバいプレイヤーがいる
execute as @a[tag=Hi9j_Defence] if score @s Hi9j_Tmp matches ..0 run function hi9_jankenwars:internal/fight/util/run_dying_tuba

# 勝敗がはっきりしない->つばぜりあい
# あいこのつばぜり合いは適当に半分くらいにプレイヤーを分けて発生させる
execute if score FightFlag Hi9j_Var = FG_TIE_TUBA Hi9j_Var run function hi9_jankenwars:internal/fight/util/run_tie_tuba

execute if score FightFlag Hi9j_Var = FG_TIE_TUBA Hi9j_Var run scoreboard players operation GameState Hi9j_Var = GS_TUBA Hi9j_Const
execute if score FightFlag Hi9j_Var = FG_DYING_TUBA Hi9j_Var run scoreboard players operation GameState Hi9j_Var = GS_TUBA Hi9j_Const
execute if score FightFlag Hi9j_Var = FG_NORMAL Hi9j_Var run scoreboard players operation GameState Hi9j_Var = GS_SHOW Hi9j_Const
