particle minecraft:smoke ~ ~ ~ 0 0 0 0.02 40
scoreboard players remove @s um.mana 35
scoreboard players set @s um.mana_cd 0
summon armor_stand ~ ~ ~ {Tags:["global.ignore","um_entity","um_oblivion_charge"],Marker:1b,Invisible:1b,NoGravity:1b}
