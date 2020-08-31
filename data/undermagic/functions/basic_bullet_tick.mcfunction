tp @s ~ ~-1.2 ~
execute if score difficulty um.dummy matches 1.. run tp @s ~ ~-0.4 ~
execute if score difficulty um.dummy matches 2.. run tp @s ~ ~-0.4 ~
particle minecraft:witch ~ ~ ~ 0.1 0.1 0.1 0 4
scoreboard players add @s um.dummy 1
execute if score @s um.dummy matches 140.. run kill @s
effect give @a[distance=..2,nbt={Inventory:[{id:"minecraft:leather_helmet",Slot:103b,tag:{Unbreakable:1,HideFlags:1,Enchantments:[{id:respiration,lvl:3},{id:aqua_affinity,lvl:1}]}}]}] instant_damage 1 4
effect give @a[distance=..2] instant_damage 1 2
