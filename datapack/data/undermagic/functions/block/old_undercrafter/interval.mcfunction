#block management
execute if entity @s[tag=um.needs_dropper] run setblock ~ ~ ~ barrel[facing=up]{CustomName:'{"text":"\\uF000\\uF000\\uF000\\uF000\\uF000\\uF000\\uF000\\uF000u","color":"dark_red","font":"um:undercrafter"}'}
execute if entity @s[tag=um.needs_dropper] run advancement grant @a[distance=..5] only undermagic:undermagic
execute if entity @s[tag=um.needs_dropper] run tag @s remove um.needs_dropper


# UI Update
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:0b}]} run item block ~ ~ ~ container.0 replace minecraft:clock{CustomModelData:420094,um_gui:1b,display:{Name:"\"\""}} 1
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:1b}]} run item block ~ ~ ~ container.1 replace minecraft:clock{CustomModelData:420094,um_gui:1b,display:{Name:"\"\""}} 1
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:5b}]} run item block ~ ~ ~ container.5 replace minecraft:clock{CustomModelData:420094,um_gui:1b,display:{Name:"\"\""}} 1
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:6b}]} run item block ~ ~ ~ container.6 replace minecraft:clock{CustomModelData:420094,um_gui:1b,display:{Name:"\"\""}} 1
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:7b}]} run item block ~ ~ ~ container.7 replace minecraft:clock{CustomModelData:420094,um_gui:1b,display:{Name:"\"\""}} 1
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:8b}]} run item block ~ ~ ~ container.8 replace minecraft:clock{CustomModelData:420094,um_gui:1b,display:{Name:"\"\""}} 1
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:9b}]} run item block ~ ~ ~ container.9 replace minecraft:clock{CustomModelData:420094,um_gui:1b,display:{Name:"\"\""}} 1
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b}]} run item block ~ ~ ~ container.10 replace minecraft:clock{CustomModelData:420094,um_gui:1b,display:{Name:"\"\""}} 1
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:14b}]} run item block ~ ~ ~ container.14 replace minecraft:clock{CustomModelData:420094,um_gui:1b,display:{Name:"\"\""}} 1
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:15b}]} run item block ~ ~ ~ container.15 replace minecraft:clock{CustomModelData:420094,um_gui:1b,display:{Name:"\"\""}} 1
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:17b}]} run item block ~ ~ ~ container.17 replace minecraft:clock{CustomModelData:420094,um_gui:1b,display:{Name:"\"\""}} 1
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:18b}]} run item block ~ ~ ~ container.18 replace minecraft:clock{CustomModelData:420094,um_gui:1b,display:{Name:"\"\""}} 1
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:19b}]} run item block ~ ~ ~ container.19 replace minecraft:clock{CustomModelData:420094,um_gui:1b,display:{Name:"\"\""}} 1
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:23b}]} run item block ~ ~ ~ container.23 replace minecraft:clock{CustomModelData:420094,um_gui:1b,display:{Name:"\"\""}} 1
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:24b}]} run item block ~ ~ ~ container.24 replace minecraft:clock{CustomModelData:420094,um_gui:1b,display:{Name:"\"\""}} 1
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:25b}]} run item block ~ ~ ~ container.25 replace minecraft:clock{CustomModelData:420094,um_gui:1b,display:{Name:"\"\""}} 1
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:26b}]} run item block ~ ~ ~ container.26 replace minecraft:clock{CustomModelData:420094,um_gui:1b,display:{Name:"\"\""}} 1

#check recipes
execute if entity @s[tag=!um.has_recipe] if data block ~ ~ ~ Items[17] unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:16b}]} run function undermagic:block/undercrafter/check_recipes
