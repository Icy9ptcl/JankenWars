### 勝ち負けチームのダメージ計算
### --> @Hi9j_Attacker 勝ちチーム
###     @Hi9j_Defence 負けチーム
###     Hi9j_Var:#AtkHandId 攻撃はどの手？
###     Hi9j_Var:#DefHandId 防御はどの手？
### <-- Hi9j_Dmg:* 各プレイヤーの受けるダメージ

scoreboard objectives remove Hi9j_Dmg
scoreboard objectives add Hi9j_Dmg dummy

scoreboard players set @e[tag=Hi9j_Defence] Hi9j_Dmg 0
execute as @e[tag=Hi9j_Attacker] run function hi9_jankenwars:internal/fight/util/2t/run_attacker

execute as @e[tag=Hi9j_Defence] run tellraw @a[tag=Hi9j_Dbg] [{"text":"// Final damage! ", "color":"gray"},{"selector":"@s"},{"text":"  total of "},{"score":{"objective": "Hi9j_Dmg","name":"@s"}}]


