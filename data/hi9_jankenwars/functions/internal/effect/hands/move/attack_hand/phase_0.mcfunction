# Phase 0
# 指定場所へ移動
execute store result score #FromX Hi9j_Var run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].fromX 100
execute store result score #FromY Hi9j_Var run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].fromY 100
execute store result score #FromZ Hi9j_Var run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].fromZ 100

execute store result score #TargetID Hi9j_Var run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].targetID 1
execute as @e[predicate=hi9_jankenwars:alive-players] if score @s Hi9j_Participant = #TargetID Hi9j_Var run tag @s add Hi9j_pt_to

execute store result score #winFlag Hi9j_Var run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].winFlag 1

execute store result score #ToX Hi9j_Var run data get entity @e[tag=Hi9j_pt_to,limit=1] Pos[0] 100 
execute store result score #ToY Hi9j_Var run data get entity @e[tag=Hi9j_pt_to,limit=1] Pos[1] 100 
execute store result score #ToZ Hi9j_Var run data get entity @e[tag=Hi9j_pt_to,limit=1] Pos[2] 100 

# 始点から目標プレイヤーまでのベクトル
scoreboard players operation #ToX Hi9j_Var -= #FromX Hi9j_Var
scoreboard players operation #ToY Hi9j_Var -= #FromY Hi9j_Var
scoreboard players operation #ToZ Hi9j_Var -= #FromZ Hi9j_Var

scoreboard players operation Max Hi9es_Var = #NextTick Hi9j_Var
scoreboard players operation Tick Hi9es_Var = #Tick Hi9j_Var
function hi9_ease:get_ease_in

scoreboard players operation #ToX Hi9j_Var *= Value Hi9es_Var
scoreboard players operation #ToY Hi9j_Var *= Value Hi9es_Var
scoreboard players operation #ToZ Hi9j_Var *= Value Hi9es_Var

scoreboard players operation #ToX Hi9j_Var /= Max Hi9es_Var
scoreboard players operation #ToY Hi9j_Var /= Max Hi9es_Var
scoreboard players operation #ToZ Hi9j_Var /= Max Hi9es_Var

# tellraw @a[tag=Hi9j_Dbg] [{"text":"// ", "color":"gray"},{"text":"Pos ( "},{"score":{"objective":"Hi9j_Var","name":"#FromX"}},{"text":" ,"},{"score":{"objective":"Hi9j_Var","name":"#FromY"}},{"text":" ,"},{"score":{"objective":"Hi9j_Var","name":"#FromZ"}},{"text":" )"},{"text":" + Vect ( "},{"score":{"objective":"Hi9j_Var","name":"#ToX"}},{"text":" ,"},{"score":{"objective":"Hi9j_Var","name":"#ToY"}},{"text":" ,"},{"score":{"objective":"Hi9j_Var","name":"#ToZ"}},{"text":" )"}]

scoreboard players operation #FromX Hi9j_Var += #ToX Hi9j_Var
scoreboard players operation #FromY Hi9j_Var += #ToY Hi9j_Var
scoreboard players operation #FromZ Hi9j_Var += #ToZ Hi9j_Var

# tp!!!
summon armor_stand ~ ~ ~ {"Tags":["Hi9j_TPTarget"]}
execute store result entity @e[tag=Hi9j_TPTarget,limit=1] Pos[0] double 0.01 run scoreboard players get #FromX Hi9j_Var
execute store result entity @e[tag=Hi9j_TPTarget,limit=1] Pos[1] double 0.01 run scoreboard players get #FromY Hi9j_Var
execute store result entity @e[tag=Hi9j_TPTarget,limit=1] Pos[2] double 0.01 run scoreboard players get #FromZ Hi9j_Var

tp @s @e[tag=Hi9j_TPTarget,limit=1]
kill @e[tag=Hi9j_TPTarget,limit=1]

# winFlag が false(0) なら半分で中断
scoreboard players set #Div2 Hi9j_Var 2
execute if score #winFlag Hi9j_Var matches 0 run scoreboard players operation #DisTick Hi9j_Var = #NextTick Hi9j_Var
execute if score #winFlag Hi9j_Var matches 0 run scoreboard players operation #DisTick Hi9j_Var /= #Div2 Hi9j_Var
execute if score #winFlag Hi9j_Var matches 0 if score #Tick Hi9j_Var >= #DisTick Hi9j_Var run scoreboard players set #Phase Hi9j_Var 2
# tellraw @a[tag=Hi9j_Dbg] [{"text":"// ", "color":"gray"},{"selector": "@s","color":"gray"},{"text":" winFlag "},{"score":{"objective":"Hi9j_Var","name":"#winFlag"}},{"text":"  DisTick: "},{"score":{"objective":"Hi9j_Var","name":"#DisTick"}}]

# winFlag が CANCEL(-1) ならつばぜり合い！ 2/3の段階で中断
scoreboard players set #Div3 Hi9j_Var 3
execute if score #winFlag Hi9j_Var matches 0 run scoreboard players operation #DisTick Hi9j_Var = #NextTick Hi9j_Var
execute if score #winFlag Hi9j_Var matches 0 run scoreboard players operation #DisTick Hi9j_Var /= #Div3 Hi9j_Var
execute if score #winFlag Hi9j_Var matches 0 run scoreboard players operation #DisTick Hi9j_Var *= #Div2 Hi9j_Var
execute if score #winFlag Hi9j_Var matches 0 if score #Tick Hi9j_Var >= #DisTick Hi9j_Var run scoreboard players set #Phase Hi9j_Var 1

tellraw @a[tag=Hi9j_Dbg] [{"text":"// ", "color":"gray"},{"selector": "@s","color":"gray"},{"text":" frame "},{"score":{"objective":"Hi9j_Var","name":"#Tick"}},{"text":"/"},{"score":{"objective":"Hi9j_Var","name":"#NextTick"}},{"text":", ease% "},{"score":{"objective":"Hi9es_Var","name":"Value"}},{"text":" -> towards "},{"score":{"objective":"Hi9j_Var","name":"#TargetID"}},{"text":"  Pos ( "},{"score":{"objective":"Hi9j_Var","name":"#FromX"}},{"text":" ,"},{"score":{"objective":"Hi9j_Var","name":"#FromY"}},{"text":" ,"},{"score":{"objective":"Hi9j_Var","name":"#FromZ"}},{"text":" )"}]

tag @e remove Hi9j_pt_to