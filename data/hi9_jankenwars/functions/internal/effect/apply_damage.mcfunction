scoreboard players operation @s Hi9j_Health -= @s Hi9j_Dmg

scoreboard players operation @s Hi9j_dHP_Var -= @s Hi9j_Health
execute if score @s Hi9j_dHP_Var matches ..-1 run scoreboard players set @s Hi9j_dHP_Var 0
scoreboard players operation @s Hi9j_dHP_Var -= @s Hi9j_Health
scoreboard players set #Div2 Hi9j_Var 2
scoreboard players operation #Time Hi9j_dHP_Var = HitWaitTime Hi9j_Var
scoreboard players operation #Time Hi9j_dHP_Var /= #Div2 Hi9j_Var

function hi9_jankenwars:internal/ui/disp_health/apply

tellraw @a[predicate=hi9_jankenwars:all-participants] [{"selector":"@s"},{"text":" は "},{"score":{"objective": "Hi9j_Dmg","name": "@s"},"color":"gold","bold":true},{"text":" のダメージを受けた！"}]

# execute if score @s Hi9j_Health matches ..-1 run scoreboard players set @s Hi9j_Health 0