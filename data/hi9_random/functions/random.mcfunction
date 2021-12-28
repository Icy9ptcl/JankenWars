execute at @r run loot spawn ~ 255 ~ loot hi9_random:random
# どうしてこうなった
tag @e[type=item,nbt={Item:{tag:{ThisIsRandomItem:1b}}}] add Hi9v_Random
scoreboard players set Random Hi9v_Random 0
execute as @e[type=item,tag=Hi9v_Random] run function hi9_random:internal/randsum
scoreboard players operation Random Hi9v_Random = Random Hi9v_Random

kill @e[type=item,tag=Hi9v_Random]
# scoreboard players set #Max Hi9v_Random 100 