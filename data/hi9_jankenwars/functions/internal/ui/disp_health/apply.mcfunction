### 体力の増減演出を適用する
### ぜんぶ ease-out
### --> Hi9j_dHP_Var:#ToHealth いくつにする？
###     Hi9j_dHP_Var:#Time 何tickで？


execute if score @s Hi9j_dHP_Time matches -1 run function hi9_jankenwars:internal/ui/disp_health/overwrite
execute unless score @s Hi9j_dHP_Time matches -1 run function hi9_jankenwars:internal/ui/disp_health/merge
