particle minecraft:dust 1 0 0 1 ~ ~ ~ 0.3 0.1 0.3 1 5
scoreboard players add @s um.dummy 1
scoreboard players add @s um.dummy_two 1
execute if score @s um.dummy matches 400.. run kill @s
execute if score @s um.dummy_two matches 20.. run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,NoGravity:1b,Tags:["global.ignore","um.entity","um.blood_cloud","um.blood_drop_1"]}
execute if score @s um.dummy_two matches 20.. run scoreboard players set @s um.dummy_two 0