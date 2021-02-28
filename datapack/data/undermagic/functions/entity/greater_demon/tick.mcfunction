scoreboard players add @s um.dummy 1
execute if score @s um.dummy matches 200 if entity @p[distance=..16,gamemode=!creative,gamemode=!spectator] run playsound minecraft:entity.ghast.warn hostile @a ~ ~ ~ 1 0.7
execute if score @s um.dummy matches 220..260 if entity @p[distance=..16,gamemode=!creative,gamemode=!spectator] run particle minecraft:flame ~ ~1 ~ 0.2 0.3 0.2 0.2 20
execute if score @s um.dummy matches 220..260 if entity @p[distance=..16,gamemode=!creative,gamemode=!spectator] run effect give @s strength 1 0 true
execute if score @s um.dummy matches 220..260 facing entity @p[distance=..16,gamemode=!creative,gamemode=!spectator] feet if block ^ ^ ^2 #undermagic:passable run tp ^ ^ ^0.35
execute if score @s um.dummy matches 280 run scoreboard players set @s um.dummy 0
effect give @s minecraft:slow_falling 1 1 true