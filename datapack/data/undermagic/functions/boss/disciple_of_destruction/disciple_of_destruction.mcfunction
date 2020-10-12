
execute unless entity @e[tag=um_disciple_of_destruction_boss] run function undermagic:boss/disciple_of_destruction/disciple_of_destruction_end
execute as @e[tag=um_disciple_of_destruction_boss] at @s run function undermagic:entity/disciple_of_destruction/tick
execute as @e[tag=um_disciple_of_destruction_blast] at @s run function undermagic:entity/disciple_of_destruction/disciple_of_destruction_blast_tick
