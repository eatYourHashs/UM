#block management
execute if entity @s[tag=um.needs_dropper] run setblock ~ ~ ~ barrel[facing=up]{CustomName:'{"text":"\\uF000\\uF000\\uF000\\uF000\\uF000\\uF000\\uF000\\uF000u","color":"dark_red","font":"um:undercrafter"}'}
execute if entity @s[tag=um.needs_dropper] run advancement grant @a[distance=..5] only undermagic:undermagic
execute if entity @s[tag=um.needs_dropper] run tag @s remove um.needs_dropper


# UI Update
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:0b}]} run replaceitem block ~ ~ ~ container.0 minecraft:clock{CustomModelData:420094,um_gui:1b,display:{Name:"\"\""}} 1
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:1b}]} run replaceitem block ~ ~ ~ container.1 minecraft:clock{CustomModelData:420094,um_gui:1b,display:{Name:"\"\""}} 1
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:5b}]} run replaceitem block ~ ~ ~ container.5 minecraft:clock{CustomModelData:420094,um_gui:1b,display:{Name:"\"\""}} 1
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:6b}]} run replaceitem block ~ ~ ~ container.6 minecraft:clock{CustomModelData:420094,um_gui:1b,display:{Name:"\"\""}} 1
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:7b}]} run replaceitem block ~ ~ ~ container.7 minecraft:clock{CustomModelData:420094,um_gui:1b,display:{Name:"\"\""}} 1
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:8b}]} run replaceitem block ~ ~ ~ container.8 minecraft:clock{CustomModelData:420094,um_gui:1b,display:{Name:"\"\""}} 1
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:9b}]} run replaceitem block ~ ~ ~ container.9 minecraft:clock{CustomModelData:420094,um_gui:1b,display:{Name:"\"\""}} 1
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b}]} run replaceitem block ~ ~ ~ container.10 minecraft:clock{CustomModelData:420094,um_gui:1b,display:{Name:"\"\""}} 1
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:14b}]} run replaceitem block ~ ~ ~ container.14 minecraft:clock{CustomModelData:420094,um_gui:1b,display:{Name:"\"\""}} 1
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:15b}]} run replaceitem block ~ ~ ~ container.15 minecraft:clock{CustomModelData:420094,um_gui:1b,display:{Name:"\"\""}} 1
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:17b}]} run replaceitem block ~ ~ ~ container.17 minecraft:clock{CustomModelData:420094,um_gui:1b,display:{Name:"\"\""}} 1
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:18b}]} run replaceitem block ~ ~ ~ container.18 minecraft:clock{CustomModelData:420094,um_gui:1b,display:{Name:"\"\""}} 1
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:19b}]} run replaceitem block ~ ~ ~ container.19 minecraft:clock{CustomModelData:420094,um_gui:1b,display:{Name:"\"\""}} 1
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:23b}]} run replaceitem block ~ ~ ~ container.23 minecraft:clock{CustomModelData:420094,um_gui:1b,display:{Name:"\"\""}} 1
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:24b}]} run replaceitem block ~ ~ ~ container.24 minecraft:clock{CustomModelData:420094,um_gui:1b,display:{Name:"\"\""}} 1
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:25b}]} run replaceitem block ~ ~ ~ container.25 minecraft:clock{CustomModelData:420094,um_gui:1b,display:{Name:"\"\""}} 1
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:26b}]} run replaceitem block ~ ~ ~ container.26 minecraft:clock{CustomModelData:420094,um_gui:1b,display:{Name:"\"\""}} 1

#check recipes
execute if entity @s[tag=!um.has_recipe] if data block ~ ~ ~ Items[17] unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:16b}]} run function undermagic:block/undercrafter/check_recipes
