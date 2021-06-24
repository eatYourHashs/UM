playsound minecraft:entity.ender_dragon.shoot hostile @a
execute positioned ~ ~1 ~ run summon armor_stand ^ ^ ^1 {NoGravity:1b,Invulnerable:1b,ShowArms:0b,Small:0b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["global.ignore","um.entity","um.projectile","um.acidling_acid"]}
execute as @e[sort=nearest,limit=1,tag=um.acidling_acid] run tp @e[sort=nearest,limit=1,tag=um.acidling]
execute as @e[sort=nearest,limit=1,tag=um.acidling_acid] run tp ~ ~1 ~
