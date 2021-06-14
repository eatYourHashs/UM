execute unless entity @e[tag=um.dragon_wings,distance=..10] run playsound minecraft:entity.ender_dragon.flap player @a ~ ~ ~ 1 0.8
execute unless entity @e[tag=um.dragon_wings,distance=..10] run summon minecraft:armor_stand ~ ~ ~ {Silent:1b,NoGravity:1b,Invulnerable:1b,ShowArms:0b,Small:0b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["global.ignore","um.entity","um.dragon_wings"],ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,CustomModelData:420090}}]}
execute if entity @s[nbt={OnGround:0b}] run scoreboard players add @s um.drag_animate 1
execute if score @s um.drag_animate matches 2 run item replace entity @e[tag=um.dragon_wings,distance=..10,sort=nearest,limit=1] armor.head with minecraft:carrot_on_a_stick{CustomModelData:420090}
execute if score @s um.drag_animate matches 4 run item replace entity @e[tag=um.dragon_wings,distance=..10,sort=nearest,limit=1] armor.head with minecraft:carrot_on_a_stick{CustomModelData:420091}
execute if score @s um.drag_animate matches 6 run item replace entity @e[tag=um.dragon_wings,distance=..10,sort=nearest,limit=1] armor.head with minecraft:carrot_on_a_stick{CustomModelData:420092}
execute if score @s um.drag_animate matches 8 run item replace entity @e[tag=um.dragon_wings,distance=..10,sort=nearest,limit=1] armor.head with minecraft:carrot_on_a_stick{CustomModelData:420091}
execute if score @s um.drag_animate matches 9.. run playsound minecraft:entity.ender_dragon.flap player @a ~ ~ ~ 0.5 0.8
execute if score @s um.drag_animate matches 9.. run scoreboard players set @s um.drag_animate 1
tp @e[tag=um.dragon_wings,distance=..10,sort=nearest,limit=1] @s
effect give @s slow_falling 1 0 true
effect give @s jump_boost 1 5 true
effect clear @s levitation
effect give @s[scores={um.sneak=0},x_rotation=-90..-40,nbt={OnGround:0b}] minecraft:levitation 1 9 true
effect give @s[x_rotation=-40..40,nbt={OnGround:0b}] minecraft:levitation 1 255 true
effect give @s[scores={um.sneak=1..},nbt={OnGround:0b}] minecraft:levitation 1 255 true
execute unless score @s um.fly matches 1.. if entity @s[nbt={FallFlying:0b}] run stopsound @s player minecraft:item.elytra.flying
execute if score @s um.fly matches 1.. run scoreboard players set @s um.drag_animate 1
execute if score @s um.fly matches 1.. run playsound minecraft:item.elytra.flying player @a ~ ~ ~ 0.3 1
execute if score @s um.fly matches 1.. if block ^ ^ ^2 air run tp ^ ^ ^0.3
execute if score @s um.fly matches 1.. if block ^ ^ ^2 cave_air run tp ^ ^ ^0.3
scoreboard players set @s um.fly 0