particle minecraft:end_rod ~ ~ ~ 0 0 0 0.5 100
particle minecraft:flame ~ ~ ~ 0 0 0 0.5 100
playsound minecraft:entity.wither.spawn player @a ~ ~ ~ 0.5 2
scoreboard players set $math.in_0 um.dummy 160
execute as @e[type=#undermagic:hostile,distance=..5] run function undermagic:utils/damage_entity
scoreboard players set @s um.lucid_chg 0