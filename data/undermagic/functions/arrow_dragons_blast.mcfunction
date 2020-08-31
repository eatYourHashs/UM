particle minecraft:dragon_breath ~ ~ ~ 0 0 0 0.2 100
effect give @e[distance=..5,tag=!um_undead] instant_damage 1 1
effect give @e[distance=..5,tag=um_undead] instant_health 1 1
playsound minecraft:entity.generic.explode player @a ~ ~ ~
kill @s