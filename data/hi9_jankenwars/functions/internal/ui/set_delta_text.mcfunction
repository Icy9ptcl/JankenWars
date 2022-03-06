scoreboard players operation #Delta Hi9j_dHP_Var = @s Hi9j_Health
scoreboard players operation #Delta Hi9j_dHP_Var -= @s Hi9j_dHP_From

execute if score #Delta Hi9j_dHP_Var matches ..-1 run data modify storage hi9j_disphealth delta set value '[{"text":"","color": "red","bold": true},{"score":{"objective":"Hi9j_dHP_Var","name": "#Delta"},"color": "red","bold": true}]'
execute if score #Delta Hi9j_dHP_Var matches 0 run data modify storage hi9j_disphealth delta set value '[{"text":""}]'
execute if score #Delta Hi9j_dHP_Var matches 1.. run data modify storage hi9j_disphealth delta set value '[{"text":"+","color": "green","bold": true},{"score":{"objective":"Hi9j_dHP_Var","name": "#Delta"},"color":"green","bold": true}]'
