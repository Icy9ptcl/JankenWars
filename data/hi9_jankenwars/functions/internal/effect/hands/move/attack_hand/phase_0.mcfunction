execute store result score #FromX Hi9j_Var run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].fromX 100
execute store result score #FromY Hi9j_Var run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].fromY 100
execute store result score #FromZ Hi9j_Var run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].fromZ 100
execute store result score #TargetID Hi9j_Var run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].targetID 1

tag @e remove Hi9j_pt_to
execute as @e[predicate=hi9_jankenwars:alive-players] if score @s Hi9j_Participtpant = #TargetID Hi9j_Var run tag @s add Hi9j_pt_to

execute store result score #CurrentX Hi9j_Var run data get entity @e[tag=Hi9j_pt_to,limit=1] Pos[0] 100 
execute store result score #CurrentY Hi9j_Var run data get entity @e[tag=Hi9j_pt_to,limit=1] Pos[0] 100 
execute store result score #CurrentZ Hi9j_Var run data get entity @e[tag=Hi9j_pt_to,limit=1] Pos[0] 100 
