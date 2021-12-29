# Set random pre-wait phase. To prevent being noticed how long your opponent took to think & consider, there will be a short wait time. Set PreWaitMulti of Hi9j_Var to 0 to disable.

execute unless score PreWait Hi9j_Var matches 1.. run function hi9_jankenwars:internal/turn/setup_pre_action
scoreboard players remove PreWait Hi9j_Var 1

# Seems like pre-wait has ended
execute if score PreWait Hi9j_Var matches 0 run tellraw @a[tag=Hi9j_Dbg] [{"text":"// ", "color":"gray"},{"text": "Pre-action が完了しました"}]
execute if score PreWait Hi9j_Var matches 0 run scoreboard players set GameState Hi9j_Var 4
execute if score PreWait Hi9j_Var matches 0 run scoreboard players reset PreWait Hi9j_Var
