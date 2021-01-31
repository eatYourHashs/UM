function undermagic:entity/shadesull/dialogue/spawn_disciple_1
scoreboard players set @s um.dummy 2121
tag @s add um.spawned_disciple
tag @s add um.untargetable
playsound minecraft:entity.evoker.prepare_summon hostile @a ~ ~ ~ 1 2
execute at @p positioned ~ ~16 ~ run function undermagic:entity/disciple_of_destruction/summon
execute if score difficulty um.dummy matches 2.. run function undermagic:entity/disciple_of_death/summon
scoreboard players set @e[tag=um.disciple_death] um.dummy -20