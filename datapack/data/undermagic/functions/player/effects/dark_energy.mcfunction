
execute as @s[scores={um.dark_energy=6001..}] run particle witch ~ ~ ~ 0.3 0.5 0.3 0 10
execute as @s[scores={um.dark_energy=6001..},nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate",tag:{um_id:"pit_lord_chestplate"}}]}] run effect give @s resistance 2 2 true
execute as @s[scores={um.dark_energy=6001..}] run effect give @s resistance 2 1 true
execute as @s[scores={um.dark_energy=2001..}] run particle witch ~ ~ ~ 0.3 0.5 0.3 0 10
execute as @s[scores={um.dark_energy=2001..},nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate",tag:{um_id:"pit_lord_chestplate"}}]}] run effect give @s resistance 2 1 true
execute as @s[scores={um.dark_energy=2001..}] run effect give @s resistance 2 0 true
particle witch ~ ~ ~ 0.3 0.5 0.3 0 10

#remove if needed
execute if entity @s[nbt=!{Inventory:[{Slot:100b,tag:{um_id:"boots_demonic_steel"}}]},nbt=!{Inventory:[{Slot:101b,tag:{um_id:"leggings_demonic_steel"}}]},nbt=!{Inventory:[{Slot:102b,tag:{um_id:"chestplate_demonic_steel"}}]},nbt=!{Inventory:[{Slot:102b,tag:{um_id:"pit_lord_chestplate"}}]},nbt=!{Inventory:[{Slot:103b,tag:{um_id:"helmet_demonic_steel"}}]}] run scoreboard players remove @s um.dark_energy 1000
