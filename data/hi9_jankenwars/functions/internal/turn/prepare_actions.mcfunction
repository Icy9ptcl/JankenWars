# Prepare for player action. Runs only once.

scoreboard players set ActionState Hi9j_Var 0
scoreboard players set ActionPlayer Hi9j_Var 0

function hi9_random:random
scoreboard players operation #Pw Hi9j_Var = Random Hi9v_Random
scoreboard players operation #Pw Hi9j_Var *= PreWaitMulti Hi9v_Random
scoreboard players operation #Pw Hi9j_Var /= #Pct Hi9v_Random
scoreboard players operation PreWait Hi9j_Var = #Pw Hi9v_Random

scoreboard players set #SkillPlayer Hi9j_Var -1
scoreboard players set #ActionPlayer Hi9j_Var -1


# `Random` of Hi9v_Random takes 0 to 100 but since we cannot store float value in scoreboard, multiply by Percentage% (int to int%) and divide it by 100% (int% to int). well this is actually useful