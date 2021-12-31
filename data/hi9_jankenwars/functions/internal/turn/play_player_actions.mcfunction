# ここでの処理
#  - 演出する
#  - つばぜり合いする
#  - ダメージが実際に通る

execute if score PlayState Hi9j_Var matches 0 run function hi9_jankenwars:internal/effect/init

execute if score PlayState Hi9j_Var matches 1 run function hi9_jankenwars:internal/effect/summon_hands

execute if score PlayState Hi9j_Var matches 2 run function hi9_jankenwars:internal/effect/move_hands

execute if score PlayState Hi9j_Var matches 3 run function hi9_jankenwars:internal/effect/dying_tuba

execute if score PlayState Hi9j_Var matches 4 run function hi9_jankenwars:internal/effect/hit

execute if score PlayState Hi9j_Var matches 5 run function hi9_jankenwars:internal/effect/hit_wait

execute if score PlayState Hi9j_Var matches 6 run function hi9_jankenwars:internal/effect/cleanup

execute if score PlayState Hi9j_Var matches 7 run function hi9_jankenwars:internal/effect/go_tuba
