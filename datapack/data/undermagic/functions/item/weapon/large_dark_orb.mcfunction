playsound minecraft:block.beacon.deactivate hostile @a ~ ~ ~ 1 1
execute positioned ~ ~1.3 ~ run summon armor_stand ^ ^ ^1 {NoGravity:1b,Invulnerable:1b,ShowArms:0b,Small:0b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["global.ignore","um_entity","um_projectile","um_large_dark_orb"]}
execute as @e[sort=nearest,limit=1,tag=um_large_dark_orb] run tp @p
execute as @e[sort=nearest,limit=1,tag=um_large_dark_orb] run tp ~ ~1.3 ~
scoreboard players set @s um.orb_cooldown 30