playsound minecraft:block.respawn_anchor.deplete player @a ~ ~ ~ 1 2 0.4
playsound minecraft:block.respawn_anchor.deplete player @a ~ ~ ~ 1 1 0.4 
playsound minecraft:block.beacon.deactivate player @a ~ ~ ~ 1 0.5 0.2

effect give @a[distance=..5] resistance 1 5 true
summon firework_rocket ~ ~ ~ {Silent:1b,LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;14275083],FadeColors:[I;7039851]}]}}}}