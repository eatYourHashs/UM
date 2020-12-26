particle minecraft:smoke ~ ~ ~ 0 0 0 0.2 100
effect give @e[tag=!global.ignore,scores={um.invuln=10..},distance=..5] blindness 10
effect give @e[tag=!global.ignore,scores={um.invuln=10..},distance=..5] slowness 10
effect give @e[tag=!global.ignore,scores={um.invuln=10..},distance=..5] weakness 10
playsound minecraft:entity.generic.explode player @a ~ ~ ~
kill @s