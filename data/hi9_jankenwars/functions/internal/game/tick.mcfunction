execute unless score GameState Hi9j_Var matches -2147483648..2147483647 run scoreboard players set GameState Hi9j_Var 0

# 0: Turn start.
execute if score GameState Hi9j_Var = GS_TURN_START Hi9j_Const run scoreboard players set TurnPlayer Hi9j_Var 0
execute if score GameState Hi9j_Var = GS_TURN_START Hi9j_Const run scoreboard players set GameState Hi9j_Var 1

# 1: Player turn init.
execute if score GameState Hi9j_Var = GS_TURN_INIT Hi9j_Const run function hi9_jankenwars:internal/turn/start_turn

# 2: Player decide their action.
execute if score GameState Hi9j_Var = GS_PL_COMS Hi9j_Const run function hi9_jankenwars:internal/turn/observe_actions

# 3: Player pre-action.
execute if score GameState Hi9j_Var = GS_PRE_ACT Hi9j_Const run function hi9_jankenwars:internal/turn/pre_action

# 4: Player skills.
execute if score GameState Hi9j_Var = GS_PL_SKILLS Hi9j_Const run function hi9_jankenwars:internal/turn/player_skill

# 5: Player action & compute things.
execute if score GameState Hi9j_Var = GS_PREP_SHOW Hi9j_Const run function hi9_jankenwars:internal/turn/player_action

# 6: Show player actions.
execute if score GameState Hi9j_Var = GS_SHOW Hi9j_Const run function hi9_jankenwars:internal/turn/play_player_actions
