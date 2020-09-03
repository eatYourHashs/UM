playsound minecraft:entity.player.attack.sweep hostile @a ~ ~ ~ 1 0.5
execute positioned ~ ~1 ~ run summon armor_stand ^ ^ ^1 {NoGravity:1b,Invulnerable:1b,ShowArms:0b,Small:0b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["global.ignore","um_entity","um_disciple_death","um_death_scythe","um_death_scythe_new"]}
execute as @e[sort=nearest,limit=1,tag=um_death_scythe_new] at @e[sort=nearest,limit=1,tag=um_disciple_of_death] run tp ^ ^ ^
execute as @e[sort=nearest,limit=1,tag=um_death_scythe_new] run tp ~ ~1 ~
tag @e[sort=nearest,limit=1,tag=um_death_scythe_new] remove um_death_scythe_new