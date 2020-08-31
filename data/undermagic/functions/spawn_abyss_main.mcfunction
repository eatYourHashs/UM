clear @s carrot_on_a_stick{um_id:"crown_of_ruin"} 1
tellraw @a ["",{"text":"[Summoning the Abyss... Extreme lag imminent]","italic":true,"color":"dark_red"}]
scoreboard players set abyss_spawned um.dummy 1
summon armor_stand ~ ~ ~4 {Tags:["global.ignore","um_entity","um_abyss_spawning"],Invisible:1b,Marker:1b,NoGravity:1b,PersistenceRequired:1b}
summon armor_stand ~ ~ ~-4 {Tags:["global.ignore","um_entity","um_abyss_spawning"],Invisible:1b,Marker:1b,NoGravity:1b,PersistenceRequired:1b}
summon armor_stand ~4 ~ ~ {Tags:["global.ignore","um_entity","um_abyss_spawning"],Invisible:1b,Marker:1b,NoGravity:1b,PersistenceRequired:1b}
summon armor_stand ~-4 ~ ~ {Tags:["global.ignore","um_entity","um_abyss_spawning"],Invisible:1b,Marker:1b,NoGravity:1b,PersistenceRequired:1b}
summon armor_stand ~4 ~ ~4 {Tags:["global.ignore","um_entity","um_abyss_spawning"],Invisible:1b,Marker:1b,NoGravity:1b,PersistenceRequired:1b}
summon armor_stand ~4 ~ ~-4 {Tags:["global.ignore","um_entity","um_abyss_spawning"],Invisible:1b,Marker:1b,NoGravity:1b,PersistenceRequired:1b}
summon armor_stand ~-4 ~ ~-4 {Tags:["global.ignore","um_entity","um_abyss_spawning"],Invisible:1b,Marker:1b,NoGravity:1b,PersistenceRequired:1b}
summon armor_stand ~-4 ~ ~4 {Tags:["global.ignore","um_entity","um_abyss_spawning"],Invisible:1b,Marker:1b,NoGravity:1b,PersistenceRequired:1b}
summon armor_stand ~4 ~ ~2 {Tags:["global.ignore","um_entity","um_abyss_spawning"],Invisible:1b,Marker:1b,NoGravity:1b,PersistenceRequired:1b}
summon armor_stand ~2 ~ ~4 {Tags:["global.ignore","um_entity","um_abyss_spawning"],Invisible:1b,Marker:1b,NoGravity:1b,PersistenceRequired:1b}
summon armor_stand ~-4 ~ ~2 {Tags:["global.ignore","um_entity","um_abyss_spawning"],Invisible:1b,Marker:1b,NoGravity:1b,PersistenceRequired:1b}
summon armor_stand ~-2 ~ ~4 {Tags:["global.ignore","um_entity","um_abyss_spawning"],Invisible:1b,Marker:1b,NoGravity:1b,PersistenceRequired:1b}
summon armor_stand ~4 ~ ~-2 {Tags:["global.ignore","um_entity","um_abyss_spawning"],Invisible:1b,Marker:1b,NoGravity:1b,PersistenceRequired:1b}
summon armor_stand ~2 ~ ~-4 {Tags:["global.ignore","um_entity","um_abyss_spawning"],Invisible:1b,Marker:1b,NoGravity:1b,PersistenceRequired:1b}
summon armor_stand ~-4 ~ ~-2 {Tags:["global.ignore","um_entity","um_abyss_spawning"],Invisible:1b,Marker:1b,NoGravity:1b,PersistenceRequired:1b}
summon armor_stand ~-2 ~ ~-4 {Tags:["global.ignore","um_entity","um_abyss_spawning"],Invisible:1b,Marker:1b,NoGravity:1b,PersistenceRequired:1b}
execute as @e[tag=um_abyss_spawning,limit=16,sort=nearest] at @s facing entity @p feet run tp ^ ^ ^0.1