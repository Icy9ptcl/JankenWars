### get_ease_in
### --> Hi9es_Var:Max  - いつまで？
###     Hi9es_Var:Tick - 今どこか？
### <-- Hi9es_Var:Value - 今進んでいるべき割合
###     Hi9es_Var:Prop - いつまで / いつから の割合 (いる？)
###     ★ Value は Hi9es_Var:Max で割ると割合になります。このValueを使ってかけ算するときは、計算結果を Hi9es_Var:Max で割ってください！

#
# f(t) = t^2
#

function hi9_ease:get_proportion
scoreboard players operation Value Hi9es_Var = Prop Hi9es_Var
scoreboard players operation Value Hi9es_Var *= Prop Hi9es_Var
scoreboard players operation Value Hi9es_Var /= Max Hi9es_Var
