particle soul
execute if score @s um.dummy matches 0..20 run tp @s ~ ~0.1 ~
scoreboard players add @s um.dummy 1
execute facing entity @p[distance=..40,gamemode=!spectator,tag=!global.ignore] feet unless score @s um.dummy matches 0..20 run tp @s ^ ^ ^0.2
execute if entity @p[distance=..1,gamemode=!spectator,tag=!global.ignore] run effect give @p[distance=..1,gamemode=!spectator,tag=!global.ignore] instant_health 1 1
execute if entity @p[distance=..1,gamemode=!spectator,tag=!global.ignore] run playsound minecraft:entity.vex.death player @s ~ ~ ~ 1 1
execute if entity @p[distance=..1,gamemode=!spectator,tag=!global.ignore] run kill @s