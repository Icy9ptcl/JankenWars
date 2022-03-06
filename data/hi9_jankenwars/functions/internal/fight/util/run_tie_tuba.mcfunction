# 手に関係なくつばぜり合う
# 2チームに分ける

scoreboard players set #PplCnt Hi9j_Var 0
scoreboard players set #Div2 Hi9j_Var 2
execute store result score #PplCnt Hi9j_Var run tag @e[predicate=hi9_jankenwars:alive-players] add Hi9j_ChooseFrom
# 小数部分は切り捨てられるということは？
scoreboard players operation #PplCnt Hi9j_Var /= #Div2 Hi9j_Var
function hi9_jankenwars:internal/logic/choose_players
tag @e[tag=Hi9j_Chosen] add Hi9j_TubaAtk
tag @e remove Hi9j_ChooseFrom

tag @e[predicate=hi9_jankenwars:alive-players,tag=!Hi9j_TubaAtk] add Hi9j_ChooseFrom
function hi9_jankenwars:internal/logic/choose_players
tag @e[tag=Hi9j_Chosen] add Hi9j_TubaDef
tag @e remove Hi9j_ChooseFrom

# 余った人は不参加です