particle minecraft:dust 0.3 0.3 1 1.2 ~ ~ ~ 0 0 0 0 1
execute if score @s um.dummy matches ..5 facing entity @e[type=#undermagic:hostile,limit=1,sort=nearest,distance=..64] feet run tp ^ ^ ^0.2
execute if score @s um.dummy matches 6.. facing entity @e[type=#undermagic:hostile,limit=1,sort=nearest,distance=..64] feet run tp ^ ^ ^1
scoreboard players set $math.in_0 um.dummy 80
scoreboard players set $math.in_1 um.dummy 0
scoreboard players set $math.in_2 um.dummy 0
scoreboard players set $math.in_3 um.dummy 0
execute if entity @e[type=#undermagic:hostile,limit=1,sort=nearest,distance=..1.2] run kill @s
execute if entity @e[type=#undermagic:hostile,limit=1,sort=nearest,distance=..1.2] run playsound minecraft:entity.ender_eye.death player @a ~ ~ ~ 1 1
execute if entity @e[type=#undermagic:hostile,limit=1,sort=nearest,distance=..1.2] run particle minecraft:dust 0.3 0.3 1 1.2 ~ ~ ~ 0.1 0.1 0.1 0 5
execute as @e[type=#undermagic:hostile,limit=1,sort=nearest,distance=..1.2] run function undermagic:utils/damage_entity
scoreboard players add @s um.dummy 1
execute if score @s um.dummy matches 100.. run kill @s