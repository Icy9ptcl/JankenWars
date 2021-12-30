#alias entity HAND_ROCK HAND_ROCK Hi9j_Const
#alias entity HAND_SCISSORS HAND_SCISSORS Hi9j_Const
#alias entity HAND_PAPER HAND_PAPER Hi9j_Const
#alias entity HAND_UNDECIDED HAND_UNDECIDED Hi9j_Const
#define score_holder GameState
#define score_holder FightFlag

scoreboard objectives add Hi9j_Var dummy
scoreboard objectives add Hi9j_Cfg dummy
scoreboard objectives add Hi9j_MaxHealth dummy
scoreboard objectives add Hi9j_Health dummy
scoreboard objectives add Hi9j_Costs dummy
scoreboard objectives add Hi9j_Hand dummy

scoreboard objectives add Hi9j_St_Vit dummy
scoreboard objectives add Hi9j_St_Ratk dummy
scoreboard objectives add Hi9j_St_Satk dummy
scoreboard objectives add Hi9j_St_Patk dummy

scoreboard objectives add Hi9j_Const dummy

scoreboard players set State Hi9j_Var -1

scoreboard players set MaxSkill Hi9j_Cfg 10

# 「通常の」攻撃力 (注意: 実際の単位は1/100)
scoreboard players set DefaultAtk Hi9j_Cfg 100
# 攻撃力 1レベルごとに与える絶対値 (これも1/100)
scoreboard players set AtkAddByLvl Hi9j_Cfg 100
# 攻撃力 1レベルごとに与えるボーナス値
# なおボーナスは、(レベル-1)のときに決定される攻撃力の値に乗算
# 指数関数的に増える / 0以下は無意味
scoreboard players set AtkMultiByLvl Hi9j_Cfg 20
# 最低限与えるべきHP
scoreboard players set VitBase Hi9j_Cfg 80
# HP レベルごとに追加される数
scoreboard players set VitMulti Hi9j_Cfg 36
# 与えるべきダメージ<スキル考慮前>のばらつき最大値 %
scoreboard players set BaseEntro Hi9j_Cfg 20

# Pre-action time (%).
scoreboard players set PreWaitMulti Hi9j_Var 30
scoreboard players set PreWaitMin Hi9j_Cfg 40

scoreboard players set #Pct Hi9j_Var 100

scoreboard players set PL_NOT_READY Hi9j_Const 0
scoreboard players set PL_READY Hi9j_Const 1

# Hands. Normal hands: 1-99, Specials: 100-199. 0 for undecided
scoreboard players set HAND_UNDECIDED Hi9j_Const 0
scoreboard players set HAND_ROCK Hi9j_Const 1
scoreboard players set HAND_SCISSORS Hi9j_Const 2
scoreboard players set HAND_PAPER Hi9j_Const 3
scoreboard players set HAND_MITY Hi9j_Const 100
scoreboard players set HAND_DIS Hi9j_Const 101
scoreboard players set HAND_NONE Hi9j_Const 102

scoreboard players set GS_TURN_START Hi9j_Const 0
scoreboard players set GS_TURN_INIT Hi9j_Const 1
scoreboard players set GS_PL_COMS Hi9j_Const 2
scoreboard players set GS_PRE_ACT Hi9j_Const 3
scoreboard players set GS_PL_SKILLS Hi9j_Const 4
scoreboard players set GS_PREP_SHOW Hi9j_Const 5
scoreboard players set GS_TUBA Hi9j_Const 6
scoreboard players set GS_SHOW Hi9j_Const 7

scoreboard players set FG_NORMAL Hi9j_Const 1
scoreboard players set FG_TIE_TUBA Hi9j_Const 2
scoreboard players set FG_DYING_TUBA Hi9j_Const 3

scoreboard objectives add Hi9j_Eff_ID dummy
scoreboard objectives add Hi9j_Eff_Tick dummy