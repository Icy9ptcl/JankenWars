#
# (残りレベル) >= 2 {
#   攻撃力 = (攻撃力 + レベル毎の絶対値) * 倍率(%) / 100(%->n)
# }
# 
# 1 になったら終わり

execute if score #Multi Hi9j_Var matches 2.. run scoreboard players operation #ActualAtk Hi9j_Var += AtkAddByLvl Hi9j_Cfg
execute if score #Multi Hi9j_Var matches 2.. run scoreboard players operation #ActualAtk Hi9j_Var *= AtkMultiByLvl Hi9j_Cfg
execute if score #Multi Hi9j_Var matches 2.. run scoreboard players operation #ActualAtk Hi9j_Var /= #Pct Hi9j_Var
execute if score #Multi Hi9j_Var matches 2.. run scoreboard players remove #Multi Hi9j_Var 1
execute if score #Multi Hi9j_Var matches 2.. run function hi9_jankenwars:internal/fight/util/add_atk