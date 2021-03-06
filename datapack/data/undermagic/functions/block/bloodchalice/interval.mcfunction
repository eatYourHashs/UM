#block management
execute if entity @s[tag=um.needs_dropper] run setblock ~ ~ ~ cauldron
execute if entity @s[tag=um.needs_dropper] run advancement grant @a[distance=..5] only undermagic:undermagic/blood_chalice
execute if entity @s[tag=um.needs_dropper] run scoreboard players set @s um.dummy 0
execute if entity @s[tag=um.needs_dropper] run scoreboard players set @s um.dummy_two 0
execute if entity @s[tag=um.needs_dropper] run tag @s remove um.needs_dropper
data modify entity @s Fire set value 1000

# Check Nearby Items
scoreboard players set out um.dummy 0
execute as @e[type=item,distance=..1,tag=!um.chalice_check] at @s if block ~ ~0.2 ~ minecraft:cauldron run function undermagic:block/bloodchalice/check_item
scoreboard players operation @s um.dummy += out um.dummy

#recipes
data modify storage undermagic:common list set value []
execute positioned ~3 ~1 ~3 run data modify storage undermagic:common list append from entity @e[type=item,sort=nearest,limit=1,distance=..1] Item
execute positioned ~-3 ~1 ~3 run data modify storage undermagic:common list append from entity @e[type=item,sort=nearest,limit=1,distance=..1] Item
execute positioned ~3 ~1 ~-3 run data modify storage undermagic:common list append from entity @e[type=item,sort=nearest,limit=1,distance=..1] Item
execute positioned ~-3 ~1 ~-3 run data modify storage undermagic:common list append from entity @e[type=item,sort=nearest,limit=1,distance=..1] Item
data modify storage undermagic:common list[0].Slot set value 0b
data modify storage undermagic:common list[1].Slot set value 1b
data modify storage undermagic:common list[2].Slot set value 2b
data modify storage undermagic:common list[3].Slot set value 3b

execute if score @s um.dummy_two matches 0 if block ~3 ~ ~3 redstone_block if block ~-3 ~ ~3 redstone_block if block ~3 ~ ~-3 redstone_block if block ~-3 ~ ~-3 redstone_block run function undermagic:block/bloodchalice/recipes_redstone
execute if score @s um.dummy_two matches 0 if block ~3 ~ ~3 diamond_block if block ~-3 ~ ~3 diamond_block if block ~3 ~ ~-3 diamond_block if block ~-3 ~ ~-3 diamond_block run function undermagic:block/bloodchalice/recipes_diamond
execute if score @s um.dummy_two matches 0 positioned ~3 ~ ~3 if entity @e[distance=..1,tag=um.radiant_monolith] at @s positioned ~3 ~ ~-3 if entity @e[distance=..1,tag=um.radiant_monolith] at @s positioned ~-3 ~ ~3 if entity @e[distance=..1,tag=um.radiant_monolith] at @s positioned ~-3 ~ ~-3 if entity @e[distance=..1,tag=um.radiant_monolith] at @s run function undermagic:block/bloodchalice/recipes_radiant_monolith
execute if score @s um.dummy_two matches 0 positioned ~3 ~ ~3 if entity @e[distance=..1,tag=um.blood_monolith] at @s positioned ~3 ~ ~-3 if entity @e[distance=..1,tag=um.blood_monolith] at @s positioned ~-3 ~ ~3 if entity @e[distance=..1,tag=um.blood_monolith] at @s positioned ~-3 ~ ~-3 if entity @e[distance=..1,tag=um.blood_monolith] at @s run function undermagic:block/bloodchalice/recipes_blood_monolith

execute if score @s um.dummy_two matches 1 run playsound minecraft:block.beacon.activate block @a ~ ~ ~ 1 1
execute if score @s um.dummy_two matches 1.. run scoreboard players add @s um.dummy_two 1
execute if score @s um.dummy_two matches 01..16 run playsound minecraft:block.end_portal_frame.fill block @a ~ ~ ~ 0.6 1
execute if score @s um.dummy_two matches 17..19 run playsound minecraft:block.end_portal_frame.fill block @a ~ ~ ~ 0.6 1.4
execute if score @s um.dummy_two matches 01..19 run particle minecraft:portal ~ ~ ~ 0 0 0 1 30
execute if score @s um.dummy_two matches 02..05 run particle minecraft:totem_of_undying ~ ~ ~ 1.2 1 1.2 1 0
execute if score @s um.dummy_two matches 06..09 run particle minecraft:totem_of_undying ~ ~ ~ -1.2 1 1.2 1 0
execute if score @s um.dummy_two matches 10..13 run particle minecraft:totem_of_undying ~ ~ ~ -1.2 1 -1.2 1 0
execute if score @s um.dummy_two matches 14..17 run particle minecraft:totem_of_undying ~ ~ ~ 1.2 1 -1.2 1 0
execute if score @s um.dummy_two matches 20.. run function undermagic:block/bloodchalice/finish

execute if score @s um.dummy matches 0..9 run item replace entity @s armor.head with minecraft:shulker_spawn_egg{CustomModelData:420083}
execute if score @s um.dummy matches 10..49 run item replace entity @s armor.head with minecraft:shulker_spawn_egg{CustomModelData:420086}
execute if score @s um.dummy matches 50..249 run item replace entity @s armor.head with minecraft:shulker_spawn_egg{CustomModelData:420087}
execute if score @s um.dummy matches 250.. run item replace entity @s armor.head with minecraft:shulker_spawn_egg{CustomModelData:420088}
stopsound @a * minecraft:item.armor.equip_generic