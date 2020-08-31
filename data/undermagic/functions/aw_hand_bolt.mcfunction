playsound minecraft:block.beacon.deactivate hostile @a ~ ~ ~ 1 2
execute positioned ~ ~1 ~ run summon armor_stand ^ ^ ^1 {NoGravity:1b,Invulnerable:1b,ShowArms:0b,Small:0b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["global.ignore","um_entity","um_dark_orb"]}
execute as @e[sort=nearest,limit=1,tag=um_dark_orb] run tp @e[sort=nearest,limit=1,tag=um_warlock_hand]
execute as @e[sort=nearest,limit=1,tag=um_dark_orb] run tp ~ ~1 ~
