tag @e[tag=Hi9j_Target] remove Hi9j_Against
execute if entity @s[tag=Hi9j_Attacker] run tag @e[tag=Hi9j_Defence] add Hi9j_Against
execute if entity @s[tag=Hi9j_Defence] run tag @e[tag=Hi9j_Attacker] add Hi9j_Against


function hi9_jankenwars:internal/effect/summon_my_hand_2