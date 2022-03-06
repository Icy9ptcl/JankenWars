# title @a[predicate=hi9_jankenwars:all-participants] actionbar [{"text":"ダイス","color":"gold","bold":true},{"text":" が抽選されました","color":"white"}]

tellraw @a[predicate=hi9_jankenwars:all-participants] [{"text":"ダイス","color":"gold","bold":true},{"text":" が抽選されました","color":"white"}]

execute if score FightFlag Hi9j_Var = FG_TIE_TUBA Hi9j_Const run tellraw @a[tag=Hi9j_TubaAtk] ["",{"text":"あなたは "},{"text":"Aチーム","color":"red","bold":true},{"text":" です"}]
execute if score FightFlag Hi9j_Var = FG_TIE_TUBA Hi9j_Const run tellraw @a[tag=Hi9j_TubaDef] ["",{"text":"あなたは "},{"text":"Bチーム","color":"blue","bold":true},{"text":" です"}]
execute if score FightFlag Hi9j_Var = FG_TIE_TUBA Hi9j_Const run execute as @a[predicate=hi9_jankenwars:all-participants] unless entity @s[tag=Hi9j_TubaDef] unless entity @s[tag=Hi9j_TubaAtk] run tellraw @s ["",{"text":"あなたは "},{"text":"不参加","color":"gray","bold":true},{"text":" です"}]

execute if score FightFlag Hi9j_Var = FG_DYING_TUBA Hi9j_Const run tellraw @a[tag=Hi9j_TubaAtk] ["",{"text":"あなたは "},{"text":"Aチーム(攻め)","color":"red","bold":true},{"text":" です"}]
execute if score FightFlag Hi9j_Var = FG_DYING_TUBA Hi9j_Const run tellraw @a[tag=Hi9j_TubaDef] ["",{"text":"あなたは "},{"text":"Bチーム(守り)","color":"blue","bold":true},{"text":" です"}]
execute if score FightFlag Hi9j_Var = FG_DYING_TUBA Hi9j_Const run execute as @a[predicate=hi9_jankenwars:all-participants] unless entity @s[tag=Hi9j_TubaDef] unless entity @s[tag=Hi9j_TubaAtk] run tellraw @s ["",{"text":"あなたは "},{"text":"不参加","color":"gray","bold":true},{"text":" です"},{"text":"\nダメージを与えたり受けたりすることはありません","color":"gray"}]

tellraw @a[tag=Hi9j_TubaAtk] [{"text":"味方: ","color":"red"},{"selector":"@e[tag=Hi9j_TubaAtk]","color":"gray"},{"text":"\n","color":"red"}]
tellraw @a[tag=Hi9j_TubaAtk] [{"text":"敵: ","color":"blue"},{"selector":"@e[tag=Hi9j_TubaDef]","color":"gray"},{"text":"","color":"blue"}]
tellraw @a[tag=Hi9j_TubaDef] [{"text":"味方: ","color":"blue"},{"selector":"@e[tag=Hi9j_TubaDef]","color":"gray"},{"text":"\n","color":"blue"}]
tellraw @a[tag=Hi9j_TubaDef] [{"text":"敵: ","color":"red"},{"selector":"@e[tag=Hi9j_TubaAtk]","color":"gray"},{"text":"","color":"red"}]


tellraw @a[predicate=hi9_jankenwars:all-participants] ["","\n","> 素早く考えてルーレットを止めよ！","\n","\n",{"text":"・ジャンプまたはスニーク","bold":true,"color":"gold"},"でルーレットを止めます","\n",{"text":"・10秒","color":"red"},{"text":"でルーレットは自動で止まります","color":"white"},"\n",{"text":"・ルーレットの最大値は毎回ランダムです"},"\n",{"text":"★出目が大きいと与えるダメージと受けるダメージの両方が大きくなります。","color":"green"}]