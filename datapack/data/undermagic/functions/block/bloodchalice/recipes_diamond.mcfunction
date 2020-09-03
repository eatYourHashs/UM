
function undermagic:block/bloodchalice/recipes_redstone

scoreboard players set temp um.dummy 0
execute if data storage undermagic:common list[{Slot:0b,id:"minecraft:leather"}] run scoreboard players add temp um.dummy 1
execute if data storage undermagic:common list[{Slot:1b,id:"minecraft:leather"}] run scoreboard players add temp um.dummy 1
execute if data storage undermagic:common list[{Slot:2b,id:"minecraft:leather"}] run scoreboard players add temp um.dummy 1
execute if data storage undermagic:common list[{Slot:3b,id:"minecraft:leather"}] run scoreboard players add temp um.dummy 1
execute if score @s um.dummy matches 25.. if score temp um.dummy matches 3 if data storage undermagic:common list[{Count:1b,id:"minecraft:golden_apple"}] run scoreboard players add @s um.dummy_two 1
execute if score @s um.dummy matches 25.. if score temp um.dummy matches 3 if data storage undermagic:common list[{Count:1b,id:"minecraft:golden_carrot"}] run scoreboard players add @s um.dummy_two 1

execute if score @s um.dummy matches 100.. if data storage undermagic:common list[{Count:1b,id:"minecraft:redstone_block"}] if data storage undermagic:common list[{Count:1b,id:"minecraft:blaze_rod"}] if data storage undermagic:common list[{Count:1b,id:"minecraft:golden_sword"}] if data storage undermagic:common list[{Count:1b,id:"minecraft:iron_block"}] run scoreboard players add @s um.dummy_two 1
execute if score @s um.dummy matches 100.. if data storage undermagic:common list[{Count:1b,id:"minecraft:gold_block"}] if data storage undermagic:common list[{Count:1b,id:"minecraft:emerald_block"}] if data storage undermagic:common list[{Count:1b,id:"minecraft:diamond_block"}] if data storage undermagic:common list[{Count:1b,id:"minecraft:nether_star"}] run scoreboard players add @s um.dummy_two 1

execute if score @s um.dummy matches 150.. if data storage undermagic:common list[{Count:1b,id:"minecraft:glowstone"}] if data storage undermagic:common list[{Count:1b,tag:{um_id:"carnage_1"}}] if data storage undermagic:common list[{Count:1b,id:"minecraft:gold_block"}] if data storage undermagic:common list[{Count:6b,tag:{um_id:"Bloodstone"}}] run scoreboard players add @s um.dummy_two 1
execute if score @s um.dummy matches 50.. if data storage undermagic:common list[{Count:1b,id:"minecraft:glowstone"}] if data storage undermagic:common list[{Count:1b,tag:{um_id:"bloody_edge_1"}}] if data storage undermagic:common list[{Count:1b,id:"minecraft:ender_eye"}] if data storage undermagic:common list[{Count:1b,id:"minecraft:blaze_rod"}] run scoreboard players add @s um.dummy_two 1
execute if score @s um.dummy matches 50.. if data storage undermagic:common list[{Count:1b,id:"minecraft:glowstone"}] if data storage undermagic:common list[{Count:1b,tag:{um_id:"blood_rain_staff_1"}}] if data storage undermagic:common list[{Count:1b,id:"minecraft:ender_eye"}] if data storage undermagic:common list[{Count:1b,id:"minecraft:blaze_rod"}] run scoreboard players add @s um.dummy_two 1
