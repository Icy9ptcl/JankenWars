# なんか知らんけど 0 ~ ($Max-1) の乱数を返す
# 確率は同様に等しいわけではないが、十分に使えると思う

kill @e[tag=Hi9v_Rnd,type=area_effect_cloud]
execute at @r run summon area_effect_cloud ~ 0 ~ {Tags:["Hi9v_Rnd"]}

# どうしてこうなった
execute store result score Random Hi9v_Random run data get entity @e[tag=Hi9v_Rnd,type=area_effect_cloud,limit=1] UUID[2] 1
scoreboard players operation Random Hi9v_Random %= $Max Hi9v_Random

kill @e[type=item,tag=Hi9v_Random]
# scoreboard players set $Max Hi9v_Random 100 