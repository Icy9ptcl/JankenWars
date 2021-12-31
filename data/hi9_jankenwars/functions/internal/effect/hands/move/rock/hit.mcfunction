playsound minecraft:entity.generic.explode player @a ~ ~ ~ 1 0.8 0.4
playsound minecraft:entity.generic.explode player @a ~ ~ ~ 1 0.6 0.4
playsound minecraft:ambient.basalt_deltas.mood player @a ~ ~ ~ 0.5 0.8 0.1
playsound minecraft:entity.zombie.attack_iron_door player @a ~ ~ ~ 0.8 0.8 0.2

particle minecraft:explosion_emitter ~ ~ ~ 1 1 1 1 5

function hi9_jankenwars:internal/effect/hands/move/attack_hand/dispose

effect give @a[distance=..5] resistance 1 5 true 
summon firework_rocket ~ ~ ~ {Silent:1b,LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:4,Colors:[I;10551296]},{Type:4,Colors:[I;10551296]},{Type:4,Colors:[I;10551296]}]}}}}
