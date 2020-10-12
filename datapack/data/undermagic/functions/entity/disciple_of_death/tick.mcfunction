scoreboard players add @s um.dummy 1
execute facing entity @e[tag=um_disciple_of_death_move_marker,limit=1,sort=nearest] feet run tp ^ ^ ^1.5
execute if entity @e[tag=um_disciple_of_death_move_marker,distance=..2] run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1 2
kill @e[tag=um_disciple_of_death_move_marker,distance=..1,limit=1]
execute at @s facing entity @p feet run tp ^ ^ ^
execute store result score @s um.boss_hp run data get entity @s Health 1
execute if entity @e[tag=um_disciple_of_death_move_marker] if score @s um.dummy matches 20 run scoreboard players set @s um.dummy 10
execute if entity @e[tag=um_disciple_of_death_move_marker] if score @s um.dummy matches 80 run scoreboard players set @s um.dummy 70
execute if entity @e[tag=um_disciple_of_death_move_marker] if score @s um.dummy matches 140 run scoreboard players set @s um.dummy 130
execute if entity @e[tag=um_disciple_of_death_move_marker] if score @s um.dummy matches 200 run scoreboard players set @s um.dummy 199
execute if score @s um.dummy matches 20 run function undermagic:entity/disciple_of_death/death_scythe
execute if score @s um.dummy matches 25 if score @s um.boss_hp matches ..150 run function undermagic:entity/disciple_of_death/death_scythe
execute if score @s um.dummy matches 30 if score @s um.boss_hp matches ..75 run function undermagic:entity/disciple_of_death/death_scythe
execute if score @s um.dummy matches 60 run function undermagic:entity/disciple_of_death/move
execute if score @s um.dummy matches 80 run function undermagic:entity/disciple_of_death/death_scythe
execute if score @s um.dummy matches 80 if score @s um.boss_hp matches ..150 at @s facing entity @p feet facing ^1 ^ ^6 run tp ^ ^ ^
execute if score @s um.dummy matches 80 if score @s um.boss_hp matches ..150 at @s run function undermagic:entity/disciple_of_death/death_scythe
execute if score @s um.dummy matches 80 if score @s um.boss_hp matches ..75 at @s facing entity @p feet facing ^2 ^ ^6 run tp ^ ^ ^
execute if score @s um.dummy matches 80 if score @s um.boss_hp matches ..75 at @s run function undermagic:entity/disciple_of_death/death_scythe
execute if score @s um.dummy matches 80 if score @s um.boss_hp matches ..150 at @s facing entity @p feet facing ^-1 ^ ^6 run tp ^ ^ ^
execute if score @s um.dummy matches 80 if score @s um.boss_hp matches ..150 at @s run function undermagic:entity/disciple_of_death/death_scythe
execute if score @s um.dummy matches 80 if score @s um.boss_hp matches ..75 at @s facing entity @p feet facing ^-2 ^ ^6 run tp ^ ^ ^
execute if score @s um.dummy matches 80 if score @s um.boss_hp matches ..75 at @s run function undermagic:entity/disciple_of_death/death_scythe
execute if score @s um.dummy matches 120 run function undermagic:entity/disciple_of_death/move
execute if score @s um.dummy matches 140 run function undermagic:entity/disciple_of_death/death_scythe
execute if score @s um.dummy matches 145 if score @s um.boss_hp matches ..150 run function undermagic:entity/disciple_of_death/death_scythe
execute if score @s um.dummy matches 150 if score @s um.boss_hp matches ..75 run function undermagic:entity/disciple_of_death/death_scythe
execute if score @s um.dummy matches 180 run function undermagic:entity/disciple_of_death/move
execute if score @s um.dummy matches 180 as @e[tag=um_disciple_of_death_move_marker] at @s run tp @s ~ ~2 ~
execute if score @s um.dummy matches 200..240 run particle minecraft:soul ~ ~0.05 ~ 1 0 1 0 5
execute if score @s um.dummy matches 200 run playsound minecraft:entity.ghast.hurt hostile @a ~ ~ ~ 1 0.5
execute if score @s um.dummy matches 220 run playsound minecraft:entity.ghast.hurt hostile @a ~ ~ ~ 1 0.5
execute if score @s um.dummy matches 240 run playsound minecraft:entity.lightning_bolt.impact hostile @a ~ ~ ~ 1 0.5
execute if score @s um.dummy matches 240 run function undermagic:entity/disciple_of_death/spawn_undead
execute if score @s um.dummy matches 280 run function undermagic:entity/disciple_of_death/move
execute if score @s um.dummy matches 281.. run scoreboard players set @s um.dummy 1
bossbar set undermagic:disciple_of_death players @a[distance=..50]
bossbar set undermagic:disciple_of_death visible true
execute store result bossbar undermagic:disciple_of_death value run data get entity @s Health 1
effect give @s invisibility 2 1 true
particle minecraft:smoke ~ ~1 ~ 0.2 0.4 0.2 0 5
