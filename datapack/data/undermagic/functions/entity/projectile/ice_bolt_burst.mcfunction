particle minecraft:item_snowball ~ ~ ~ 0 0 0 0.4 30
playsound minecraft:entity.guardian.hurt player @a ~ ~ ~ 1 2
playsound minecraft:entity.firework_rocket.blast player @a ~ ~ ~ 1 2
scoreboard players set $math.in_0 um.dummy 200
scoreboard players set $math.in_1 um.dummy 0
scoreboard players set $math.in_2 um.dummy 0
execute as @e[tag=!global.ignore,scores={um.invuln=10..},distance=..2,tag=um.pit_lord_boss] run function undermagic:utils/damage_entity
scoreboard players set $math.in_0 um.dummy 100
scoreboard players set $math.in_1 um.dummy 0
scoreboard players set $math.in_2 um.dummy 0
execute as @e[tag=!global.ignore,scores={um.invuln=10..},distance=..2,tag=!um.pit_lord_boss] run function undermagic:utils/damage_entity
effect give @e[distance=..3] slowness 5 3
execute as @e[type=creeper,distance=..3] run data merge entity @s {Fuse:100,ignited:0b}
kill @e[distance=..3,tag=um.lesser_demon]
kill @e[distance=..3,tag=um.greater_demon]
kill @s
