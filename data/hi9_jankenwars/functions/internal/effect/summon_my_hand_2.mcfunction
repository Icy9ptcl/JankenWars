tag @e[tag=Hi9j_Tmp] remove Hi9j_summon_target

execute if entity @e[tag=Hi9j_Against] run tag @e[tag=Hi9j_Against,limit=1] add Hi9j_summon_target
tellraw @a[tag=Hi9j_Dbg] [{"text":"// targets: ", "color":"gray"},{"selector":"@e[tag=Hi9j_Against]"},{"text":"  chosen: ", "color":"gray"},{"selector":"@e[tag=Hi9j_summon_target]"}]


function hi9_jankenwars:internal/effect/summon_my_hand

tag @e[tag=Hi9j_summon_target] remove Hi9j_Against
tag @e[tag=Hi9j_summon_target] remove Hi9j_summon_target