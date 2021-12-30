### get_ease_in_out
### --> Hi9es_Var:Max  - いつまで？
###     Hi9es_Var:Tick - 今どこか？
### <-- Hi9es_Var:Value - 今進んでいるべき割合
###     Hi9es_Var:Prop - いつまで / いつから の割合 (いる？)
###     ★ Value は Hi9es_Var:Max で割ると割合になります。このValueを使ってかけ算するときは、計算結果を Hi9es_Var:Max で割ってください！

#
# f(t) = t^2 * (3 - 2t)
#

function hi9_ease:get_proportion
scoreboard players operation V1 Hi9es_Var = Prop Hi9es_Var
scoreboard players operation V1 Hi9es_Var *= Prop Hi9es_Var
scoreboard players operation V1 Hi9es_Var /= Max Hi9es_Var


scoreboard players set V2 Hi9es_Var 3
scoreboard players operation V2 Hi9es_Var *= Max Hi9es_Var
scoreboard players operation V2 Hi9es_Var -= Prop Hi9es_Var
scoreboard players operation V2 Hi9es_Var -= Prop Hi9es_Var

scoreboard players operation Value Hi9es_Var = V1 Hi9es_Var
scoreboard players operation Value Hi9es_Var *= V2 Hi9es_Var
scoreboard players operation Value Hi9es_Var /= Max Hi9es_Var
