### get_ease_out
### --> Hi9es_Var:Max  - いつまで？
###     Hi9es_Var:Tick - いつから？

#
# f(t) = t * (2-t)
#

function hi9_ease:get_proportion
scoreboard players operation #V1 Hi9es_Var = #Prop Hi9es_Var
scoreboard players set #V2 Hi9es_Var 2
scoreboard players operation #V2 Hi9es_Var *= #Digit Hi9es_Var
scoreboard players operation #V2 Hi9es_Var -= #Prop Hi9es_Var

scoreboard players operation #Value Hi9es_Var = #V1 Hi9es_Var
scoreboard players operation #Value Hi9es_Var *= #V2 Hi9es_Var
scoreboard players operation #Value Hi9es_Var /= #Digit2 Hi9es_Var
