
#Crafting
execute as @e[type=item_frame,nbt={Item:{id:"minecraft:book",Count:1b}}] at @s if block ~ ~-1 ~ fire if block ~ ~-2 ~ netherrack run scoreboard players add @s um.dummy 1
execute as @e[type=item_frame,nbt={Item:{id:"minecraft:book",Count:1b}}] at @s if block ~ ~-1 ~ fire if block ~ ~-2 ~ netherrack if score @s um.dummy matches 20.. run function undermagic:book_conversion

#10 sec counter
scoreboard players add 10sec_counter um.dummy 1
execute if score 10sec_counter um.dummy matches 19 as @a unless score @s um.drac_sh_chg matches 0..5 run scoreboard players add @s um.drac_sh_chg 1
execute if score 10sec_counter um.dummy matches 19 run scoreboard players add @a[scores={um.drac_sh_chg=..4},nbt={Inventory:[{id:"minecraft:shield",Count:1b,Slot:-106b,tag:{um_id:"draconic_bulwark"}}]}] um.drac_sh_chg 1
execute if score 10sec_counter um.dummy matches 20.. run scoreboard players set 10sec_counter um.dummy 0

scoreboard players add swap_clock um.dummy 1
execute if score swap_clock um.dummy matches 100.. as @a at @a run function undermagic:item/tool/swap_charms

### TODO: Add Boss Handler
execute store result score rand um.dummy run loot spawn ~ -10 ~ loot undermagic:um_rand/rand1_100
execute store result score rand1 um.dummy run loot spawn ~ -10 ~ loot undermagic:um_rand/rand1_100
execute if score difficulty um.dummy matches 2.. if score rand um.dummy matches 1 if entity @e[type=ender_dragon] at @e[sort=random,tag=um_crystal_marker,limit=1] unless entity @e[type=end_crystal,distance=..2] run function undermagic:respawn_crystal
execute if score difficulty um.dummy matches 2.. if score rand um.dummy matches 1..3 if entity @e[type=ender_dragon] at @r in minecraft:the_end run function undermagic:entity/wyrmling/spawn
execute if score rand um.dummy matches 1 if score rand1 um.dummy matches ..10 if score dragon_dead um.dummy matches 1 at @r in minecraft:the_end run function undermagic:entity/wyrmling/spawn
