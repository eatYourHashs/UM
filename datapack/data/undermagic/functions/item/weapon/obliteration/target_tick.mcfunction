scoreboard players add @s um.oblit_mark 1
particle minecraft:portal ~ ~ ~ 0 0 0 1 20
execute if score @s um.oblit_mark matches 30.. run particle minecraft:reverse_portal ~ ~ ~ 0 0 0 3 40
execute if score @s um.oblit_mark matches 30.. run particle minecraft:explosion ~ ~ ~ 4 4 4 0 10
execute unless entity @s[tag=um.untargetable] run effect clear @s resistance
scoreboard players set $math.in_0 um.dummy 500
scoreboard players set $math.in_1 um.dummy 0
scoreboard players set $math.in_2 um.dummy 0
scoreboard players set $math.in_3 um.dummy 0
execute if score @s um.oblit_mark matches 30 if entity @s[scores={um.invuln=10..}] run function undermagic:utils/damage_entity
execute if score @s um.oblit_mark matches 40 if entity @s[scores={um.invuln=10..}] run function undermagic:utils/damage_entity
execute if score @s um.oblit_mark matches 50 if entity @s[scores={um.invuln=10..}] run function undermagic:utils/damage_entity
execute if score @s um.oblit_mark matches 60 if entity @s[scores={um.invuln=10..}] run function undermagic:utils/damage_entity
execute if score @s um.oblit_mark matches 70 if entity @s[scores={um.invuln=10..}] run function undermagic:utils/damage_entity
execute if score @s um.oblit_mark matches 80 if entity @s[scores={um.invuln=10..}] run function undermagic:utils/damage_entity
execute if score @s um.oblit_mark matches 90 if entity @s[scores={um.invuln=10..}] run function undermagic:utils/damage_entity
execute if score @s um.oblit_mark matches 100 if entity @s[scores={um.invuln=10..}] run function undermagic:utils/damage_entity
execute if score @s um.oblit_mark matches 110 if entity @s[scores={um.invuln=10..}] run function undermagic:utils/damage_entity
execute if score @s um.oblit_mark matches 120 if entity @s[scores={um.invuln=10..}] run function undermagic:utils/damage_entity
execute if score @s um.oblit_mark matches 130 if entity @s[scores={um.invuln=10..}] run function undermagic:utils/damage_entity
execute if score @s um.oblit_mark matches 20 run playsound minecraft:entity.lightning_bolt.thunder player @a ~ ~ ~ 1 2
execute if score @s um.oblit_mark matches 30 run playsound minecraft:entity.lightning_bolt.impact player @a ~ ~ ~ 1 0.5
execute if score @s um.oblit_mark matches 40 run playsound minecraft:entity.lightning_bolt.thunder player @a ~ ~ ~ 1 2
execute if score @s um.oblit_mark matches 50 run playsound minecraft:entity.lightning_bolt.impact player @a ~ ~ ~ 1 0.5
execute if score @s um.oblit_mark matches 60 run playsound minecraft:entity.lightning_bolt.thunder player @a ~ ~ ~ 1 2
execute if score @s um.oblit_mark matches 70 run playsound minecraft:entity.lightning_bolt.impact player @a ~ ~ ~ 1 0.5
execute if score @s um.oblit_mark matches 80 run playsound minecraft:entity.lightning_bolt.thunder player @a ~ ~ ~ 1 2
execute if score @s um.oblit_mark matches 90 run playsound minecraft:entity.lightning_bolt.impact player @a ~ ~ ~ 1 0.5
execute if score @s um.oblit_mark matches 100 run playsound minecraft:entity.lightning_bolt.thunder player @a ~ ~ ~ 1 2
execute if score @s um.oblit_mark matches 110 run playsound minecraft:entity.lightning_bolt.impact player @a ~ ~ ~ 1 0.5
execute if score @s um.oblit_mark matches 120 run playsound minecraft:entity.lightning_bolt.thunder player @a ~ ~ ~ 1 2
execute if score @s um.oblit_mark matches 130 run playsound minecraft:entity.lightning_bolt.impact player @a ~ ~ ~ 1 0.5
execute if score @s um.oblit_mark matches 130.. run scoreboard players set @s um.oblit_mark 0