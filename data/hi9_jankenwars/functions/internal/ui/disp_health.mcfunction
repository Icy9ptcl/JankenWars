data modify storage hi9j_disphealth text set value '' 
data modify storage hi9j_disphealth delta set value ''

scoreboard players operation #Prop Hi9j_dHP_Var = @s Hi9j_Health
scoreboard players operation #Prop Hi9j_dHP_Var *= #Pct Hi9j_Var
scoreboard players operation #Prop Hi9j_dHP_Var /= @s Hi9j_MaxHealth

# もうちょっといじる？
execute if score #Prop Hi9j_dHP_Var matches 0 run data modify storage hi9j_disphealth heart set value '[{"text":"☠ HP ","color":"gray"},{"score":{"objective":"Hi9j_dHP_Value", "name": "@s"},"color":"gray","bold":true}]'
execute if score #Prop Hi9j_dHP_Var matches 1..20 run data modify storage hi9j_disphealth heart set value '[{"text":"❤ HP ","color":"red"},{"score":{"objective":"Hi9j_dHP_Value", "name": "@s"},"color":"red","bold":true}]'
execute if score #Prop Hi9j_dHP_Var matches 21..50 run data modify storage hi9j_disphealth heart set value '[{"text":"❤ HP ","color":"yellow"},{"score":{"objective":"Hi9j_dHP_Value", "name": "@s"},"color":"yellow","bold":true}]'
execute if score #Prop Hi9j_dHP_Var matches 51..100 run data modify storage hi9j_disphealth heart set value '[{"text":"❤ HP ","color":"green"},{"score":{"objective":"Hi9j_dHP_Value", "name": "@s"},"color":"green","bold":true}]'
execute if score #Prop Hi9j_dHP_Var matches 101.. run data modify storage hi9j_disphealth heart set value '[{"text":"❤+ HP ","color":"aqua"},{"score":{"objective":"Hi9j_dHP_Value", "name": "@s"},"color":"aqua","bold":true}]'

execute unless score @s Hi9j_dHP_Time matches -1 run function hi9_jankenwars:internal/ui/set_delta_text

execute if score @s Hi9j_dHP_DispMode matches 0 run function hi9_jankenwars:internal/ui/disp_health_actionbar