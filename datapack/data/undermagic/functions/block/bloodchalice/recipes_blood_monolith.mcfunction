
function undermagic:block/bloodchalice/recipes_radiant_monolith

scoreboard players set temp um.dummy 0
execute if data storage undermagic:common list[{Slot:0b,Count:3b,tag:{um_id:"cbe"}}] run scoreboard players add temp um.dummy 1
execute if data storage undermagic:common list[{Slot:1b,Count:3b,tag:{um_id:"cbe"}}] run scoreboard players add temp um.dummy 1
execute if data storage undermagic:common list[{Slot:2b,Count:3b,tag:{um_id:"cbe"}}] run scoreboard players add temp um.dummy 1
execute if data storage undermagic:common list[{Slot:3b,Count:3b,tag:{um_id:"cbe"}}] run scoreboard players add temp um.dummy 1
execute if score @s um.dummy matches 250.. if score temp um.dummy matches 2 if data storage undermagic:common list[{tag:{um_id:"bloodstained_chestplate"},Count:1b}] if data storage undermagic:common list[{Count:1b,tag:{um_id:"bloodstained_heart"}}] run scoreboard players add @s um.dummy_two 1
execute if score @s um.dummy matches 150.. if score temp um.dummy matches 2 if data storage undermagic:common list[{id:"minecraft:rotten_flesh",Count:6b}] if data storage undermagic:common list[{Count:1b,id:"minecraft:iron_block"}] run scoreboard players add @s um.dummy_two 1
execute if score @s um.dummy matches 200.. if score temp um.dummy matches 2 if data storage undermagic:common list[{id:"minecraft:blaze_rod",Count:4b}] if data storage undermagic:common list[{Count:2b,id:"minecraft:magma_cream"}] run scoreboard players add @s um.dummy_two 1

execute if score @s um.dummy matches 100.. if data storage undermagic:common list[{Count:4b,id:"minecraft:blue_ice"}] if data storage undermagic:common list[{Count:8b,id:"minecraft:diamond"}] if data storage undermagic:common list[{Count:2b,tag:{um_id:"cbe"}}] if data storage undermagic:common list[{Count:10b,id:"minecraft:blaze_powder"}] run scoreboard players add @s um.dummy_two 1
execute if score @s um.dummy matches 300.. if data storage undermagic:common list[{Count:4b,tag:{um_id:"nether_shard"}}] if data storage undermagic:common list[{Count:2b,id:"minecraft:golden_apple"}] if data storage undermagic:common list[{Count:4b,tag:{um_id:"cbe"}}] if data storage undermagic:common list[{Count:2b,id:"minecraft:gold_block"}] run scoreboard players add @s um.dummy_two 1
