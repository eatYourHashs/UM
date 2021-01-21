particle minecraft:smoke ~ ~ ~ 0 0 0 0.02 40
scoreboard players remove @s um.mana 35
scoreboard players add @s um.mana_used 35
execute if data entity @s Inventory[{Slot:-106b}].tag{um_id:"oblivion_matrix"} run scoreboard players add @s um.mana 15
execute if data entity @s Inventory[{Slot:-106b}].tag{um_id:"oblivion_matrix"} run scoreboard players remove @s um.mana_used 10
scoreboard players set @s um.mana_cd 0
summon armor_stand ~ ~ ~ {Tags:["global.ignore","um.entity","um.oblivion_charge"],Marker:1b,Invisible:1b,NoGravity:1b}
