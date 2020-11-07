
execute unless entity @e[tag=um.pit_lord_boss] run function undermagic:boss/pit_lord/pit_lord_end
execute as @e[tag=um.pit_lord_boss] at @s run function undermagic:entity/pit_lord/tick
execute as @e[tag=um.pit_lord_fireshot] at @s run function undermagic:entity/pit_lord/fireshot_tick
