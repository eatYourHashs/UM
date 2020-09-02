
scoreboard players set @s um.since_damaged 0
execute at @s if score @s um.dark_energy matches 1.. run playsound minecraft:entity.blaze.hurt player @a ~ ~ ~ 1 0.5
execute if score @s um.dark_energy matches 1.. run scoreboard players remove @s um.dark_energy 500
execute if entity @s[scores={um.blood=12..},predicate=undermagic:armor_sets/bloodstained] run effect give @s instant_health
execute if entity @s[scores={um.blood=12..},predicate=undermagic:armor_sets/bloodstained_upgraded] run effect give @s regeneration 5 2
execute if entity @s[scores={um.blood=12..},predicate=undermagic:armor_sets/bloodstained] run scoreboard players remove @s um.blood 2
execute if entity @s[predicate=undermagic:armor_sets/shade] run effect clear @s resistance
execute if entity @s[predicate=undermagic:armor_sets/shade] run effect clear @s strength
scoreboard players add @s um.shade_invi 100
scoreboard players set @s um.take_damage 0
