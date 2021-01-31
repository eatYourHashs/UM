function undermagic:entity/shadesull/dialogue/spawn_disciple_2
scoreboard players set @s um.dummy 2122
playsound minecraft:entity.evoker.prepare_summon hostile @a ~ ~ ~ 1 2
function undermagic:entity/disciple_of_death/summon
scoreboard players set @e[tag=um.disciple_death] um.dummy -20
