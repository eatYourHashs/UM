execute positioned ~ ~1 ~ run summon armor_stand ^ ^ ^1 {NoGravity:1b,Invulnerable:1b,ShowArms:0b,Small:0b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["global.ignore","um.entity","um.shadesull","um.final_bullet","um.final_bullet_new"]}
execute as @e[sort=nearest,limit=1,tag=um.final_bullet_new] at @e[sort=nearest,limit=1,tag=um.shadesull_boss] run tp ^ ^ ^
execute as @e[sort=nearest,limit=1,tag=um.final_bullet_new] run tp ~ ~1 ~
tag @e[sort=nearest,limit=1,tag=um.final_bullet_new] remove um.final_bullet_new