
execute unless entity @e[tag=um.elder_eye] run scoreboard players set kill um.dummy 1
execute unless entity @e[tag=um.elder_eye] run function undermagic:boss/elder/elder_end
execute as @e[tag=um.elder] at @s run function undermagic:entity/elder/tick
