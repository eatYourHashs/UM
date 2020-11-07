
data merge entity @s {Rotation:[90F,0F],Fire:100}

execute if entity @s[tag=um.needs_dropper] run setblock ~ ~ ~ dropper[facing=up]{CustomName:'{"text":"Charm Table","italic":false}'}
execute if entity @s[tag=um.needs_dropper] run tag @s remove um.needs_dropper
execute if block ~ ~ ~ air run give @p minecraft:shulker_spawn_egg{display:{Name:'{"text":"Charm Table","color":"yellow","italic":false}',Lore:['{"text":"Used to charm armor.","color":"gray","italic":false}']},CustomModelData:420080,um_id:charm_table,EntityTag:{id:"minecraft:armor_stand",NoGravity:1b,Invulnerable:1b,Fire:1000,ShowArms:0b,Small:0b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["global.ignore","um.entity","um.charm_table","um.needs_dropper"],Rotation:[90F,0F],ArmorItems:[{},{},{},{id:"minecraft:shulker_spawn_egg",Count:1b,tag:{display:{Name:'{"text":"Charm Table","color":"yellow","italic":false}',Lore:['{"text":"Used to charm armor.","color":"gray","italic":false}']},CustomModelData:420080,um.id:charm_table,EntityTag:{id:"minecraft:armor_stand",Tags:["global.ignore","um.entity","um.charm_table","um.needs_dropper"]}}}]}} 1
execute if block ~ ~ ~ air run kill @e[type=item,distance=..2,nbt={Item:{id:"minecraft:dropper",Count:1b}}]
execute if block ~ ~ ~ air run kill @s
particle minecraft:enchant ~ ~1.2 ~ 0 0 0 0.4 4
execute if block ~ ~ ~ dropper{Items:[{Slot:0b,id:"minecraft:clock",Count:1b,tag:{um_id:charm}},{Slot:1b,id:"minecraft:leather_helmet",Count:1b,tag:{um_id:"omega_helmet"}},{Slot:2b,id:"minecraft:clock",Count:1b,tag:{um_id:charm}}]} run function undermagic:block/charm_table_slot_omega
execute if block ~ ~ ~ dropper{Items:[{Slot:0b,id:"minecraft:clock",Count:1b,tag:{um_id:charm}},{Slot:1b,id:"minecraft:leather_helmet",Count:1b}]} unless block ~ ~ ~ dropper{Items:[{Slot:0b,id:"minecraft:clock",Count:1b,tag:{um_id:charm}},{Slot:1b,id:"minecraft:leather_helmet",Count:1b,tag:{um_id:"omega_helmet"}}]} run function undermagic:block/charm_table_slot
execute if block ~ ~ ~ dropper{Items:[{Slot:0b,id:"minecraft:clock",Count:1b,tag:{um_id:charm}},{Slot:1b,id:"minecraft:leather_chestplate",Count:1b,tag:{um_id:"omega_chestplate"}},{Slot:2b,id:"minecraft:clock",Count:1b,tag:{um_id:charm}}]} run function undermagic:block/charm_table_slot_omega
execute if block ~ ~ ~ dropper{Items:[{Slot:0b,id:"minecraft:clock",Count:1b,tag:{um_id:charm}},{Slot:1b,id:"minecraft:leather_chestplate",Count:1b}]} unless block ~ ~ ~ dropper{Items:[{Slot:0b,id:"minecraft:clock",Count:1b,tag:{um_id:charm}},{Slot:1b,id:"minecraft:leather_chestplate",Count:1b,tag:{um_id:"omega_chestplate"}}]} run function undermagic:block/charm_table_slot
execute if block ~ ~ ~ dropper{Items:[{Slot:0b,id:"minecraft:clock",Count:1b,tag:{um_id:charm}},{Slot:1b,id:"minecraft:leather_leggings",Count:1b,tag:{um_id:"omega_leggings"}},{Slot:2b,id:"minecraft:clock",Count:1b,tag:{um_id:charm}}]} run function undermagic:block/charm_table_slot_omega
execute if block ~ ~ ~ dropper{Items:[{Slot:0b,id:"minecraft:clock",Count:1b,tag:{um_id:charm}},{Slot:1b,id:"minecraft:leather_leggings",Count:1b}]} unless block ~ ~ ~ dropper{Items:[{Slot:0b,id:"minecraft:clock",Count:1b,tag:{um_id:charm}},{Slot:1b,id:"minecraft:leather_leggings",Count:1b,tag:{um_id:"omega_leggings"}}]} run function undermagic:block/charm_table_slot
execute if block ~ ~ ~ dropper{Items:[{Slot:0b,id:"minecraft:clock",Count:1b,tag:{um_id:charm}},{Slot:1b,id:"minecraft:leather_boots",Count:1b,tag:{um_id:"omega_boots"}},{Slot:2b,id:"minecraft:clock",Count:1b,tag:{um_id:charm}}]} run function undermagic:block/charm_table_slot_omega
execute if block ~ ~ ~ dropper{Items:[{Slot:0b,id:"minecraft:clock",Count:1b,tag:{um_id:charm}},{Slot:1b,id:"minecraft:leather_boots",Count:1b}]} unless block ~ ~ ~ dropper{Items:[{Slot:0b,id:"minecraft:clock",Count:1b,tag:{um_id:charm}},{Slot:1b,id:"minecraft:leather_boots",Count:1b,tag:{um_id:"omega_boots"}}]} run function undermagic:block/charm_table_slot
execute if block ~ ~ ~ dropper{Items:[{Slot:0b,id:"minecraft:clock",Count:1b,tag:{um_id:charm}},{Slot:1b,id:"minecraft:diamond_helmet",Count:1b}]} run function undermagic:block/charm_table_slot
execute if block ~ ~ ~ dropper{Items:[{Slot:0b,id:"minecraft:clock",Count:1b,tag:{um_id:charm}},{Slot:1b,id:"minecraft:diamond_chestplate",Count:1b}]} run function undermagic:block/charm_table_slot
execute if block ~ ~ ~ dropper{Items:[{Slot:0b,id:"minecraft:clock",Count:1b,tag:{um_id:charm}},{Slot:1b,id:"minecraft:diamond_leggings",Count:1b}]} run function undermagic:block/charm_table_slot
execute if block ~ ~ ~ dropper{Items:[{Slot:0b,id:"minecraft:clock",Count:1b,tag:{um_id:charm}},{Slot:1b,id:"minecraft:diamond_boots",Count:1b}]} run function undermagic:block/charm_table_slot
execute if block ~ ~ ~ dropper{Items:[{Slot:0b,id:"minecraft:clock",Count:1b,tag:{um_id:charm}},{Slot:1b,id:"minecraft:netherite_helmet",Count:1b}]} run function undermagic:block/charm_table_slot
execute if block ~ ~ ~ dropper{Items:[{Slot:0b,id:"minecraft:clock",Count:1b,tag:{um_id:charm}},{Slot:1b,id:"minecraft:netherite_chestplate",Count:1b}]} run function undermagic:block/charm_table_slot
execute if block ~ ~ ~ dropper{Items:[{Slot:0b,id:"minecraft:clock",Count:1b,tag:{um_id:charm}},{Slot:1b,id:"minecraft:netherite_leggings",Count:1b}]} run function undermagic:block/charm_table_slot
execute if block ~ ~ ~ dropper{Items:[{Slot:0b,id:"minecraft:clock",Count:1b,tag:{um_id:charm}},{Slot:1b,id:"minecraft:netherite_boots",Count:1b}]} run function undermagic:block/charm_table_slot