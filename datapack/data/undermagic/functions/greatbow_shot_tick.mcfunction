scoreboard players add @s um.dummy 1
particle smoke
execute if entity @s[scores={um.dummy=6},nbt={crit:1b}] run function undermagic:greatbow_shot_split
