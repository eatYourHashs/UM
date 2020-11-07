particle minecraft:flash
playsound minecraft:entity.wither.shoot block @a ~ ~ ~ 1 0.8
particle minecraft:flame ~ ~ ~ 0 0 0 0.1 20
setblock ~ ~-0.9 ~ minecraft:dropper[facing=up]{CustomName:'{"text":"Pedestal"}'} replace
execute align xyz positioned ~0.5 ~ ~0.5 run summon armor_stand ~ ~-1.5 ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["global.ignore","um.entity","um.pedestal"],ArmorItems:[{},{},{},{id:"minecraft:quartz_pillar",Count:1b}]}
