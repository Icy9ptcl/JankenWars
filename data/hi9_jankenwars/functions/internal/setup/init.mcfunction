#alias entity PL_READY HAND_ROCK Hi9j_Const
#alias entity HAND_SCISSORS HAND_SCISSORS Hi9j_Const
#alias entity HAND_PAPER HAND_PAPER Hi9j_Const
#alias entity HAND_UNDECIDED HAND_UNDECIDED Hi9j_Const

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

scoreboard players set DefaultATK Hi9j_Cfg 1
scoreboard players set VitMulti Hi9j_Cfg 12
scoreboard players set VitBase Hi9j_Cfg 30

# Pre-action time (%).
scoreboard players set PreWaitMulti Hi9j_Var 30
scoreboard players set PreWaitMin Hi9j_Var 40

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
scoreboard players set GS_SHOW Hi9j_Const 6
