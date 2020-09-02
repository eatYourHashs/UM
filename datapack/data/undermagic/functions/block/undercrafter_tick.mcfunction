execute if block ~ ~ ~ air run kill @e[type=item,distance=..2,nbt={Item:{id:"minecraft:dropper",Count:1b}}]
execute unless block ~ ~1 ~ dropper run kill @s
particle flame ~ ~1 ~ 0.4 0.4 0.4 0 1
