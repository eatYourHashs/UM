execute unless score @s um.count_cd matches 1.. run effect give @s resistance 1 4 true
effect give @s levitation 1 0 true
tag @s add um.dashed
scoreboard players set @s um.count_count 1
playsound minecraft:entity.bat.takeoff player @a ~ ~ ~ 1 0.5
