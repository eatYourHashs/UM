particle minecraft:totem_of_undying ~ ~1 ~ 0 0 0 1 100
playsound minecraft:item.totem.use player @a ~ ~ ~ 1 1.5
effect give @s instant_health 1 100
effect give @s regeneration 10 3
effect give @s resistance 3 6
scoreboard players remove @s um.reviv_chg 1
scoreboard players set @s um.reviv_cd 0
