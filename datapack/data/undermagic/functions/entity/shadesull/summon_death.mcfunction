scoreboard players set @s um.dummy 2122
playsound minecraft:entity.evoker.prepare_summon hostile @a ~ ~ ~ 1 2
function undermagic:entity/disciple_of_death/summon
scoreboard players set @e[tag=um_disciple_death] um.dummy -20
