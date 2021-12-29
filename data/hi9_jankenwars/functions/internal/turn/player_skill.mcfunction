# Act. Runs every tick

# scoreboard players set ActionState Hi9j_Var 0
# scoreboard players set ActionPlayer Hi9j_Var 0

execute if score ActionState Hi9j_Var matches 0 run tag @a[tag=Hi9j_SkillPlayer] remove Hi9j_SkillPlayer
execute if score ActionState Hi9j_Var matches 0 run execute as @e[predicate=hi9_jankenwars:all-participants] run execute if score @s Hi9j_Participant = ActionPlayer Hi9j_Var run tag @s add Hi9j_SkillPlayer
execute if score ActionState Hi9j_Var matches 0 run tellraw @a[tag=Hi9j_Dbg] [{"text":"// ", "color":"gray"},{"text":" Pre-action of "},{"selector":"@a[tag=Hi9j_SkillPlayer]"}]
execute if score ActionState Hi9j_Var matches 0 run scoreboard players set ActionState Hi9j_Var 1

execute if score ActionState Hi9j_Var matches 1 run execute unless entity @e[predicate=hi9_jankenwars:alive-players] run scoreboard players set ActionState Hi9j_Var 100

execute if score ActionState Hi9j_Var matches 1 run scoreboard players set ActionState Hi9j_Var 100

execute if score ActionState Hi9j_Var matches 100 run tellraw @a[tag=Hi9j_Dbg] [{"text":"// ", "color":"gray"},{"text":" Pre-action 完了 "},{"selector":"@a[tag=Hi9j_SkillPlayer]"}]
execute if score ActionState Hi9j_Var matches 100 run scoreboard players add ActionPlayer Hi9j_Var 1

execute if score ActionPlayer Hi9j_Var >= PlayerCount Hi9j_Var run tellraw @a[tag=Hi9j_Dbg] [{"text":"// ", "color":"gray"},{"text": "全員の pre-action が完了しました"}]
execute if score ActionPlayer Hi9j_Var >= PlayerCount Hi9j_Var run scoreboard players set GameState Hi9j_Var 5
