

execute if entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:clock",Count:1b,tag:{um_id:"infernal_summons"}}}] run function undermagic:entity/pit_lord/summon_pit_lord

scoreboard players add @s um.dummy 1
execute if score @s um.dummy matches 20.. if entity @p[distance=..24] run function undermagic:demon_spawn_processing
execute if score @s um.dummy matches 20.. run scoreboard players set @s um.dummy 0

execute unless block ~ ~-0.5 ~ obsidian run kill @s
