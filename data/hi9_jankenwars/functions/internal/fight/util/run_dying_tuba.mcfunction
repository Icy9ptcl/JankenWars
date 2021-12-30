tag @a remove Hi9j_Dying

execute as @a[tag=Hi9j_Defence] if score @s Hi9j_Tmp matches ..0 run tag @s add Hi9j_Dying

# ヤバいプレイヤーはつばぜり合いで防御側
execute store result score #SelectNum Hi9j_Var run tag @e[tag=Hi9j_Dying] add Hi9j_ChooseFrom
function hi9_jankenwars:internal/logic/choose_players
tag @a[tag=Hi9j_Chosen] add Hi9j_TubaDef

# そうでないプレイヤーはつばぜり合いで攻撃側
# この場合攻撃側が不利になりうる
execute store result score #SelectNum Hi9j_Var run tag @e[tag=!Hi9j_Dying] add Hi9j_ChooseFrom
function hi9_jankenwars:internal/logic/choose_players
tag @a[tag=Hi9j_Chosen] add Hi9j_TubaDef

scoreboard players operation FightFlag Hi9j_Var = FG_DYING_TUBA Hi9j_Var