### 攻撃力の平均を出す
### 平均を出すプレイヤーが実行する
### <-- Hi9j_Var:#AvgAtk 平均の攻撃力

# R S P 一個ずつ。
scoreboard players set #AtkSum Hi9j_Var 0
# 手の数いくつ？
scoreboard players set #AtkDiv Hi9j_Var 3

scoreboard players operation #Atk Hi9j_Var = @s Hi9j_St_Ratk
function hi9_jankenwars:internal/fight/util/calc_atk
scoreboard players operation #AvgAtk Hi9j_Var += #ActualAtk Hi9j_Var

scoreboard players operation #Atk Hi9j_Var = @s Hi9j_St_Satk
function hi9_jankenwars:internal/fight/util/calc_atk
scoreboard players operation #AvgAtk Hi9j_Var += #ActualAtk Hi9j_Var

scoreboard players operation #Atk Hi9j_Var = @s Hi9j_St_Patk
function hi9_jankenwars:internal/fight/util/calc_atk
scoreboard players operation #AvgAtk Hi9j_Var += #ActualAtk Hi9j_Var

scoreboard players operation #AvgAtk Hi9j_Var /= #AtkDiv Hi9j_Var

