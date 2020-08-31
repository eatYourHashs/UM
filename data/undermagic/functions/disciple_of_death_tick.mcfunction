scoreboard players add @s um.dummy 1
execute facing entity @p feet run tp @s ~ ~ ~
execute if score @s um.dummy matches 401.. run scoreboard players set @s um.dummy 1
bossbar set undermagic:disciple_of_death players @a[distance=..50]
bossbar set undermagic:disciple_of_death visible true
execute store result score @s um.boss_hp run data get entity @s Health 1
execute store result bossbar undermagic:disciple_of_death value run data get entity @s Health 1
effect give @s invisibility 2 1 true
particle minecraft:smoke ~ ~1 ~ 0.2 0.4 0.2 0 5
