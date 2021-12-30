### get_ease_in
### --> Hi9es_Var:Max  - いつまで？
###     Hi9es_Var:Tick - いつから？

#
# f(t) = t^2
#

function hi9_ease:get_proportion
scoreboard players operation Value Hi9es_Var = Prop Hi9es_Var
scoreboard players operation Value Hi9es_Var *= Prop Hi9es_Var
scoreboard players operation Value Hi9es_Var /= Max Hi9es_Var
