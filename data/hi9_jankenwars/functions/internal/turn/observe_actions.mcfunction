scoreboard players set ReadyCount Hi9j_Var 0
execute as @a[predicate=hi9_jankenwars:alive-players,scores={Hi9j_Ready=1}] run scoreboard players add ReadyCount Hi9j_Var 1

execute if score ReadyCount Hi9j_Var >= PlayerCount Hi9j_Var run scoreboard players set GameState Hi9j_Var 3