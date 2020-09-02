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
execute positioned ^ ^1 ^1 run effect give @a[distance=..1] instant_damage 1 2
execute positioned ^ ^1 ^2 run effect give @a[distance=..1.5] instant_damage 1 2
execute positioned ^ ^1 ^3 run effect give @a[distance=..2] instant_damage 1 2
execute if score difficulty um.dummy matches 1.. positioned ^ ^1 ^4 run effect give @a[distance=..3] instant_damage 1 2
execute positioned ^ ^1 ^4 run effect give @a[distance=..2.5] instant_damage 1 1
execute positioned ^ ^1 ^5 run effect give @a[distance=..3] instant_damage 1 1
execute positioned ^ ^1 ^6 run effect give @a[distance=..3.5] instant_damage 1 1
execute if score difficulty um.dummy matches 1.. positioned ^ ^1 ^7 run effect give @a[distance=..4] instant_damage 1 1
execute if score difficulty um.dummy matches 1.. positioned ^ ^1 ^8 run effect give @a[distance=..4.5] instant_damage 1 1
execute if score difficulty um.dummy matches 1.. positioned ^ ^1 ^9 run effect give @a[distance=..5] instant_damage 1 1