summon dragon_fireball ^ ^1 ^4 {direction:[0.01d,0.01d,0.01d],Tags:["um_entity","um_fireshot"]}
execute as @e[sort=nearest,limit=1,tag=um_fireshot] positioned ^ ^1 ^-6 facing entity @e[sort=nearest,limit=1,tag=um_wyrmling_fam] eyes run tp ^ ^ ^6
playsound minecraft:entity.ender_dragon.shoot hostile @a ~ ~ ~ 1 1
execute store result score x_delta um.dummy run data get entity @e[sort=nearest,limit=1,tag=um_fireshot] Pos[0] 100
execute store result score y_delta um.dummy run data get entity @e[sort=nearest,limit=1,tag=um_fireshot] Pos[1] 100
execute store result score z_delta um.dummy run data get entity @e[sort=nearest,limit=1,tag=um_fireshot] Pos[2] 100
execute as @e[sort=nearest,limit=1,tag=um_fireshot] at @s run tp ^ ^ ^2
execute store result score x_new um.dummy run data get entity @e[sort=nearest,limit=1,tag=um_fireshot] Pos[0] 100
execute store result score y_new um.dummy run data get entity @e[sort=nearest,limit=1,tag=um_fireshot] Pos[1] 100
execute store result score z_new um.dummy run data get entity @e[sort=nearest,limit=1,tag=um_fireshot] Pos[2] 100
scoreboard players operation x_delta um.dummy -= x_new um.dummy
scoreboard players operation y_delta um.dummy -= y_new um.dummy
scoreboard players operation z_delta um.dummy -= z_new um.dummy
execute store result entity @e[sort=nearest,limit=1,tag=um_fireshot] direction[0] double -0.04 run scoreboard players get x_delta um.dummy
execute store result entity @e[sort=nearest,limit=1,tag=um_fireshot] direction[1] double -0.04 run scoreboard players get y_delta um.dummy
execute store result entity @e[sort=nearest,limit=1,tag=um_fireshot] direction[2] double -0.04 run scoreboard players get z_delta um.dummy
execute store result entity @e[sort=nearest,limit=1,tag=um_fireshot] power[0] double -0.02 run scoreboard players get x_delta um.dummy
execute store result entity @e[sort=nearest,limit=1,tag=um_fireshot] power[1] double -0.02 run scoreboard players get y_delta um.dummy
execute store result entity @e[sort=nearest,limit=1,tag=um_fireshot] power[2] double -0.02 run scoreboard players get z_delta um.dummy
scoreboard players set @s um.dummy_three 300
execute as @a if score @s um.familiar_id = temp4 um.dummy run scoreboard players add @s um.wyrmling_xp 10