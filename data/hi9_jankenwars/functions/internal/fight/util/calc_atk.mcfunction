### 攻撃力(レベル)->実際の攻撃力
### --> Hi9j_Var:#Atk 手のレベル
### <-- Hi9j_Var:#ActualAtk 攻撃力
# execute store result でできないものだろうか
# というか引数の機能がほしい

# レベルはいくつか = 何回回すか
scoreboard players operation #Multi Hi9j_Var = #Atk Hi9j_Var
# その当時の攻撃力
scoreboard players operation #ActualAtk Hi9j_Var = DefaultAtk Hi9j_Cfg

function hi9_jankenwars:internal/fight/util/add_atk

# #ActualAtk は流用