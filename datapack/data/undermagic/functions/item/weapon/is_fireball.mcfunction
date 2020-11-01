summon fireball ^ ^1 ^4 {direction:[0.0d,0.0d,0.0d],Tags:["um_entity","um_fireshot","um_projectile"],ExplosionPower:2b}
execute as @e[sort=nearest,limit=1,tag=um_fireshot] positioned ^ ^1 ^-6 facing entity @p eyes run tp ^ ^ ^6
playsound minecraft:entity.ghast.shoot player @a ~ ~ ~ 1 1
scoreboard players remove @s um.mana 50
scoreboard players set @s um.mana_cd 0
execute store result score x_delta um.dummy run data get entity @e[sort=nearest,limit=1,tag=um_fireshot] Pos[0] 100
execute store result score y_delta um.dummy run data get entity @e[sort=nearest,limit=1,tag=um_fireshot] Pos[1] 100
execute store result score z_delta um.dummy run data get entity @e[sort=nearest,limit=1,tag=um_fireshot] Pos[2] 100
execute as @e[sort=nearest,limit=1,tag=um_fireshot] at @s run tp ^ ^ ^2.5
execute store result score x_new um.dummy run data get entity @e[sort=nearest,limit=1,tag=um_fireshot] Pos[0] 100
execute store result score y_new um.dummy run data get entity @e[sort=nearest,limit=1,tag=um_fireshot] Pos[1] 100
execute store result score z_new um.dummy run data get entity @e[sort=nearest,limit=1,tag=um_fireshot] Pos[2] 100
scoreboard players operation x_delta um.dummy -= x_new um.dummy
scoreboard players operation y_delta um.dummy -= y_new um.dummy
scoreboard players operation z_delta um.dummy -= z_new um.dummy
execute store result entity @e[sort=nearest,limit=1,tag=um_fireshot] direction[0] double -0.01 run scoreboard players get x_delta um.dummy
execute store result entity @e[sort=nearest,limit=1,tag=um_fireshot] direction[1] double -0.01 run scoreboard players get y_delta um.dummy
execute store result entity @e[sort=nearest,limit=1,tag=um_fireshot] direction[2] double -0.01 run scoreboard players get z_delta um.dummy
