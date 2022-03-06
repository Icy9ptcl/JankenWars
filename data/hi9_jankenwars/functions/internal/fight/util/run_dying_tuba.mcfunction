tag @e remove Hi9j_Dying

execute as @e[tag=Hi9j_Defence] if score @s Hi9j_Tmp matches ..0 run tag @s add Hi9j_Dying

tellraw @a[tag=Hi9j_Dbg] [{"text":"","color":"gray"},{"text":"HP depleting:"},{"selector":"@e[tag=Hi9j_Dying]"}]

tag @e remove Hi9j_ChooseFrom

# ヤバいプレイヤーはつばぜり合いで防御側
execute store result score #SelectNum Hi9j_Var run tag @e[predicate=hi9_jankenwars:alive-players,tag=Hi9j_Dying] add Hi9j_ChooseFrom
function hi9_jankenwars:internal/logic/choose_players
tag @e[tag=Hi9j_Chosen] add Hi9j_TubaDef
tag @e remove Hi9j_ChooseFrom

# そうでないプレイヤーはつばぜり合いで攻撃側
# この場合攻撃側が不利になりうる
execute store result score #SelectNum Hi9j_Var run tag @e[predicate=hi9_jankenwars:alive-players,tag=!Hi9j_Dying] add Hi9j_ChooseFrom
function hi9_jankenwars:internal/logic/choose_players
tag @e[tag=Hi9j_Chosen] add Hi9j_TubaAtk
tag @e remove Hi9j_ChooseFrom

scoreboard players operation FightFlag Hi9j_Var = FG_DYING_TUBA Hi9j_Const