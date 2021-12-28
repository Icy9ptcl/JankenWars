execute if score @s Hi9j_Ready matches 0 run execute at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 2
execute if score @s Hi9j_Ready matches 1 run execute at @s run playsound minecraft:entity.zombie.attack_iron_door master @s ~ ~ ~ 0.4 1.2

data remove storage tmp hi9_jw:tmp

# It's much easier !?!?!
execute unless score @s Hi9j_Hand matches 1..3 run data modify storage hi9_jw:tmp HandName set value '{"text":"????","color":"gray"}'
execute if score @s Hi9j_Hand matches 1 run data modify storage hi9_jw:tmp HandName set value '{"text":"グー","bold":true,"color":"red"}'
execute if score @s Hi9j_Hand matches 2 run data modify storage hi9_jw:tmp HandName set value '{"text":"チョキ","bold":true,"color":"yellow"}'
execute if score @s Hi9j_Hand matches 3 run data modify storage hi9_jw:tmp HandName set value '{"text":"パー","bold":true,"color":"aqua"}'

execute if score @s Hi9j_Ready matches 0 run tellraw @s ["",{"storage":"hi9_jw:tmp", "nbt": "HandName","interpret":true},{"text":" を選んだ。","color":"white"},"\n",{"text":"( 準備ができたら ","color":"gray"},{"text":"[行動を確定]","underlined":true,"color":"green","clickEvent":{"action":"run_command","value":"/function hi9_jankenwars:action-ready"},"hoverEvent":{"action":"show_text","value":["クリックすると行動を確定します。","\n",{"text":"(確定すると変更できません！)","color":"red"}]}},{"text":" しよう )","color":"gray"}]

execute if score @s Hi9j_Ready matches 1 run tellraw @s [{"text":"すでに ","color":"red"},{"storage":"hi9_jw:tmp", "nbt": "HandName","interpret":true},{"text":" を選んでいる！"},"\n",{"text":"( 準備ができたら ","color":"gray"},{"text":"[行動を確定]","underlined":true,"color":"green","clickEvent":{"action":"run_command","value":"/function hi9_jankenwars:action-ready"},"hoverEvent":{"action":"show_text","value":["クリックすると行動を確定します。","\n",{"text":"(確定すると変更できません！)","color":"red"}]}},{"text":" しよう )","color":"gray"}]