scoreboard players set ReadyCount Hi9j_Var 0
execute as @e[predicate=hi9_jankenwars:alive-players,scores={Hi9j_Ready=1}] run scoreboard players add ReadyCount Hi9j_Var 1

execute if score ReadyCount Hi9j_Var >= PlayerCount Hi9j_Var run scoreboard players set GameState Hi9j_Var 3

execute if score ReadyCount Hi9j_Var >= PlayerCount Hi9j_Var run tellraw @a[tag=Hi9j_Dbg] [{"text":"// ", "color":"gray"},{"text": "全員の準備が完了しました"}]
