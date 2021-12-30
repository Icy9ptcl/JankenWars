### あるプレイヤーからある負けチームのプレイヤーへのダメージ計算 (sub)
### 視点が負けチームであることに注意
### Hi9j_Def をつけて実行するだけ
### --> @Hi9j_Atk 攻撃するプレイヤー
###     (@実行者) 防御するプレイヤー
### <-- Hi9j_PDmg:(実行者) 受けるダメージ

tag @a remove Hi9j_Def
tag @s add Hi9j_Def
function hi9_jankenwars:internal/fight/util/calc_dmg

scoreboard players operation @s Hi9j_PDmg = #Dmg Hi9j_Var