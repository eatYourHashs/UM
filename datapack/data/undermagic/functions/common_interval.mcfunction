
#Crafting: Redo
execute as @e[type=item_frame,nbt={Item:{id:"minecraft:book",Count:1b}}] at @s if block ~ ~-1 ~ fire if block ~ ~-2 ~ netherrack run scoreboard players add @s um.dummy 1
execute as @e[type=item_frame,nbt={Item:{id:"minecraft:book",Count:1b}}] at @s if block ~ ~-1 ~ fire if block ~ ~-2 ~ netherrack if score @s um.dummy matches 20.. run function undermagic:book_conversion

execute as @e[type=item,nbt={Item:{id:"minecraft:clock",Count:1b,tag:{um_id:"demon_portal_stabilizer"}}}] at @s if block ~ ~-0.2 ~ obsidian run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,ShowArms:0b,Small:0b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["global.ignore","um_entity","um_demon_portal"]}
execute as @e[type=item,nbt={Item:{id:"minecraft:clock",Count:1b,tag:{um_id:"demon_portal_stabilizer"}}}] at @s if block ~ ~-0.2 ~ obsidian run kill @s
execute as @e[type=item,nbt={Item:{id:"minecraft:written_book",Count:1b,tag:{um_id:"netheric_book"}}}] at @s if block ~ ~ ~ cauldron unless entity @e[tag=um_bloodchalice,distance=..2] run function undermagic:block/bloodchalice_init
execute as @e[type=item,nbt={Item:{id:"minecraft:written_book",Count:1b,tag:{um_id:"netheric_book"}}}] at @s if block ~ ~-0.9 ~ quartz_pillar run function undermagic:block/pedestal_init
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:clock",Count:1b,tag:{um_id:"relic_of_ruin"}}}] at @s run function undermagic:entity/elder/summon

#Crafting Blocks
execute as @e[tag=um_undercrafter] at @s if entity @p[distance=..8] run function undermagic:block/undercrafter_interval
execute as @e[tag=um_bloodchalice] at @s if entity @p[distance=..24] run function undermagic:block/bloodchalice_interval
execute as @e[tag=um_pedestal] at @s if entity @p[distance=..24] run function undermagic:block/pedestal_interval

execute as @e[tag=um_charm_table] at @s run data merge entity @s {Rotation:[90F,0F],Fire:100}
execute as @e[tag=um_teleporter] at @s run data merge entity @s {Rotation:[90F,0F],Fire:100}
execute as @e[tag=um_charm_table,tag=!um_processed] at @s run setblock ~ ~ ~ minecraft:dropper[facing=down]{CustomName:'{"text":"Charm Table","italic":false}'} replace
execute as @e[tag=um_charm_table,tag=!um_processed] at @s run tag @s add um_processed
execute as @e[tag=um_charm_table] at @s run function undermagic:charm_table_interval
execute as @e[tag=um_teleporter] at @s run function undermagic:teleporter_interval

effect give @e[tag=um_elemental] invisibility 8 2 true

execute as @e[tag=um_blood_monolith] at @s rotated 0 0 run tp @s ^ ^ ^
effect give @e[tag=um_blood_monolith] invisibility 2 1 true
execute as @e[tag=um_shadow_rift] at @s run function undermagic:rift_interval
execute as @e[tag=um_shadow_guardian] at @s unless entity @a[nbt={Inventory:[{id:"minecraft:shield",Count:1b,Slot:-106b,tag:{um_id:"shadow_shield"}}]},distance=..10] run kill @s
execute as @e[tag=um_warlock_hand] at @s unless entity @a[distance=..10,predicate=undermagic:armor_sets/abyss_warlock] run kill @s
execute as @e[tag=um_dragon_wings] at @s unless entity @a[distance=..10,predicate=undermagic:armor_sets/dragon] run kill @s

effect give @e[tag=um_shadebeast] invisibility 2 1 true
execute as @e[tag=um_salamander] at @s run function undermagic:salamander_interval


#10 sec counter
scoreboard players add 10sec_counter um.dummy 1
execute if score 10sec_counter um.dummy matches 19 as @a unless score @s um.drac_sh_chg matches 0..5 run scoreboard players add @s um.drac_sh_chg 1
execute if score 10sec_counter um.dummy matches 19 run scoreboard players add @a[scores={um.drac_sh_chg=..4},nbt={Inventory:[{id:"minecraft:shield",Count:1b,Slot:-106b,tag:{um_id:"draconic_bulwark"}}]}] um.drac_sh_chg 1
execute if score 10sec_counter um.dummy matches 20.. run scoreboard players set 10sec_counter um.dummy 0

scoreboard players add swap_clock um.dummy 1
execute if score swap_clock um.dummy matches 100.. as @a at @a run function undermagic:item/tool/swap_charms


### TODO: Add Boss Handler
execute unless entity @e[tag=um_pit_lord_boss] run stopsound @a * undermagic:boss_music.pit_lord
execute unless entity @e[tag=um_elder_eye] run stopsound @a * undermagic:boss_music.elder
execute unless entity @e[tag=um_shadesull_boss] run stopsound @a * undermagic:boss_music.shadesull_p1
execute unless entity @e[tag=um_shadesull_boss] run stopsound @a * undermagic:boss_music.shadesull_p2

execute store result score rand um.dummy run loot spawn ~ -10 ~ loot undermagic:um_rand/rand1_100
execute store result score rand1 um.dummy run loot spawn ~ -10 ~ loot undermagic:um_rand/rand1_100
execute if score difficulty um.dummy matches 2.. if score rand um.dummy matches 1 if entity @e[type=ender_dragon] at @e[sort=random,tag=um_crystal_marker,limit=1] unless entity @e[type=end_crystal,distance=..2] run function undermagic:respawn_crystal
execute if score difficulty um.dummy matches 2.. if score rand um.dummy matches 1..3 if entity @e[type=ender_dragon] at @r in minecraft:the_end run function undermagic:entity/wyrmling/spawn
execute if score rand um.dummy matches 1 if score rand1 um.dummy matches ..10 if score dragon_dead um.dummy matches 1 at @r in minecraft:the_end run function undermagic:entity/wyrmling/spawn

execute unless entity @e[tag=um_pit_lord_boss] run bossbar set undermagic:pit_lord visible false
execute unless entity @e[tag=um_blood_boss] run bossbar set undermagic:blood_amalgam visible false
execute unless entity @e[tag=um_elemental] run bossbar set undermagic:elemental visible false
execute unless entity @e[tag=um_shadesull] run bossbar set undermagic:shadesull visible false
execute unless entity @e[tag=um_elder_eye] run bossbar set undermagic:elder visible false
execute unless entity @e[tag=um_shadebeast_alpha] run bossbar set undermagic:sb_alpha visible false
execute unless entity @e[tag=um_disciple_of_destruction] run bossbar set undermagic:disciple_of_destruction visible false
execute unless entity @e[tag=um_disciple_of_death] run bossbar set undermagic:disciple_of_death visible false
execute unless entity @e[tag=um_shadebeast_alpha] run bossbar set undermagic:sb_alpha visible false

execute if score 5s 6tic matches 1.. run scoreboard players set @e[tag=um_pit_lord_boss] um.erpg_loot 1
execute if score 5s 6tic matches 1.. run scoreboard players set @e[tag=um_elder_eye] um.erpg_loot 1
execute if score 5s 6tic matches 1.. run scoreboard players set @e[tag=um_shadesull_boss] um.erpg_loot 1
execute if score 5s 6tic matches 1.. run scoreboard players set @e[type=ender_dragon] um.erpg_loot 1
execute if score 5s 6tic matches 1.. run scoreboard players set @e[type=wither] um.erpg_loot 1

execute if score 5s 6tic matches 1.. run effect give @e[tag=um_pit_lord_boss] resistance 2 1 true
execute if score 5s 6tic matches 1.. run effect give @e[tag=um_elder_eye] resistance 2 1 true
execute if score 5s 6tic matches 1.. run effect give @e[tag=um_elder_hand] resistance 2 1 true
execute if score 5s 6tic matches 1.. run effect give @e[tag=um_shadesull_boss] resistance 2 1 true
execute if score 5s 6tic matches 1.. run effect give @e[tag=um_blood_minion] resistance 2 1 true

execute as @e[tag=um_pit_abs] at @s unless entity @e[tag=um_pit_lord_boss,distance=..5] run kill @s
execute if entity @e[tag=um_pit_lord_boss] run scoreboard players set pit_lord_alive um.dummy 1
execute if entity @e[tag=um_elder_eye] run scoreboard players set elder_alive um.dummy 1

execute if score elder_alive um.dummy matches 1 unless entity @e[tag=um_elder_eye] run advancement grant @a only undermagic:undermagic/elder
execute if score elder_alive um.dummy matches 1 unless entity @e[tag=um_elder_eye] run advancement grant @a only undermagic:undermagic/abyss elder
execute if score elder_alive um.dummy matches 1 unless entity @e[tag=um_elder_eye] run scoreboard players set elder_alive um.dummy 0

execute if score pit_lord_alive um.dummy matches 1 unless entity @e[tag=um_pit_lord_boss] run advancement grant @a only undermagic:undermagic/pit_lord
execute if score pit_lord_alive um.dummy matches 1 unless entity @e[tag=um_pit_lord_boss] run advancement grant @a only undermagic:undermagic/abyss pit_lord
execute if score pit_lord_alive um.dummy matches 1 unless entity @e[tag=um_pit_lord_boss] run scoreboard players set pit_lord_alive um.dummy 0
