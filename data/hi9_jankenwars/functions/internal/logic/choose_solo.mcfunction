# The mendokusai(tasteless) process
tag @e[tag=Hi9j_ChooseTarget] remove Hi9j_ChooseTarget
tag @e[tag=Hi9j_ChooseFrom,sort=random,limit=1] add Hi9j_ChooseTarget
tag @e[tag=Hi9j_ChooseTarget] remove Hi9j_ChooseFrom 
tag @e[tag=Hi9j_ChooseTarget] add Hi9j_Chosen

scoreboard players remove #SelectNum Hi9j_Var 1
# まだいる？
execute if score #SelectNum Hi9j_Var matches 1.. run function hi9_jankenwars:internal/logic/choose_solo