
execute unless entity @e[tag=um.disciple_of_death] run function undermagic:boss/disciple_of_death/disciple_of_death_end
execute as @e[tag=um.disciple_of_death] at @s run function undermagic:entity/disciple_of_death/tick
execute as @e[tag=um.death_scythe] at @s run function undermagic:entity/disciple_of_death/death_scythe_tick
