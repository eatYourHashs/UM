particle soul
execute if score @s um.dummy matches 0..20 run tp @s ~ ~0.1 ~
scoreboard players add @s um.dummy 1
execute facing entity @e[sort=nearest,limit=1,type=#undermagic:hostile,distance=..40,tag=!global.ignore] feet unless score @s um.dummy matches 0..20 run tp @s ^ ^ ^0.2
scoreboard players set $math.in_0 um.dummy 160
scoreboard players set $math.in_1 um.dummy 0
scoreboard players set $math.in_2 um.dummy 0
scoreboard players set $math.in_3 um.dummy 0
execute as @e[type=#undermagic:hostile,distance=..2,tag=!global.ignore] unless score @s um.dummy matches 0..20 run function undermagic:utils/damage_entity
execute if entity @e[type=#undermagic:hostile,distance=..2,tag=!global.ignore] unless score @s um.dummy matches 0..20 run playsound minecraft:entity.vex.charge player @s ~ ~ ~ 1 1
execute if entity @e[type=#undermagic:hostile,distance=..2,tag=!global.ignore] unless score @s um.dummy matches 0..20 run scoreboard players add @s um.dummy_two 1
execute if entity @e[type=#undermagic:hostile,distance=..2,tag=!global.ignore] unless score @s um.dummy matches 0..20 run scoreboard players set @s um.dummy 10
execute if score @s um.dummy_two matches 3.. run kill @s