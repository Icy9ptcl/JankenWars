### あるプレイヤーから負けチーム全員へのダメージ計算 (sub)
### 実行者が「あるプレイヤー」
### --> @Hi9j_Defence 負けチーム
### <-- Hi9j_PDmg:{@Hi9j_Defence} 受けるダメージ

scoreboard objectives remove Hi9j_PDmg
scoreboard objectives add Hi9j_PDmg dummy

tag @a remove Hi9j_Atk
tag @s add Hi9j_Atk

execute as @e[tag=Hi9j_Defence] run function hi9_jankenwars:internal/fight/util/2t/run_solo

