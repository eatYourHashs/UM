playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 1 1
execute positioned ~ ~1 ~ run summon armor_stand ^ ^ ^1 {NoGravity:1b,Invulnerable:1b,ShowArms:0b,Small:0b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["global.ignore","um.entity","um.pit_lord","um.pit_lord_fireshot"]}
execute as @e[sort=nearest,limit=1,tag=um.pit_lord_fireshot] run tp @e[sort=nearest,limit=1,tag=um.pit_lord_boss]
execute as @e[sort=nearest,limit=1,tag=um.pit_lord_fireshot] run tp ~ ~1 ~
