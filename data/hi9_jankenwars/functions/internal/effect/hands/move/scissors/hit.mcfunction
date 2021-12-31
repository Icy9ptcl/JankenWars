playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~ 1 1 0.4
playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~ 1 1.4 0.4
playsound minecraft:item.armor.equip_diamond player @a ~ ~ ~ 0.6 1 0.2
playsound minecraft:item.armor.equip_diamond player @a ~ ~ ~ 0.6 0.7 0.2
playsound minecraft:item.armor.equip_diamond player @a ~ ~ ~ 0.6 0.5 0.2
playsound minecraft:item.armor.equip_diamond player @a ~ ~ ~ 0.6 1.2 0.2
playsound minecraft:item.armor.equip_iron player @a ~ ~ ~ 0.6 1.2 0.3
playsound minecraft:item.armor.equip_iron player @a ~ ~ ~ 0.6 1.2 0.3

particle minecraft:sweep_attack ~ ~ ~ 3 3 3 3 30
particle minecraft:instant_effect ~ ~ ~ 0 2 2 0.05 100
particle minecraft:instant_effect ~ ~ ~ 2 2 0 0.05 100


function hi9_jankenwars:internal/effect/hands/move/attack_hand/dispose

effect give @a[distance=..5] resistance 1 5 true 
summon firework_rocket ~ ~ ~ {Silent:1b,LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:4,Colors:[I;14275083]},{Type:4,Colors:[I;14275083]},{Type:4,Colors:[I;14275083]}]}}}}