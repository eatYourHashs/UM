tp @s ~ ~-0.8 ~
execute if score difficulty um.dummy matches 1.. run tp @s ~ ~-0.3 ~
execute if score difficulty um.dummy matches 2.. run tp @s ~ ~-0.3 ~
particle minecraft:witch ~ ~ ~ 0.15 0.15 0.15 0 6
scoreboard players add @s um.dummy 1
execute if score @s um.dummy matches 140.. run kill @s
execute unless block ~ ~ ~ air unless block ~ ~ ~ cave_air run summon tnt ~ ~0.1 ~
execute unless block ~ ~ ~ air unless block ~ ~ ~ cave_air run kill @s
execute unless block ~ ~ ~ air unless block ~ ~ ~ cave_air if score @e[tag=um_shadesull_boss,limit=1,sort=nearest] um.boss_hp matches ..400 run function undermagic:explosive_orb
effect give @a[distance=..2,nbt={Inventory:[{id:"minecraft:leather_helmet",Slot:103b,tag:{Unbreakable:1,HideFlags:1,Enchantments:[{id:respiration,lvl:3},{id:aqua_affinity,lvl:1}]}}]}] instant_damage 1 4
effect give @a[distance=..2] instant_damage 1 2
