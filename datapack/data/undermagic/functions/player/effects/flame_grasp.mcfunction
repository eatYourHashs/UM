
scoreboard players remove @s um.flame_grasp 1
execute as @s[scores={um.flame_grasp=1..20}] at @s run particle flame ~ ~1 ~ 0.2 0.3 0.2 0 4
execute as @s[scores={um.flame_grasp=1..20}] at @s run playsound minecraft:entity.ender_dragon.shoot hostile @s ~ ~ ~ 1 2
execute as @s[scores={um.flame_grasp=4..6}] at @s run tp @s @e[limit=1,sort=nearest,tag=um_pit_lord_boss]
