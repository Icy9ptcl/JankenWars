playsound minecraft:entity.zombie.attack_door_wood player @a ~ ~ ~ 0.4 1 0.1
playsound minecraft:entity.zombie.attack_door_wood player @a ~ ~ ~ 0.3 2 0.1
playsound minecraft:entity.zombie.break_wooden_door player @a ~ ~ ~ 0.6 2 0.1
playsound minecraft:block.amethyst_cluster.hit player @a ~ ~ ~ 1 2 0.4
playsound minecraft:block.glass.break player @a ~ ~ ~ 1 0.6 0.3
playsound minecraft:block.glass.break player @a ~ ~ ~ 1 0.8 0.3 
playsound minecraft:block.glass.break player @a ~ ~ ~ 1 0.9 0.4

particle minecraft:dripping_water ~ ~2 ~ 2 2 2 2 200
particle item blue_concrete ~ ~2 ~ 2 2 2 0.12 100

function hi9_jankenwars:internal/effect/hands/move/attack_hand/dispose

effect give @a[distance=..5] resistance 1 5 true 
summon firework_rocket ~ ~ ~ {Silent:1b,LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:4,Colors:[I;1477593]},{Type:4,Colors:[I;1477593]},{Type:4,Colors:[I;1477593]}]}}}}
