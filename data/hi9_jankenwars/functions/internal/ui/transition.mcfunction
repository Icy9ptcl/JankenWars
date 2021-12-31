scoreboard players add @s Hi9j_dHP_Time 1

scoreboard players operation Max Hi9es_Var = @s Hi9j_dHP_Length
scoreboard players operation Tick Hi9es_Var = @s Hi9j_dHP_Time
function hi9_ease:get_ease_out

# HP 増減元->現在のHP へのベクトル
scoreboard players operation #HPVect Hi9j_dHP_Var = @s Hi9j_Health
scoreboard players operation #HPVect Hi9j_dHP_Var -= @s Hi9j_dHP_From

scoreboard players operation @s Hi9j_dHP_Value = @s Hi9j_dHP_From
scoreboard players operation #HPVect Hi9j_dHP_Var *= Value Hi9es_Var
scoreboard players operation #HPVect Hi9j_dHP_Var /= Max Hi9es_Var
scoreboard players operation @s Hi9j_dHP_Value += #HPVect Hi9j_dHP_Var

execute if score @s Hi9j_dHP_Time >= @s Hi9j_dHP_Length run function hi9_jankenwars:internal/ui/finish_transition