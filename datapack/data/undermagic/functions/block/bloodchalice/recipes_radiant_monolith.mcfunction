
function undermagic:block/bloodchalice/recipes_diamond

execute if score @s um.dummy matches 250.. if data storage undermagic:common list[{Count:1b,id:"minecraft:dragon_breath"}] if data storage undermagic:common list[{Count:1b,tag:{um_id:"bloody_edge_2"}}] if data storage undermagic:common list[{Count:1b,id:"minecraft:enchanted_golden_apple"}] if data storage undermagic:common list[{Count:1b,id:"minecraft:golden_sword"}] run scoreboard players add @s um.dummy_two 1
execute if score @s um.dummy matches 250.. if data storage undermagic:common list[{Count:1b,id:"minecraft:dragon_breath"}] if data storage undermagic:common list[{Count:1b,tag:{um_id:"blood_rain_staff_2"}}] if data storage undermagic:common list[{Count:1b,id:"minecraft:enchanted_golden_apple"}] if data storage undermagic:common list[{Count:1b,id:"minecraft:golden_sword"}] run scoreboard players add @s um.dummy_two 1
execute if score @s um.dummy matches 500.. if data storage undermagic:common list[{Count:2b,id:"minecraft:dragon_breath"}] if data storage undermagic:common list[{Count:1b,tag:{um_id:"carnage_2"}}] if data storage undermagic:common list[{Count:1b,id:"minecraft:diamond_block"}] if data storage undermagic:common list[{Count:8b,tag:{um_id:"Bloodstone"}}] run scoreboard players add @s um.dummy_two 1

execute if score @s um.dummy matches 500.. if data storage undermagic:common list[{Count:10b,tag:{um_id:"Bloodstone"}}] if data storage undermagic:common list[{Count:1b,id:"minecraft:emerald_block"}] if data storage undermagic:common list[{Count:1b,id:"minecraft:diamond_block"}] if data storage undermagic:common list[{Count:1b,id:"minecraft:ender_eye"}] run scoreboard players add @s um.dummy_two 1

scoreboard players set temp um.dummy 0
execute if data storage undermagic:common list[{Slot:0b,Count:4b,tag:{um_id:"Bloodstone"}}] run scoreboard players add temp um.dummy 1
execute if data storage undermagic:common list[{Slot:1b,Count:4b,tag:{um_id:"Bloodstone"}}] run scoreboard players add temp um.dummy 1
execute if data storage undermagic:common list[{Slot:2b,Count:4b,tag:{um_id:"Bloodstone"}}] run scoreboard players add temp um.dummy 1
execute if data storage undermagic:common list[{Slot:3b,Count:4b,tag:{um_id:"Bloodstone"}}] run scoreboard players add temp um.dummy 1
execute if score @s um.dummy matches 75.. if score temp um.dummy matches 2 if data storage undermagic:common list[{id:"minecraft:chainmail_helmet",Count:1b}] if data storage undermagic:common list[{Count:1b,id:"minecraft:enchanted_golden_apple"}] run scoreboard players add @s um.dummy_two 1
execute if score @s um.dummy matches 75.. if score temp um.dummy matches 2 if data storage undermagic:common list[{id:"minecraft:chainmail_chestplate",Count:1b}] if data storage undermagic:common list[{Count:1b,id:"minecraft:enchanted_golden_apple"}] run scoreboard players add @s um.dummy_two 1
execute if score @s um.dummy matches 75.. if score temp um.dummy matches 2 if data storage undermagic:common list[{id:"minecraft:chainmail_leggings",Count:1b}] if data storage undermagic:common list[{Count:1b,id:"minecraft:enchanted_golden_apple"}] run scoreboard players add @s um.dummy_two 1
execute if score @s um.dummy matches 75.. if score temp um.dummy matches 2 if data storage undermagic:common list[{id:"minecraft:chainmail_boots",Count:1b}] if data storage undermagic:common list[{Count:1b,id:"minecraft:enchanted_golden_apple"}] run scoreboard players add @s um.dummy_two 1
