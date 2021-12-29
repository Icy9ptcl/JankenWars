# Prepare for player action. Runs only once.

tellraw @a[tag=Hi9j_Dbg] [{"text":"// ", "color":"gray"},{"text": "Pre-action を行います"}]

scoreboard players set ActionState Hi9j_Var 0
scoreboard players set ActionPlayer Hi9j_Var 0

function hi9_random:random
scoreboard players operation #Pw Hi9j_Var = Random Hi9v_Random
scoreboard players operation #Pw Hi9j_Var *= PreWaitMulti Hi9j_Var
scoreboard players operation #Pw Hi9j_Var /= #Pct Hi9j_Var
scoreboard players operation PreWait Hi9j_Var = #Pw Hi9j_Var
scoreboard players add PreWait Hi9j_Var 1
execute if score PreWait Hi9j_Var < PreWaitMin Hi9j_Var run scoreboard players operation PreWait Hi9j_Var = PreWaitMin Hi9j_Var

scoreboard players set #SkillPlayer Hi9j_Var 0
scoreboard players set #ActionPlayer Hi9j_Var 0

# `Random` of Hi9v_Random takes 0 to 100 but since we cannot store float value in scoreboard, multiply by Percentage% (int to int%) and divide it by 100% (int% to int). well this is actually useful