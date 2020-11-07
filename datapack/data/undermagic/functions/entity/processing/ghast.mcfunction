
scoreboard players set temp um.dummy 0
execute if predicate undermagic:probability/0.5 run scoreboard players set temp um.dummy 1

execute if score temp um.dummy matches 0 unless entity @e[tag=um.featgen,distance=..150] run function undermagic:entity/rift/summon
execute if score temp um.dummy matches 1 unless entity @e[tag=um.featgen,distance=..150] run function undermagic:entity/generic/demon_tower_spawn
execute unless entity @e[tag=um.featgen,distance=..10] run tp @s ~ ~10 ~

