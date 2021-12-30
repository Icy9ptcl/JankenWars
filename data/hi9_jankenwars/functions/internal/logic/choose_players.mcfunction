### プレイヤーをランダムに人数分えらぶ
### セレクタ limit に変数が使えないので仕方ない
### --> @Hi9j_ChooseFrom 対象
###     Hi9j_Var:#SelectNum 何人？
### <-- @Hi9j_Chosen 選ばれたプレイヤーたち

tag @e[tag=Hi9j_Chosen] remove Hi9j_Chosen

function hi9_jankenwars:internal/logic/choose_solo