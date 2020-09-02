
execute if entity @s[scores={um.dummy=10..}] run particle minecraft:dust 1 0 0 1 ~ ~0.2 ~ 0.3 0.2 0.3 0 1
execute if entity @s[scores={um.dummy=50..}] run particle minecraft:dust 1 0 0 1 ~ ~0.2 ~ 0.3 0.2 0.3 0 1
execute if entity @s[scores={um.dummy=250..}] run particle minecraft:dust 1 0 0 1 ~ ~0.2 ~ 0.3 0.2 0.3 0 1

# Check Nearby Items
scoreboard players set out um.dummy 0
execute as @e[type=item,distance=..1,tag=!um_chalice_check] at @s if block ~ ~0.2 ~ minecraft:cauldron run function undermagic:block/bloodchalice/check_item
scoreboard players operation @s um.dummy += out um.dummy

#recipes
execute if block ~3 ~ ~3 redstone_block if block ~-3 ~ ~3 redstone_block if block ~3 ~ ~-3 redstone_block if block ~-3 ~ ~-3 redstone_block if block ~3 ~ ~ run function undermagic:block/bloodchalice/recipes_redstone
execute if block ~3 ~ ~3 diamond_block if block ~-3 ~ ~3 diamond_block if block ~3 ~ ~-3 diamond_block if block ~-3 ~ ~-3 diamond_block if block ~3 ~ ~ run function undermagic:block/bloodchalice/recipes_diamond
execute if block ~3 ~ ~3 beacon if block ~-3 ~ ~3 beacon if block ~3 ~ ~-3 beacon if block ~-3 ~ ~-3 beacon run function undermagic:block/bloodchalice/recipes_beacon
execute positioned ~3 ~ ~3 if entity @e[distance=..1,tag=um_blood_monolith] at @s positioned ~3 ~ ~-3 if entity @e[distance=..1,tag=um_blood_monolith] at @s positioned ~-3 ~ ~3 if entity @e[distance=..1,tag=um_blood_monolith] at @s positioned ~-3 ~ ~-3 if entity @e[distance=..1,tag=um_blood_monolith] at @s run function undermagic:block/bloodchalice/recipes_monolith

execute if block ~3 ~ ~ dropper{Items:[{id:"minecraft:book",Count:1b,Slot:0b}]} if block ~-3 ~ ~ dropper{Items:[{id:"minecraft:redstone_block",Count:1b,Slot:0b}]} if block ~ ~ ~3 dropper{Items:[{id:"minecraft:redstone",Count:1b,Slot:0b}]} if block ~ ~ ~-3 dropper{Items:[{id:"minecraft:redstone",Count:1b,Slot:0b}]} if entity @s[scores={um.dummy_two=0,um.dummy=10..}] run scoreboard players add @s um.dummy_two 1

execute if entity @s[scores={um.dummy_two=1}] run playsound minecraft:block.beacon.activate block @a ~ ~ ~ 1 1
execute if entity @s[scores={um.dummy_two=1..16}] run playsound minecraft:block.end_portal_frame.fill block @a ~ ~ ~ 0.6 1
execute if entity @s[scores={um.dummy_two=17..19}] run playsound minecraft:block.end_portal_frame.fill block @a ~ ~ ~ 0.6 1.4
execute if entity @s[scores={um.dummy_two=1..19}] run particle minecraft:portal ~ ~ ~ 0 0 0 1 30
execute if entity @s[scores={um.dummy_two=1..19}] run scoreboard players add @s um.dummy_two 1
execute if entity @s[scores={um.dummy_two=20..}] run function undermagic:block/bloodchalice/finish
