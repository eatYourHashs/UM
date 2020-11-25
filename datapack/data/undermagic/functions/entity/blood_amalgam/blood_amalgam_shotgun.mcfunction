playsound minecraft:entity.dragon_fireball.explode hostile @a ~ ~ ~ 1 2
particle minecraft:dust 1 0 0 1 ^ ^1 ^1 0.2 0.2 0.2 0 50
particle minecraft:dust 1 0 0 1 ^ ^1 ^2 0.3 0.3 0.3 0 70
particle minecraft:dust 1 0 0 1 ^ ^1 ^3 0.4 0.4 0.4 0 100
particle minecraft:dust 1 0 0 1 ^ ^1 ^4 0.5 0.5 0.5 0 140
particle minecraft:dust 1 0 0 1 ^ ^1 ^5 0.6 0.6 0.6 0 190
particle minecraft:dust 1 0 0 1 ^ ^1 ^6 0.7 0.7 0.7 0 250
execute if score difficulty um.dummy matches 1.. run particle minecraft:dust 1 0 0 1 ^ ^1 ^7 0.8 0.8 0.8 0 320
execute if score difficulty um.dummy matches 1.. run particle minecraft:dust 1 0 0 1 ^ ^1 ^8 0.9 0.9 0.9 0 400
execute if score difficulty um.dummy matches 1.. run particle minecraft:dust 1 0 0 1 ^ ^1 ^9 1 1 1 0 490
execute positioned ^ ^1 ^1 run tag @a[distance=..1] add um.shotgun_close
execute positioned ^ ^1 ^2 run tag @a[distance=..1.5] add um.shotgun_close
execute positioned ^ ^1 ^3 run tag @a[distance=..2] add um.shotgun_close
execute if score difficulty um.dummy matches 1.. positioned ^ ^1 ^4 run tag @a[distance=..3] add um.shotgun_close
execute positioned ^ ^1 ^4 run tag @a[distance=..2.5] add um.shotgun_far
execute positioned ^ ^1 ^5 run tag @a[distance=..3] add um.shotgun_far
execute positioned ^ ^1 ^6 run tag @a[distance=..3.5] add um.shotgun_far
execute if score difficulty um.dummy matches 1.. positioned ^ ^1 ^7 run tag @a[distance=..4] add um.shotgun_far
execute if score difficulty um.dummy matches 1.. positioned ^ ^1 ^8 run tag @a[distance=..4.5] add um.shotgun_far
execute if score difficulty um.dummy matches 1.. positioned ^ ^1 ^9 run tag @a[distance=..5] add um.shotgun_far
execute if score difficulty um.dummy matches 0 run scoreboard players set $math.in_0 um.dummy 200
execute if score difficulty um.dummy matches 1 run scoreboard players set $math.in_0 um.dummy 250
execute if score difficulty um.dummy matches 2.. run scoreboard players set $math.in_0 um.dummy 300
scoreboard players set $math.in_1 um.dummy 0
scoreboard players set $math.in_2 um.dummy 0
scoreboard players set $math.in_3 um.dummy 0
execute as @a[tag=!global.ignore,scores={um.invuln=10..},tag=um.shotgun_close] run function undermagic:utils/damage_entity
execute if score difficulty um.dummy matches 0 run scoreboard players set $math.in_0 um.dummy 100
execute if score difficulty um.dummy matches 1 run scoreboard players set $math.in_0 um.dummy 150
execute if score difficulty um.dummy matches 2.. run scoreboard players set $math.in_0 um.dummy 200
scoreboard players set $math.in_1 um.dummy 0
scoreboard players set $math.in_2 um.dummy 0
scoreboard players set $math.in_3 um.dummy 0
execute as @a[tag=!global.ignore,scores={um.invuln=10..},tag=um.shotgun_far] run function undermagic:utils/damage_entity
tag @a[tag=um.shotgun_close] remove um.shotgun_close
tag @a[tag=um.shotgun_far] remove um.shotgun_far