# The mendokusai(tasteless) process
tag @a[tag=Hi9j_ChooseTarget] remove Hi9j_ChooseTarget
tag @r[tag=Hi9j_ChooseFrom,limit=1] add Hi9j_ChooseTarget
tag @a[tag=Hi9j_ChooseTarget] remove Hi9j_ChooseFrom 
tag @a[tag=Hi9j_ChooseTarget] add Hi9j_Chosen

scoreboard players remove #SelectNum Hi9j_Var 1
# まだいる？
execute if score #SelectNum Hi9j_Var matches 1.. run function hi9_jankenwars:internal/logic/choose_solo