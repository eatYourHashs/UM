advancement revoke @s only undermagic:technical/star_piercer
scoreboard players add @s um.star_draw 1
scoreboard players set @s um.star_timer 0
execute if score @s um.star_draw matches 1 run playsound minecraft:block.beacon.activate player @a ~ ~ ~ 1 1.5
execute if score @s um.star_draw matches 30 run playsound minecraft:block.beacon.activate player @a ~ ~ ~ 1 1.7
execute if score @s um.star_draw matches 60 run playsound minecraft:block.beacon.activate player @a ~ ~ ~ 1 1.9
execute if score @s um.star_draw matches 60.. positioned ~ ~1.78 ~ run particle minecraft:flame ^ ^ ^1 0 0 0 0.01 2
