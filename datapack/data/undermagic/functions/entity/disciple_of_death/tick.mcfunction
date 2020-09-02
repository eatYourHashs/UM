scoreboard players add @s um.dummy 1
execute facing entity @e[tag=um_disciple_of_death_move_marker,limit=1,sort=nearest] feet run tp ^ ^ ^0.8
execute if entity @e[tag=um_disciple_of_death_move_marker,distance=..1] run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1 2
kill @e[tag=um_disciple_of_death_move_marker,distance=..1,limit=1]
execute at @s facing entity @p feet run tp ^ ^ ^
execute if score @s um.dummy matches 20 run function undermagic:entity/disciple_of_death/death_scythe
execute if score @s um.dummy matches 60 run function undermagic:entity/disciple_of_death/move
execute if score @s um.dummy matches 80 run function undermagic:entity/disciple_of_death/death_scythe
execute if score @s um.dummy matches 120 run function undermagic:entity/disciple_of_death/move
execute if score @s um.dummy matches 140 run function undermagic:entity/disciple_of_death/death_scythe
execute if score @s um.dummy matches 180 run function undermagic:entity/disciple_of_death/move
execute if score @s um.dummy matches 181.. run scoreboard players set @s um.dummy 1
bossbar set undermagic:disciple_of_death players @a[distance=..50]
bossbar set undermagic:disciple_of_death visible true
execute store result score @s um.boss_hp run data get entity @s Health 1
execute store result bossbar undermagic:disciple_of_death value run data get entity @s Health 1
effect give @s invisibility 2 1 true
particle minecraft:smoke ~ ~1 ~ 0.2 0.4 0.2 0 5
