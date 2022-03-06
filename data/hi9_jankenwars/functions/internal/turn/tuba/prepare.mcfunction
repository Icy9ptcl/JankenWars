execute as @a[predicate=hi9_jankenwars:all-participants] at @s run playsound block.anvil.destroy player @s ~ ~ ~ 0.8 1.2
execute as @a[predicate=hi9_jankenwars:all-participants] at @s run playsound block.anvil.destroy player @s ~ ~ ~ 0.8 0.8

title @a[predicate=hi9_jankenwars:all-participants] times 5 40 5
execute if score FightFlag Hi9j_Var = FG_TIE_TUBA Hi9j_Const run title @a[predicate=hi9_jankenwars:all-participants] subtitle {"text":"あいこだ！自分の手を押し通せ！","color":"white"}
execute if score FightFlag Hi9j_Var = FG_DYING_TUBA Hi9j_Const run title @a[predicate=hi9_jankenwars:all-participants,tag=Hi9j_TubaAtk] subtitle {"text":"最後の一押し！相手を押し切れ！","color":"green"}
execute if score FightFlag Hi9j_Var = FG_DYING_TUBA Hi9j_Const run title @a[predicate=hi9_jankenwars:all-participants,tag=Hi9j_TubaDef] subtitle {"text":"とどめを刺されてしまう！耐えぬけ！","color":"red"}

title @a[predicate=hi9_jankenwars:all-participants] title {"text":"つばぜり合いだ！","color":"yellow","bold":true}

execute if score FightFlag Hi9j_Var = FG_TIE_TUBA Hi9j_Const run tellraw @a[predicate=hi9_jankenwars:all-participants] [{"text":"あいこなのでつばぜり合い発生！","color":"yellow"}]
execute if score FightFlag Hi9j_Var = FG_DYING_TUBA Hi9j_Const run tellraw @a[predicate=hi9_jankenwars:all-participants] [{"text":"ピンチなのでつばぜり合い発生！","color":"yellow"}]

# ルールを選びたい
scoreboard players set $Max Hi9v_Random 1
# 乱数
function hi9_random:random

scoreboard players operation TubaMode Hi9j_Var = Random Hi9v_Random
execute if score TubaMode Hi9j_Var matches 0 run function hi9_jankenwars:internal/turn/tuba/game/dice/notice
scoreboard players set TubaWait Hi9j_Var 100
scoreboard players set TubaState Hi9j_Var 1
