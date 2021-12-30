### ダメージを計算する
### --> Hi9j_Var:#AtkHandId 攻撃はどの手？
###     Hi9j_Var:#DefHandId 防御はどの手？
###     与える側 (@Hi9j_Atk)
###     食らう側 (@Hi9j_Def)
### <-- Hi9j_Var:#Dmg ダメージ

scoreboard players set Dmg Hi9j_Var 0

# 効率は悪いかも知れないが....
scoreboard players set #Atk Hi9j_Var -1
scoreboard players operation #Atk Hi9j_Var = @a[tag=Hi9j_Atk,limit=1] Hi9j_St_Ratk
execute if score #AtkHandId Hi9j_Var = HAND_ROCK Hi9j_Const run scoreboard players operation #Atk Hi9j_Var = @a[tag=Hi9j_Atk,limit=1] Hi9j_St_Ratk
execute if score #AtkHandId Hi9j_Var = HAND_SCISSORS Hi9j_Const run scoreboard players operation #Atk Hi9j_Var = @a[tag=Hi9j_Atk,limit=1] Hi9j_St_Satk
execute if score #AtkHandId Hi9j_Var = HAND_PAPER Hi9j_Const run scoreboard players operation #Atk Hi9j_Var = @a[tag=Hi9j_Atk,limit=1] Hi9j_St_Patk

# 攻撃力が設定されていないので平均をとる
execute if score #Atk Hi9j_Var matches -1 run execute as @a[tag=Hi9j_Atk] run function hi9_jankenwars:internal/fight/util/calc_avg_atk
execute as @a[tag=Hi9j_Atk] run scoreboard players operation #ActualAtk Hi9j_Var = #AvgAtk Hi9j_Var

# 攻撃力はいったいいくらなんだ
execute unless score #Atk Hi9j_Var matches -1 run function hi9_jankenwars:internal/fight/util/calc_atk

# Hi9j_Var:#ActualAtk に攻撃力が格納された

# 基本的なダメージの計算式
# 攻撃力 * (ばらつき%) / 100(%->n)
# 防御力はスキルなんです

scoreboard players operation #Dmg Hi9j_Var = #ActualAtk Hi9j_Var

# +- (BaseEntro)% 増減する
scoreboard players operation MaxEntro Hi9j_Var = BaseEntro Hi9j_Cfg
scoreboard players operation MaxEntro Hi9j_Var += BaseEntro Hi9j_Cfg
scoreboard players operation $Max Hi9v_Random = MaxEntro Hi9j_Var
# 乱数
function hi9_random:random

# 増減% + 100% をかけるために
scoreboard players operation EntroPct Hi9j_Var = Random Hi9v_Random
scoreboard players operation EntroPct Hi9j_Var -= BaseEntro Hi9v_Var
scoreboard players operation EntroPct Hi9j_Var += #Pct Hi9v_Random

scoreboard players operation #Dmg Hi9j_Var *= EntroPct Hi9j_Var
scoreboard players operation #Dmg Hi9j_Var /= $Pct Hi9j_Var

# 防御側のボーナス

# スキル処理