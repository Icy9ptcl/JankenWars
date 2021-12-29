# Act & Compute!

scoreboard players set ActionState Hi9j_Var 0
scoreboard players set ActionPlayer Hi9j_Var 0

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


execute as @a[predicate=hi9_jankenwars:alive-players] run function hi9_jankenwars:internal/turn/log_hand