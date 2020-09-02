
scoreboard players set temp um.dummy 0
scoreboard players set temp2 um.dummy 0
scoreboard players set temp3 um.dummy 0
scoreboard players set temp4 um.dummy 0
scoreboard players set temp5 um.dummy 0
scoreboard players set temp6 um.dummy 0
execute if data entity @s Item.tag{um_id:"netheric_book"} if block ~ ~-0.9 ~ crafting_table store success score temp2 um.dummy run function undermagic:block/undercrafter_init
execute if data entity @s Item.tag{um_id:"netheric_book"} if block ~ ~ ~ cauldron unless entity @e[tag=um_bloodchalice,distance=..2] store success score temp3 um.dummy run function undermagic:block/bloodchalice_init
execute if data entity @s Item.tag{um_id:"netheric_book"} if block ~ ~-0.9 ~ quartz_pillar store success score temp4 um.dummy run function undermagic:block/pedestal_init
execute if data entity @s Item.tag{um_id:"pit_lord_heart"} store success score temp um.dummy run data merge entity @s {Health:100}
execute if data entity @s Item.tag{um_id:"demon_portal_stabilizer"} if block ~ ~-0.2 ~ obsidian store success score temp5 um.dummy run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,ShowArms:0b,Small:0b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["global.ignore","um_entity","um_demon_portal"]}
execute if data entity @s Item.tag{um_id:"demon_portal_stabilizer"} if block ~ ~-0.2 ~ obsidian run kill @s
execute if data entity @s[nbt={OnGround:1b}] Item.tag{um_id:"relic_of_ruin"} store success score temp6 um.dummy run function undermagic:entity/elder/summon
execute if score temp um.dummy matches 1 run tag @s remove um_processed
execute if score temp2 um.dummy matches 0 run tag @s remove um_processed
execute if score temp3 um.dummy matches 0 run tag @s remove um_processed
execute if score temp4 um.dummy matches 0 run tag @s remove um_processed
execute if score temp5 um.dummy matches 0 run tag @s remove um_processed
execute if score temp6 um.dummy matches 0 run tag @s remove um_processed

kill @s[nbt={Item:{id:"minecraft:structure_block"}}]