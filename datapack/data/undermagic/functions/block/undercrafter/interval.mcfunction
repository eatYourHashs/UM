
# UI Update
execute unless block ~ ~1 ~ minecraft:barrel{Items:[{Slot:0b}]} run replaceitem block ~ ~1 ~ container.0 minecraft:gray_stained_glass_pane{um_gui:1b,display:{Name:"\"\""}} 1
execute unless block ~ ~1 ~ minecraft:barrel{Items:[{Slot:1b}]} run replaceitem block ~ ~1 ~ container.1 minecraft:gray_stained_glass_pane{um_gui:1b,display:{Name:"\"\""}} 1
execute unless block ~ ~1 ~ minecraft:barrel{Items:[{Slot:5b}]} run replaceitem block ~ ~1 ~ container.5 minecraft:gray_stained_glass_pane{um_gui:1b,display:{Name:"\"\""}} 1
execute unless block ~ ~1 ~ minecraft:barrel{Items:[{Slot:6b}]} run replaceitem block ~ ~1 ~ container.6 minecraft:gray_stained_glass_pane{um_gui:1b,display:{Name:"\"\""}} 1
execute unless block ~ ~1 ~ minecraft:barrel{Items:[{Slot:7b}]} run replaceitem block ~ ~1 ~ container.7 minecraft:gray_stained_glass_pane{um_gui:1b,display:{Name:"\"\""}} 1
execute unless block ~ ~1 ~ minecraft:barrel{Items:[{Slot:8b}]} run replaceitem block ~ ~1 ~ container.8 minecraft:gray_stained_glass_pane{um_gui:1b,display:{Name:"\"\""}} 1
execute unless block ~ ~1 ~ minecraft:barrel{Items:[{Slot:9b}]} run replaceitem block ~ ~1 ~ container.9 minecraft:gray_stained_glass_pane{um_gui:1b,display:{Name:"\"\""}} 1
execute unless block ~ ~1 ~ minecraft:barrel{Items:[{Slot:10b}]} run replaceitem block ~ ~1 ~ container.10 minecraft:gray_stained_glass_pane{um_gui:1b,display:{Name:"\"\""}} 1
execute unless block ~ ~1 ~ minecraft:barrel{Items:[{Slot:14b}]} run replaceitem block ~ ~1 ~ container.14 minecraft:gray_stained_glass_pane{um_gui:1b,display:{Name:"\"\""}} 1
execute unless block ~ ~1 ~ minecraft:barrel{Items:[{Slot:15b}]} run replaceitem block ~ ~1 ~ container.15 minecraft:gray_stained_glass_pane{um_gui:1b,display:{Name:"\"\""}} 1
execute unless block ~ ~1 ~ minecraft:barrel{Items:[{Slot:17b}]} run replaceitem block ~ ~1 ~ container.17 minecraft:gray_stained_glass_pane{um_gui:1b,display:{Name:"\"\""}} 1
execute unless block ~ ~1 ~ minecraft:barrel{Items:[{Slot:18b}]} run replaceitem block ~ ~1 ~ container.18 minecraft:gray_stained_glass_pane{um_gui:1b,display:{Name:"\"\""}} 1
execute unless block ~ ~1 ~ minecraft:barrel{Items:[{Slot:19b}]} run replaceitem block ~ ~1 ~ container.19 minecraft:gray_stained_glass_pane{um_gui:1b,display:{Name:"\"\""}} 1
execute unless block ~ ~1 ~ minecraft:barrel{Items:[{Slot:23b}]} run replaceitem block ~ ~1 ~ container.23 minecraft:gray_stained_glass_pane{um_gui:1b,display:{Name:"\"\""}} 1
execute unless block ~ ~1 ~ minecraft:barrel{Items:[{Slot:24b}]} run replaceitem block ~ ~1 ~ container.24 minecraft:gray_stained_glass_pane{um_gui:1b,display:{Name:"\"\""}} 1
execute unless block ~ ~1 ~ minecraft:barrel{Items:[{Slot:25b}]} run replaceitem block ~ ~1 ~ container.25 minecraft:gray_stained_glass_pane{um_gui:1b,display:{Name:"\"\""}} 1
execute unless block ~ ~1 ~ minecraft:barrel{Items:[{Slot:26b}]} run replaceitem block ~ ~1 ~ container.26 minecraft:gray_stained_glass_pane{um_gui:1b,display:{Name:"\"\""}} 1

#check recipes
execute if entity @s[tag=!um_has_recipe] if data block ~ ~1 ~ Items[17] unless block ~ ~1 ~ minecraft:barrel{Items:[{Slot:16b}]} run function undermagic:block/undercrafter/check_recipes

#blueprints
execute if entity @e[distance=..3,type=item,nbt={Item:{id:"minecraft:clock",Count:1b,tag:{um_id:"blueprint_ice_bow"}}}] run tag @s add um_know_ice_bow
execute if entity @e[distance=..3,type=item,nbt={Item:{id:"minecraft:clock",Count:1b,tag:{um_id:"blueprint_shadow_shield"}}}] run tag @s add um_know_shadow_shield
