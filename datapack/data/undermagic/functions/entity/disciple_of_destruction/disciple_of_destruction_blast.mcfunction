playsound minecraft:entity.dragon_fireball.explode hostile @a ~ ~ ~ 1 0.5
execute positioned ~ ~1 ~ run summon armor_stand ^ ^ ^1 {NoGravity:1b,Invulnerable:1b,ShowArms:0b,Small:0b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["global.ignore","um.entity","um.disciple_of_destruction_blast","um.disciple_of_destruction"]}
execute as @e[sort=nearest,limit=1,tag=um.disciple_of_destruction_blast] run tp @e[sort=nearest,limit=1,tag=um.disciple_of_destruction]
execute as @e[sort=nearest,limit=1,tag=um.disciple_of_destruction_blast] run tp ^ ^ ^1
