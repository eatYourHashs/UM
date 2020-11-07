
data merge entity @s {Rotation:[90F,0F],Fire:100}

execute unless score @s um.dummy_two matches 1.. store result score @s um.dummy run scoreboard players get tele_id um.dummy
execute unless score @s um.dummy_two matches 1.. run scoreboard players add @s um.dummy 1
execute unless score @s um.dummy_two matches 1.. run scoreboard players add tele_id um.dummy 1
execute unless score @s um.dummy_two matches 1.. store result score @s um.dummy_two run scoreboard players get @s um.dummy
execute if entity @e[distance=..2,type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{um_id:"bound_locator_card"}}}] store result score @s um.dummy run data get entity @e[limit=1,sort=nearest,distance=..2,type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{um_id:"bound_locator_card"}}}] Item.tag.um_target
kill @e[distance=..2,type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{um_id:"bound_locator_card"}}}]
scoreboard players set @a[distance=..1,scores={um.tp_cooldown=..0}] um.tp_cooldown 6
execute if entity @a[distance=..1,scores={um.tp_cooldown=6}] as @e[tag=um.teleporter] if score @s um.dummy_two = @e[tag=um.teleporter,limit=1,sort=nearest] um.dummy run tp @a[distance=..1,scores={um.tp_cooldown=6}] @s
execute if block ~ ~-0.5 ~ air run give @p minecraft:shulker_spawn_egg{display:{Name:'{"text":"Teleporter","color":"yellow","italic":false}',Lore:['{"text":"Insert a linked Locator Card and walk in","color":"gray","italic":false}','{"text":"to teleport to the linked Teleporter.","color":"gray","italic":false}']},CustomModelData:420081,um_id:teleporter,EntityTag:{id:"minecraft:armor_stand",NoGravity:1b,Invulnerable:1b,Fire:1000,ShowArms:0b,Small:0b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["global.ignore","um.entity","um.teleporter"],Rotation:[90F,0F],ArmorItems:[{},{},{},{id:"minecraft:shulker_spawn_egg",Count:1b,tag:{display:{Name:'{"text":"Teleporter","color":"yellow","italic":false}',Lore:['{"text":"Used to charm armor.","color":"gray","italic":false}']},CustomModelData:420081,um.id:charm_table,EntityTag:{id:"minecraft:armor_stand",Tags:["global.ignore","um.entity","um.charm_table"]}}}]}} 1
execute if block ~ ~-0.5 ~ air run kill @s
particle minecraft:portal ~ ~ ~ 0 0 0 0.4 20