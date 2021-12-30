### 勝ち負けチームのダメージ計算
### --> @Hi9j_Attacker 勝ちチーム
###     @Hi9j_Defence 負けチーム
###     Hi9j_Var:#AtkHandId 攻撃はどの手？
###     Hi9j_Var:#DefHandId 防御はどの手？
### <-- Hi9j_Dmg:* 各プレイヤーの受けるダメージ

scoreboard objectives remove Hi9j_Dmg
scoreboard objectives add Hi9j_Dmg dummy

scoreboard players set @a[tag=Hi9j_Defence] Hi9j_Dmg 0
execute as @a[tag=Hi9j_Attacker] run function hi9_jankenwars:internal/fight/util/2t/run-attacker
execute as @a[tag=Hi9j_Defence] run scoreboard players operation @s Hi9j_Dmg += @s Hi9j_PDmg