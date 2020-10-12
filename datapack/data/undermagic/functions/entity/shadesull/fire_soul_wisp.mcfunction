execute at @e[sort=nearest,limit=1,tag=um_move_predict] run particle minecraft:soul_fire_flame ~ ~1 ~ 0 0 0 0.1 100
playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 1 0.5
execute positioned ~ ~1 ~ run summon armor_stand ^ ^ ^1 {NoGravity:1b,Invulnerable:1b,ShowArms:0b,Small:0b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["global.ignore","um_entity","um_shadesull","um_soul_wisp"]}
execute as @e[sort=nearest,limit=1,tag=um_soul_wisp] run tp @e[sort=nearest,limit=1,tag=um_shadesull_boss]
execute as @e[sort=nearest,limit=1,tag=um_soul_wisp] facing entity @e[sort=nearest,limit=1,tag=um_move_predict] feet run tp ~ ~1 ~
kill @e[tag=um_move_predict]