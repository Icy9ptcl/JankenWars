execute at @s run playsound minecraft:block.wooden_door.open master @s ~ ~ ~ 1 2

tellraw @s ["",{"text":"\n"},{"score":{"name":"TurnCount","objective":"Hi9j_Var"},"bold":true,"color":"gold"},{"text":" ターン目","color":"white"}]
data remove storage hi9_jw:tmp healthdigit
data remove storage hi9_jw:tmp maxhealthdigit
execute if score @s Hi9j_Health matches 0..9 run data modify storage hi9_jw:tmp healthdigit set value '{"text":"0","color":"gray"}'
execute if score @s Hi9j_MaxHealth matches 0..9 run data modify storage hi9_jw:tmp maxhealthdigit set value '{"text":"0","color":"gray"}'
tellraw @s ["",{"text":"HP ","color":"white"},{"storage":"hi9_jw:tmp","nbt":"healthdigit","interpret": true},{"score":{"name":"@s","objective":"Hi9j_Health"},"bold":true,"color":"green"},{"text":" / ","color":"gray"},{"storage":"hi9_jw:tmp","nbt":"maxhealthdigit","interpret": true},{"score":{"name":"@s","objective":"Hi9j_MaxHealth"},"bold":true,"color":"white"}]

execute if score @s Hi9j_Ready = PL_NOT_READY Hi9j_Const run tellraw @s ["",{"text":"行動","color":"white","bold":true},{"text":" ========================","color":"gray"}]
execute if score @s Hi9j_Ready matches 1 run tellraw @s ["",{"text":"行動確定","color":"gold","bold":true},{"text":" ========================","color":"gray"}]
execute if score @s Hi9j_Ready matches 1 if score @s Hi9j_Ready = HAND_ROCK Hi9j_Const run tellraw @s ["",{"text":"出す手 ","color":"white"},{"text":"グー","color":"red","bold": true}]
execute if score @s Hi9j_Ready matches 1 if score @s Hi9j_Ready = HAND_SCISSORS Hi9j_Const run tellraw @s ["",{"text":"出す手 ","color":"white"},{"text":"チョキ","color":"yellow","bold": true}]
execute if score @s Hi9j_Ready matches 1 if score @s Hi9j_Ready = HAND_PAPER Hi9j_Const run tellraw @s ["",{"text":"出す手 ","color":"white"},{"text":"パー","color":"aqua","bold": true}]

data remove storage hi9_jw:tmp hand_r
data remove storage hi9_jw:tmp hand_s
data remove storage hi9_jw:tmp hand_p

# 3 states for each hand !??!?!
execute if score @s Hi9j_Ready = PL_NOT_READY Hi9j_Const if score @s Hi9j_Ready = HAND_UNDECIDED Hi9j_Const run data modify storage hi9_jw:tmp hand_r set value '{"text":"[  グー  ]","bold":false,"underlined":true,"color":"red","clickEvent":{"action":"run_command","value":"/function hi9_jankenwars:internal/selection/hand/choose-rock"},"hoverEvent":{"action":"show_text","value":[{"text":"手を決定する","bold":true,"color":"dark_aqua"},{"text":"\\nこの手を出します。\\n\\n"},{"text":"(行動は ","color":"gray"},{"text":"[確定]","bold":true,"color":"gold"},{"text":" を押すまで決定されません！)","color":"gray"}]}}'
execute if score @s Hi9j_Ready = PL_NOT_READY Hi9j_Const if score @s Hi9j_Ready = HAND_ROCK Hi9j_Const run data modify storage hi9_jw:tmp hand_r set value '{"text":"[  グー  ]","bold":true,"underlined":false,"color":"red"}'
execute if score @s Hi9j_Ready = PL_NOT_READY Hi9j_Const unless score @s Hi9j_Ready = HAND_UNDECIDED Hi9j_Const unless score @s Hi9j_Ready = HAND_ROCK Hi9j_Const run data modify storage hi9_jw:tmp hand_r set value '{"text":"[  グー  ]","bold":false,"underlined":true,"color":"white","clickEvent":{"action":"run_command","value":"/function hi9_jankenwars:internal/selection/hand/choose-rock"},"hoverEvent":{"action":"show_text","value":[{"text":"手を決定する","bold":true,"color":"dark_aqua"},{"text":"\\nこの手を出します。\\n\\n"},{"text":"(行動は ","color":"gray"},{"text":"[確定]","bold":true,"color":"gold"},{"text":" を押すまで決定されません！)","color":"gray"}]}}'

execute if score @s Hi9j_Ready = PL_NOT_READY Hi9j_Const if score @s Hi9j_Ready = HAND_UNDECIDED Hi9j_Const run data modify storage hi9_jw:tmp hand_s set value '{"text":"[ チョキ ]","bold":false,"underlined":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function hi9_jankenwars:internal/selection/hand/choose-scissors"},"hoverEvent":{"action":"show_text","value":[{"text":"手を決定する","bold":true,"color":"dark_aqua"},{"text":"\\nこの手を出します。\\n\\n"},{"text":"(行動は ","color":"gray"},{"text":"[確定]","bold":true,"color":"gold"},{"text":" を押すまで決定されません！)","color":"gray"}]}}'
execute if score @s Hi9j_Ready = PL_NOT_READY Hi9j_Const if score @s Hi9j_Ready = HAND_SCISSORS Hi9j_Const run data modify storage hi9_jw:tmp hand_s set value '{"text":"[ チョキ ]","bold":true,"underlined":false,"color":"yellow"}'
execute if score @s Hi9j_Ready = PL_NOT_READY Hi9j_Const unless score @s Hi9j_Ready = HAND_UNDECIDED Hi9j_Const unless score @s Hi9j_Ready = HAND_SCISSORS Hi9j_Const run data modify storage hi9_jw:tmp hand_s set value '{"text":"[ チョキ ]","bold":false,"underlined":true,"color":"white","clickEvent":{"action":"run_command","value":"/function hi9_jankenwars:internal/selection/hand/choose-scissors"},"hoverEvent":{"action":"show_text","value":[{"text":"手を決定する","bold":true,"color":"dark_aqua"},{"text":"\\nこの手を出します。\\n\\n"},{"text":"(行動は ","color":"gray"},{"text":"[確定]","bold":true,"color":"gold"},{"text":" を押すまで決定されません！)","color":"gray"}]}}'

execute if score @s Hi9j_Ready = PL_NOT_READY Hi9j_Const if score @s Hi9j_Ready = HAND_UNDECIDED Hi9j_Const run data modify storage hi9_jw:tmp hand_p set value '{"text":"[  パー  ]","bold":false,"underlined":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/function hi9_jankenwars:internal/selection/hand/choose-paper"},"hoverEvent":{"action":"show_text","value":[{"text":"手を決定する","bold":true,"color":"dark_aqua"},{"text":"\\nこの手を出します。\\n\\n"},{"text":"(行動は ","color":"gray"},{"text":"[確定]","bold":true,"color":"gold"},{"text":" を押すまで決定されません！)","color":"gray"}]}}'
execute if score @s Hi9j_Ready = PL_NOT_READY Hi9j_Const if score @s Hi9j_Ready = HAND_PAPER Hi9j_Const run data modify storage hi9_jw:tmp hand_p set value '{"text":"[  パー  ]","bold":true,"underlined":false,"color":"aqua"}'
execute if score @s Hi9j_Ready = PL_NOT_READY Hi9j_Const unless score @s Hi9j_Ready = HAND_UNDECIDED Hi9j_Const unless score @s Hi9j_Ready = HAND_PAPER Hi9j_Const run data modify storage hi9_jw:tmp hand_p set value '{"text":"[  パー  ]","bold":false,"underlined":true,"color":"white","clickEvent":{"action":"run_command","value":"/function hi9_jankenwars:internal/selection/hand/choose-paper"},"hoverEvent":{"action":"show_text","value":[{"text":"手を決定する","bold":true,"color":"dark_aqua"},{"text":"\\nこの手を出します。\\n\\n"},{"text":"(行動は ","color":"gray"},{"text":"[確定]","bold":true,"color":"gold"},{"text":" を押すまで決定されません！)","color":"gray"}]}}'

execute if score @s Hi9j_Ready = PL_NOT_READY Hi9j_Const run tellraw @s ["",{"text":"  ","color":"dark_green"},{"text":"出す手を選ぶ     ","color":"gray"},{"storage":"hi9_jw:tmp","nbt":"hand_r","interpret": true},{"text":"   ","color":"white"},{"storage":"hi9_jw:tmp","nbt":"hand_s","interpret": true},{"text":"   ","color":"white"},{"storage":"hi9_jw:tmp","nbt":"hand_p","interpret": true}]

execute if score @s Hi9j_Ready = PL_NOT_READY Hi9j_Const run tellraw @s ["",{"text":"  ","color":"dark_green"},{"text":"スキルを使う ","color":"gray"},{"text":"スキル一覧へ","underlined":true,"color":"gold"}]
execute if score @s Hi9j_Ready = PL_NOT_READY Hi9j_Const run tellraw @s ["",{"text":"  ","color":"dark_green"},{"text":"状況確認      ","color":"gray"},{"text":"戦況を確認する","underlined":true,"color":"gold"}]

execute if score @s Hi9j_Ready = PL_NOT_READY Hi9j_Const if score @s Hi9j_Ready = HAND_UNDECIDED Hi9j_Const run tellraw @s ["",{"text":"     覚悟はできたか？     ","color":"gray"},{"text":"[ 行動を確定 ]","bold":false,"underlined":false,"color":"gray","hoverEvent":{"action":"show_text","value":[{"text":"行動を確定できません","bold":true,"color":"red"},"\n","出す手を選んでください。","\n",{"text":"(確定すると変更できません！)","color":"red"}]}}]

execute if score @s Hi9j_Ready = PL_NOT_READY Hi9j_Const if score @s Hi9j_Hand matches 1..3 run tellraw @s ["",{"text":"     覚悟はできたか？     ","color":"white"},{"text":"[ 行動を確定 ]","bold":true,"underlined":true,"color":"green","clickEvent":{"action":"run_command","value":"/function hi9_jankenwars:action-ready"},"hoverEvent":{"action":"show_text","value":[{"text":"行動を確定","bold":true,"underlined":true,"color":"dark_aqua"},"\n","行動を確定します。","\n",{"text":"(確定すると変更できません！)","color":"red"}]}}]

execute if score @s Hi9j_Ready = PL_NOT_READY Hi9j_Const run tellraw @s {"text":" =========================","color":"gray"}