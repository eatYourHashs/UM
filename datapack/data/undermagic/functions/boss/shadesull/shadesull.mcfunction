
execute unless entity @e[tag=um.shadesull_boss] run scoreboard players set kill um.dummy 1
execute unless entity @e[tag=um.shadesull_boss] run function undermagic:boss/shadesull/shadesull_end
execute as @e[tag=um.shadesull] at @s run function undermagic:entity/shadesull/tick
