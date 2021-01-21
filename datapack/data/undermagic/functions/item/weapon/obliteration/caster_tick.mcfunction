execute unless score @s um.oblit_prog matches 101.. run scoreboard players add @s um.oblit_prog 1
execute unless score @s um.oblit_prog matches 101.. unless score @s um.oblit_prog matches 2 if data entity @s Inventory[{Slot:-106b}].tag{um_id:"oblivion_matrix"} run scoreboard players add @s um.oblit_prog 1
execute unless score @s um.oblit_prog matches 101.. unless score @s um.oblit_prog matches 2 if data entity @s Inventory[{Slot:-106b}].tag{um_id:"augis_oblivia"} run scoreboard players add @s um.oblit_prog 1
execute unless score @s um.oblit_prog matches 101.. if score @s um.oblit_prog matches 40 if data entity @s Inventory[{Slot:-106b}].tag{um_id:"augis_oblivia"} run scoreboard players set @s um.oblit_prog 60
scoreboard players set @s um.mana 0
scoreboard players set @s um.mana_cd 0
particle minecraft:portal ~ ~1.3 ~ 0 0 0 0.5 10
execute if score @s um.oblit_prog matches 20 run playsound minecraft:entity.illusioner.prepare_blindness player @a ~ ~ ~ 1 2
execute if score @s um.oblit_prog matches 40 run playsound minecraft:entity.illusioner.prepare_blindness player @a ~ ~ ~ 1 1.8
execute if score @s um.oblit_prog matches 60 run playsound minecraft:entity.illusioner.prepare_blindness player @a ~ ~ ~ 1 1.6
execute if score @s um.oblit_prog matches 80 run playsound minecraft:entity.illusioner.prepare_blindness player @a ~ ~ ~ 1 1.2
execute if score @s um.oblit_prog matches 100 run playsound minecraft:entity.evoker.prepare_attack player @a ~ ~ ~ 1 0.5
execute if score @s um.oblit_prog matches 100.. run particle minecraft:reverse_portal ~ ~1.3 ~ 0 0 0 0.5 10
execute unless entity @s[nbt={SelectedItem:{tag:{um_id:"obliteration"}}}] run scoreboard players set @s um.oblit_prog 0