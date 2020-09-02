
execute unless entity @e[tag=um_elemental] run function undermagic:boss/elemental/elemental_end
execute as @e[tag=um_elemental] at @s run function undermagic:entity/elemental/tick
