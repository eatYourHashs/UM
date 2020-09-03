
particle minecraft:enchant ~3 ~0.5 ~3 0.4 0.4 0.4 0 8
particle minecraft:enchant ~-3 ~0.5 ~3 0.4 0.4 0.4 0 8
particle minecraft:enchant ~3 ~0.5 ~-3 0.4 0.4 0.4 0 8
particle minecraft:enchant ~-3 ~0.5 ~-3 0.4 0.4 0.4 0 8

#Bloody Tools
execute if score @s um.dummy matches 10.. if data storage undermagic:common list[{Count:4b,id:"minecraft:red_dye"}] if data storage undermagic:common list[{Count:1b,id:"minecraft:iron_sword"}] if data storage undermagic:common list[{Count:1b,id:"minecraft:golden_apple"}] if data storage undermagic:common list[{Count:1b,id:"minecraft:blaze_powder"}] run scoreboard players add @s um.dummy_two 1
execute if score @s um.dummy matches 50.. if data storage undermagic:common list[{Count:4b,id:"minecraft:red_dye"}] if data storage undermagic:common list[{Count:1b,id:"minecraft:iron_axe"}] if data storage undermagic:common list[{Count:1b,id:"minecraft:iron_pickaxe"}] if data storage undermagic:common list[{Count:4b,tag:{um_id:"Bloodstone"}}] run scoreboard players add @s um.dummy_two 1
execute if score @s um.dummy matches 10.. if data storage undermagic:common list[{Count:4b,id:"minecraft:red_dye"}] if data storage undermagic:common list[{Count:1b,id:"minecraft:stick"}] if data storage undermagic:common list[{Count:1b,id:"minecraft:golden_apple"}] if data storage undermagic:common list[{Count:1b,id:"minecraft:blaze_powder"}] run scoreboard players add @s um.dummy_two 1

#Sanguis Inspector
scoreboard players set temp um.dummy 0
execute if data storage undermagic:common list[{Slot:0b,id:"minecraft:redstone"}] run scoreboard players add temp um.dummy 1
execute if data storage undermagic:common list[{Slot:1b,id:"minecraft:redstone"}] run scoreboard players add temp um.dummy 1
execute if data storage undermagic:common list[{Slot:2b,id:"minecraft:redstone"}] run scoreboard players add temp um.dummy 1
execute if data storage undermagic:common list[{Slot:3b,id:"minecraft:redstone"}] run scoreboard players add temp um.dummy 1
execute if score @s um.dummy matches 10.. if score temp um.dummy matches 2 if data storage undermagic:common list[{Count:1b,id:"minecraft:redstone_block"}] if data storage undermagic:common list[{Count:1b,id:"minecraft:blaze_powder"}] run scoreboard players add @s um.dummy_two 1

#spawn mobs
scoreboard players set temp um.dummy 0
execute if data storage undermagic:common list[{Slot:0b,id:"minecraft:feather"}] run scoreboard players add temp um.dummy 1
execute if data storage undermagic:common list[{Slot:1b,id:"minecraft:feather"}] run scoreboard players add temp um.dummy 1
execute if data storage undermagic:common list[{Slot:2b,id:"minecraft:feather"}] run scoreboard players add temp um.dummy 1
execute if data storage undermagic:common list[{Slot:3b,id:"minecraft:feather"}] run scoreboard players add temp um.dummy 1
execute if score @s um.dummy matches 5.. if score temp um.dummy matches 3 if data storage undermagic:common list[{Count:1b,id:"minecraft:chicken"}] run scoreboard players add @s um.dummy_two 1

scoreboard players set temp um.dummy 0
execute if data storage undermagic:common list[{Slot:0b,id:"minecraft:wool"}] run scoreboard players add temp um.dummy 1
execute if data storage undermagic:common list[{Slot:1b,id:"minecraft:wool"}] run scoreboard players add temp um.dummy 1
execute if data storage undermagic:common list[{Slot:2b,id:"minecraft:wool"}] run scoreboard players add temp um.dummy 1
execute if data storage undermagic:common list[{Slot:3b,id:"minecraft:wool"}] run scoreboard players add temp um.dummy 1
execute if score @s um.dummy matches 5.. if score temp um.dummy matches 3 if data storage undermagic:common list[{Count:1b,id:"minecraft:mutton"}] run scoreboard players add @s um.dummy_two 1

scoreboard players set temp um.dummy 0
execute if data storage undermagic:common list[{Slot:0b,id:"minecraft:leather"}] run scoreboard players add temp um.dummy 1
execute if data storage undermagic:common list[{Slot:1b,id:"minecraft:leather"}] run scoreboard players add temp um.dummy 1
execute if data storage undermagic:common list[{Slot:2b,id:"minecraft:leather"}] run scoreboard players add temp um.dummy 1
execute if data storage undermagic:common list[{Slot:3b,id:"minecraft:leather"}] run scoreboard players add temp um.dummy 1
execute if score @s um.dummy matches 5.. if score temp um.dummy matches 3 if data storage undermagic:common list[{Count:1b,id:"minecraft:beef"}] run scoreboard players add @s um.dummy_two 1

scoreboard players set temp um.dummy 0
execute if data storage undermagic:common list[{Slot:0b,id:"minecraft:rabbit_hide"}] run scoreboard players add temp um.dummy 1
execute if data storage undermagic:common list[{Slot:1b,id:"minecraft:rabbit_hide"}] run scoreboard players add temp um.dummy 1
execute if data storage undermagic:common list[{Slot:2b,id:"minecraft:rabbit_hide"}] run scoreboard players add temp um.dummy 1
execute if data storage undermagic:common list[{Slot:3b,id:"minecraft:rabbit_hide"}] run scoreboard players add temp um.dummy 1
execute if score @s um.dummy matches 5.. if score temp um.dummy matches 3 if data storage undermagic:common list[{Count:1b,id:"minecraft:rabbit"}] run scoreboard players add @s um.dummy_two 1
