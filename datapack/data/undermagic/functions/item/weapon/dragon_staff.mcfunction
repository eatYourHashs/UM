playsound minecraft:entity.ender_dragon.shoot player @a ~ ~ ~ 1 1
summon armor_stand ^ ^ ^1 {NoGravity:1b,Invulnerable:1b,ShowArms:0b,Small:0b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["global.ignore","um_entity","um_projectile","um_dragon_acid"]}
execute as @e[sort=nearest,limit=1,tag=um_dragon_acid] at @p positioned ~ ~1.3 ~ run tp ^ ^ ^1
