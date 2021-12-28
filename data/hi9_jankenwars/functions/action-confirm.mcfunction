execute at @s run playsound minecraft:item.armor.equip_netherite master @s ~ ~ ~ 1.0 1.6
execute at @s run playsound minecraft:entity.zombie.attack_iron_door master @s ~ ~ ~ 1 2

scoreboard players set @s Hi9j_Ready 1

tellraw @s ["",{"text":"\n行動を確定しました。","color":"green"},"\n",{"text":"全員の準備を待っています...","color":"gray"}]
title @s actionbar {"text":"待機中...","color":"gray"}