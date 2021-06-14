#block management
execute if entity @s[tag=um.needs_dropper] run setblock ~ ~ ~ barrel[facing=up]{CustomName:'{"text":"\\uF000\\uF000\\uF000\\uF000\\uF000\\uF000\\uF000\\uF000u","color":"dark_red","font":"um:undercrafter"}'}
execute if entity @s[tag=um.needs_dropper] run advancement grant @a[distance=..5] only undermagic:undermagic
execute if entity @s[tag=um.needs_dropper] run tag @s remove um.needs_dropper


# UI Update
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:0b}]} run item replace block ~ ~ ~ container.0 with minecraft:clock{CustomModelData:420094,um_gui:1b,display:{Name:"\"\""}} 1
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:1b}]} run item replace block ~ ~ ~ container.1 with minecraft:clock{CustomModelData:420094,um_gui:1b,display:{Name:"\"\""}} 1
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:5b}]} run item replace block ~ ~ ~ container.5 with minecraft:clock{CustomModelData:420094,um_gui:1b,display:{Name:"\"\""}} 1
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:6b}]} run item replace block ~ ~ ~ container.6 with minecraft:clock{CustomModelData:420094,um_gui:1b,display:{Name:"\"\""}} 1
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:7b}]} run item replace block ~ ~ ~ container.7 with minecraft:clock{CustomModelData:420094,um_gui:1b,display:{Name:"\"\""}} 1
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:8b}]} run item replace block ~ ~ ~ container.8 with minecraft:clock{CustomModelData:420094,um_gui:1b,display:{Name:"\"\""}} 1
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:9b}]} run item replace block ~ ~ ~ container.9 with minecraft:clock{CustomModelData:420094,um_gui:1b,display:{Name:"\"\""}} 1
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b}]} run item replace block ~ ~ ~ container.10 with minecraft:clock{CustomModelData:420094,um_gui:1b,display:{Name:"\"\""}} 1
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:14b}]} run item replace block ~ ~ ~ container.14 with minecraft:clock{CustomModelData:420094,um_gui:1b,display:{Name:"\"\""}} 1
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:15b}]} run item replace block ~ ~ ~ container.15 with minecraft:clock{CustomModelData:420094,um_gui:1b,display:{Name:"\"\""}} 1
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:17b}]} run item replace block ~ ~ ~ container.17 with minecraft:clock{CustomModelData:420094,um_gui:1b,display:{Name:"\"\""}} 1
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:18b}]} run item replace block ~ ~ ~ container.18 with minecraft:clock{CustomModelData:420094,um_gui:1b,display:{Name:"\"\""}} 1
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:19b}]} run item replace block ~ ~ ~ container.19 with minecraft:clock{CustomModelData:420094,um_gui:1b,display:{Name:"\"\""}} 1
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:23b}]} run item replace block ~ ~ ~ container.23 with minecraft:clock{CustomModelData:420094,um_gui:1b,display:{Name:"\"\""}} 1
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:24b}]} run item replace block ~ ~ ~ container.24 with minecraft:clock{CustomModelData:420094,um_gui:1b,display:{Name:"\"\""}} 1
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:25b}]} run item replace block ~ ~ ~ container.25 with minecraft:clock{CustomModelData:420094,um_gui:1b,display:{Name:"\"\""}} 1
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:26b}]} run item replace block ~ ~ ~ container.26 with minecraft:clock{CustomModelData:420094,um_gui:1b,display:{Name:"\"\""}} 1

#check recipes
execute if entity @s[tag=!um.has_recipe] if data block ~ ~ ~ Items[17] unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:16b}]} run function undermagic:block/undercrafter/check_recipes
