particle soul
execute if score @s um.dummy matches 0..20 run tp @s ~ ~0.1 ~
scoreboard players add @s um.dummy 1
execute facing entity @e[sort=nearest,limit=1,tag=um_hostile,distance=..40,tag=!global.ignore] feet unless score @s um.dummy matches 0..20 run tp @s ^ ^ ^0.2
execute if entity @e[tag=um_hostile,tag=um_undead,distance=..2,tag=!global.ignore] unless score @s um.dummy matches 0..20 run effect give @e[sort=nearest,limit=1,tag=um_hostile,tag=um_undead,distance=..2,tag=!global.ignore] instant_health 1 2
execute if entity @e[tag=um_hostile,tag=!um_undead,distance=..2,tag=!global.ignore] unless score @s um.dummy matches 0..20 run effect give @e[sort=nearest,limit=1,tag=um_hostile,tag=!um_undead,distance=..2,tag=!global.ignore] instant_damage 1 2
execute if entity @e[tag=um_hostile,distance=..2,tag=!global.ignore] unless score @s um.dummy matches 0..20 run playsound minecraft:entity.vex.charge player @s ~ ~ ~ 1 1
execute if entity @e[tag=um_hostile,distance=..2,tag=!global.ignore] unless score @s um.dummy matches 0..20 run scoreboard players add @s um.dummy_two 1
execute if entity @e[tag=um_hostile,distance=..2,tag=!global.ignore] unless score @s um.dummy matches 0..20 run scoreboard players set @s um.dummy 10
execute if score @s um.dummy_two matches 3.. run kill @s