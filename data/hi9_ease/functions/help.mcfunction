execute at @s run playsound minecraft:block.wooden_door.open master @s ~ ~ ~ 1 2

#
#  J A P A N E S E
#
execute if score #Lang Hi9_RDly_Var matches 0 if score #Lang Hi9_RDly_Var matches 0 run tellraw @s ["",{"text":"=== [Hi9_RespawnDelay] 設定 ===========================","color":"gray"},{"text":"\n - 設定の値をクリックすると編集できます。","color":"gray"}]

execute if score #Enabled Hi9_RDly_Var matches 0 run tellraw @s ["",{"text":"システムの有効/無効","color":"white"},{"text":" ........................................ ","color":"dark_gray"},{"text":"[無効]","color":"red","clickEvent":{"action":"run_command","value":"/function hi9_respawndelay:internal/config/enable_system"},"hoverEvent":{"action":"show_text","value":["",{"text":"クリックで 有効 にします","color":"green"}]}}]

execute if score #Enabled Hi9_RDly_Var matches 1 run tellraw @s ["",{"text":"システムの有効/無効","color":"white"},{"text":" ........................................ ","color":"dark_gray"},{"text":"[有効]","color":"green","clickEvent":{"action":"run_command","value":"/function hi9_respawndelay:internal/config/disable_system"},"hoverEvent":{"action":"show_text","value":["",{"text":"クリックで 無効 にします","color":"red"}]}}]
