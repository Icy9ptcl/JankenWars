scoreboard objectives remove Hi9j_SkillCD

scoreboard objectives add Hi9j_SkillID dummy
scoreboard objectives add Hi9j_SkillCD dummy
scoreboard objectives add Hi9j_SkillBelong dummy

kill @e[tag=Hi9j_SkillObk]
execute as @e[tag=Hi9j_SkillObj] run function hi9_jankenwars:internal/player/summon_pl_skills