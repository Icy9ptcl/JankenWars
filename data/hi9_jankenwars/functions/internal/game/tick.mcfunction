execute unless score GameState Hi9j_Var matches -2147483648..2147483647 run scoreboard players set GameState Hi9j_Var 0

# 0: Turn start.
execute if score GameState Hi9j_Var matches 0 run scoreboard players set TurnPlayer Hi9j_Var 0
execute if score GameState Hi9j_Var matches 0 run scoreboard players set GameState Hi9j_Var 1

# 1: Player turn init.
execute if score GameState Hi9j_Var matches 1 run function hi9_jankenwars:internal/turn/start_turn

# 2: Player decide their action.
execute if score GameState Hi9j_Var matches 2 run function hi9_jankenwars:internal/turn/observe_actions

# 3: Player pre-action.
execute if score GameState Hi9j_Var matches 3 run function hi9_jankenwars:internal/turn/pre_action

# 4: Player skills.
execute if score GameState Hi9j_Var matches 4 run function hi9_jankenwars:internal/turn/player_skill

# 5: Player action & compute things.
execute if score GameState Hi9j_Var matches 5 run function hi9_jankenwars:internal/turn/player_action

# 6: Show player actions.
execute if score GameState Hi9j_Var matches 6 run function hi9_jankenwars:internal/turn/play_player_actions
