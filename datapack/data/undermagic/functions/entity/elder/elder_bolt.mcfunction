playsound minecraft:block.beacon.deactivate hostile @a ~ ~ ~ 1 2
execute positioned ~ ~1 ~ run summon armor_stand ^ ^ ^1 {NoGravity:1b,Invulnerable:1b,ShowArms:0b,Small:0b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["global.ignore","um.entity","um.elder","um.elder_bolt"]}
execute as @e[sort=nearest,limit=1,tag=um.elder_bolt] run tp @e[sort=nearest,limit=1,tag=um.elder_hand]
execute as @e[sort=nearest,limit=1,tag=um.elder_bolt] run tp ~ ~1 ~
