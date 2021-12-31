#the end

tag @s remove Hi9j_Hand_WIP
tellraw @a[tag=Hi9j_Dbg] [{"text":"// DONE /", "color":"gray"},{"selector": "@s","color":"gray"}, {"text":" frame "},{"score":{"objective":"Hi9j_Var","name":"#Tick"}},{"text":", ease% "},{"score":{"objective":"Hi9es_Var","name":"Value"}},{"text":" -> towards "},{"score":{"objective":"Hi9j_Var","name":"#TargetID"}},{"text":"  Pos ( "},{"score":{"objective":"Hi9j_Var","name":"#FromX"}},{"text":" ,"},{"score":{"objective":"Hi9j_Var","name":"#FromY"}},{"text":" ,"},{"score":{"objective":"Hi9j_Var","name":"#FromZ"}},{"text":" )"}]

function hi9_jankenwars:internal/effect/hands/move/attack_hand/dispose
