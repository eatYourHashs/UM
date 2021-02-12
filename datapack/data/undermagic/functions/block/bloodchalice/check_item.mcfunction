
scoreboard players set temp um.dummy 0
data modify storage undermagic:common obj set from entity @s Item

execute if data storage undermagic:common obj{id:"minecraft:rotten_flesh"} run scoreboard players set temp um.dummy 1
execute if data storage undermagic:common obj{id:"minecraft:bone"} run scoreboard players set temp um.dummy 1
execute if data storage undermagic:common obj{id:"minecraft:ender_pearl"} run scoreboard players set temp um.dummy 1
execute if data storage undermagic:common obj{id:"minecraft:spider_eye"} run scoreboard players set temp um.dummy 1
execute if data storage undermagic:common obj{id:"minecraft:string"} run scoreboard players set temp um.dummy 1
execute if data storage undermagic:common obj{id:"minecraft:gunpowder"} run scoreboard players set temp um.dummy 1
execute if data storage undermagic:common obj{id:"minecraft:blaze_rod"} run scoreboard players set temp um.dummy 1
execute if data storage undermagic:common obj{id:"minecraft:shulker_shell"} run scoreboard players set temp um.dummy 1
execute if data storage undermagic:common obj{id:"minecraft:cod"} run scoreboard players set temp um.dummy 1
execute if data storage undermagic:common obj{id:"minecraft:salmon"} run scoreboard players set temp um.dummy 1
execute if data storage undermagic:common obj{id:"minecraft:tropical_fish"} run scoreboard players set temp um.dummy 1
execute if data storage undermagic:common obj{id:"minecraft:pufferfish"} run scoreboard players set temp um.dummy 1
execute if data storage undermagic:common obj{id:"minecraft:chicken"} run scoreboard players set temp um.dummy 1
execute if data storage undermagic:common obj{id:"minecraft:beef"} run scoreboard players set temp um.dummy 1
execute if data storage undermagic:common obj{id:"minecraft:porkchop"} run scoreboard players set temp um.dummy 1
execute if data storage undermagic:common obj{id:"minecraft:mutton"} run scoreboard players set temp um.dummy 1
execute if data storage undermagic:common obj{id:"minecraft:egg"} run scoreboard players set temp um.dummy 1
execute if data storage undermagic:common obj{id:"minecraft:leather"} run scoreboard players set temp um.dummy 1
execute if data storage undermagic:common obj{id:"minecraft:nether_star"} run scoreboard players set temp um.dummy 100
execute if data storage undermagic:common obj{id:"minecraft:prismarine_shard"} run scoreboard players set temp um.dummy 1
execute if data storage undermagic:common obj{id:"minecraft:turtle_egg"} run scoreboard players set temp um.dummy 1
execute if data storage undermagic:common obj{id:"minecraft:scute"} run scoreboard players set temp um.dummy 1
execute if data storage undermagic:common obj{id:"minecraft:feather"} run scoreboard players set temp um.dummy 1

execute if data storage undermagic:common obj.tag{um_id:"demon_skin"} run scoreboard players set temp um.dummy 1
execute if data storage undermagic:common obj.tag{um_id:"demon_bone"} run scoreboard players set temp um.dummy 1
execute if data storage undermagic:common obj.tag{um_id:"demon_sword_shard"} run scoreboard players set temp um.dummy 10
execute if data storage undermagic:common obj.tag{um_id:"demon_heart_stone"} run scoreboard players set temp um.dummy 100
execute if data storage undermagic:common obj.tag{um_id:"abyss_shard"} run scoreboard players set temp um.dummy 3
execute if data storage undermagic:common obj.tag{um_id:"pit_lord_heart"} run scoreboard players set temp um.dummy 200
execute if data storage undermagic:common obj.tag{um_id:"dark_crystal_heart"} run scoreboard players set temp um.dummy 300
execute if data storage undermagic:common obj.tag{um_id:"cbe"} run scoreboard players set temp um.dummy 10
execute if data storage undermagic:common obj.tag{um_id:"dragon_scale"} run scoreboard players set temp um.dummy 10
execute if data storage undermagic:common obj.tag{um_id:"omega_rune"} run scoreboard players set temp um.dummy 10
execute if data storage undermagic:common obj.tag{um_id:"sanguine_eye"} run function undermagic:entity/blood_amalgam/summon

execute if data storage undermagic:common obj{id:"minecraft:pufferfish"} run effect give @p poison 20 2

#calc total
tag @s add um.chalice_check
execute store result score temp_1 um.dummy run data get entity @s Item.Count
execute if score temp um.dummy matches 1.. run kill @s
execute if data storage undermagic:common obj.tag{um_id:"sanguine_eye"} run kill @s

scoreboard players operation temp um.dummy *= temp_1 um.dummy
scoreboard players operation out um.dummy += temp um.dummy
