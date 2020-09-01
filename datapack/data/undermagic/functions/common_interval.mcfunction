
execute as @e[type=item_frame,nbt={Item:{id:"minecraft:book",Count:1b}}] at @s if block ~ ~-1 ~ fire if block ~ ~-2 ~ netherrack run scoreboard players add @s um.dummy 1
execute as @e[type=item_frame,nbt={Item:{id:"minecraft:book",Count:1b}}] at @s if block ~ ~-1 ~ fire if block ~ ~-2 ~ netherrack if score @s um.dummy matches 20.. run function undermagic:book_conversion


execute as @e[tag=um_undercrafter] at @s if entity @p[distance=..8] run function undermagic:undercrafter_interval
execute as @e[tag=um_bloodchalice] at @s if entity @p[distance=..24] run function undermagic:bloodchalice_interval
execute as @e[tag=um_pedestal] at @s if entity @p[distance=..24] run function undermagic:pedestal_interval

execute as @e[tag=!um_processed,type=end_crystal,nbt={ShowBottom:1b}] at @s run function undermagic:crystal_processing
execute as @e[type=item,nbt={Item:{id:"minecraft:clock",Count:1b,tag:{um_id:"demon_portal_stabilizer"}}}] at @s if block ~ ~-0.2 ~ obsidian run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,ShowArms:0b,Small:0b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["global.ignore","um_entity","um_demon_portal"]}
execute as @e[type=item,nbt={Item:{id:"minecraft:clock",Count:1b,tag:{um_id:"demon_portal_stabilizer"}}}] at @s if block ~ ~-0.2 ~ obsidian run kill @s
execute as @e[tag=um_demon_portal] at @s unless block ~ ~-0.5 ~ obsidian run kill @s
scoreboard players add @e[tag=um_demon_portal] um.dummy 1

execute as @e[tag=um_demon_portal,scores={um.dummy=20..}] at @s if entity @p[distance=..24] run function undermagic:demon_spawn_processing
execute as @e[tag=um_demon_portal,scores={um.dummy=20..}] at @s run scoreboard players set @s um.dummy 0
execute as @e[tag=um_demon_portal] at @s if entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:clock",Count:1b,tag:{um_id:"infernal_summons"}}}] run function undermagic:summon_pit_lord
execute as @e[type=item,nbt={Item:{id:"minecraft:written_book",Count:1b,tag:{um_id:"netheric_book"}}}] at @s if block ~ ~ ~ cauldron unless entity @e[tag=um_bloodchalice,distance=..2] run function undermagic:bloodchalice_init
execute as @e[type=item,nbt={Item:{id:"minecraft:written_book",Count:1b,tag:{um_id:"netheric_book"}}}] at @s if block ~ ~-0.9 ~ quartz_pillar run function undermagic:pedestal_init
effect give @e[tag=um_elemental] invisibility 8 2 true

execute unless entity @e[tag=um_pit_lord_boss] run stopsound @a * undermagic:boss_music.pit_lord
execute unless entity @e[tag=um_elder_eye] run stopsound @a * undermagic:boss_music.elder
execute unless entity @e[tag=um_shadesull] run stopsound @a * undermagic:boss_music.shadesull_p1
execute unless entity @e[tag=um_shadesull] run stopsound @a * undermagic:boss_music.shadesull_p2

execute if score difficulty um.dummy matches 1.. run scoreboard players add @e[type=wither] um.dummy 1
execute if score difficulty um.dummy matches 1.. run effect give @e[type=wither] resistance 1 0 true
execute if score difficulty um.dummy matches 1.. run scoreboard players set @e[type=wither,scores={um.dummy=21..}] um.dummy 0

execute as @e[type=wither] if score difficulty um.dummy matches 1.. store result score @s um.boss_hp run data get entity @s Health
execute as @e[type=wither,scores={um.boss_hp=..150,um.dummy=10}] at @s if score difficulty um.dummy matches 1.. run scoreboard players add @s um.boss_hp 10
execute as @e[type=wither,scores={um.boss_hp=..150,um.dummy=10}] at @s if score difficulty um.dummy matches 2.. run scoreboard players add @s um.boss_hp 15
execute as @e[type=wither,scores={um.boss_hp=..175,um.dummy=10}] at @s if score difficulty um.dummy matches 1.. store result entity @s Health float 1 run scoreboard players get @s um.boss_hp
execute as @e[type=wither,scores={um.boss_hp=..150,um.dummy=5}] at @s if score difficulty um.dummy matches 1.. run scoreboard players add @s um.boss_hp 10
execute as @e[type=wither,scores={um.boss_hp=..150,um.dummy=5}] at @s if score difficulty um.dummy matches 2.. run scoreboard players add @s um.boss_hp 15
execute as @e[type=wither,scores={um.boss_hp=..175,um.dummy=5}] at @s if score difficulty um.dummy matches 1.. store result entity @s Health float 1 run scoreboard players get @s um.boss_hp
execute as @e[type=wither,scores={um.boss_hp=..150,um.dummy=15}] at @s if score difficulty um.dummy matches 1.. run scoreboard players add @s um.boss_hp 10
execute as @e[type=wither,scores={um.boss_hp=..150,um.dummy=15}] at @s if score difficulty um.dummy matches 2.. run scoreboard players add @s um.boss_hp 15
execute as @e[type=wither,scores={um.boss_hp=..175,um.dummy=15}] at @s if score difficulty um.dummy matches 1.. store result entity @s Health float 1 run scoreboard players get @s um.boss_hp
execute as @e[type=wither,scores={um.boss_hp=..150,um.dummy=20}] at @s if score difficulty um.dummy matches 2.. run scoreboard players add @s um.boss_hp 10
execute as @e[type=wither,scores={um.boss_hp=..150,um.dummy=20}] at @s if score difficulty um.dummy matches 1.. run scoreboard players add @s um.boss_hp 15
execute as @e[type=wither,scores={um.boss_hp=..175,um.dummy=20}] at @s if score difficulty um.dummy matches 1.. store result entity @s Health float 1 run scoreboard players get @s um.boss_hp
execute as @e[type=wither,scores={um.boss_hp=..150,um.dummy=20}] at @s if score difficulty um.dummy matches 1 run summon minecraft:wither_skeleton ~ ~ ~ {Tags:["global.ignore","um_entity","um_processed"],HandItems:[{id:"minecraft:iron_sword",Count:1b},{}],ArmorItems:[{},{},{},{id:"minecraft:iron_helmet",Count:1b,tag:{Enchantments:[{id:"minecraft:blast_protection",lvl:4s}]}}]}
execute as @e[type=wither,scores={um.boss_hp=..150,um.dummy=20}] at @s if score difficulty um.dummy matches 2.. run summon minecraft:wither_skeleton ~ ~ ~ {Tags:["global.ignore","um_entity","um_processed"],HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{Enchantments:[{id:"minecraft:sharpness",lvl:2s},{id:"minecraft:knockback",lvl:2s},{id:"minecraft:fire_aspect",lvl:2s}]}},{}],ArmorItems:[{},{},{id:"minecraft:diamond_chestplate",Count:1b,tag:{Enchantments:[{id:"minecraft:blast_protection",lvl:4s}]}},{id:"minecraft:diamond_helmet",Count:1b,tag:{Enchantments:[{id:"minecraft:blast_protection",lvl:4s}]}}]}
execute as @e[type=wither,scores={um.boss_hp=..150,um.dummy=20}] at @s if score difficulty um.dummy matches 1.. run playsound minecraft:entity.wither_skeleton.hurt hostile @a ~ ~ ~ 1 0.5

execute as @e[tag=um_blood_monolith] at @s rotated 0 0 run tp @s ^ ^ ^
effect give @e[tag=um_blood_monolith] invisibility 2 1 true
execute if score difficulty um.dummy matches 1.. as @e[type=wither] at @s run tp @a[distance=100..105] @s
execute as @e[tag=um_shadow_rift] at @s run function undermagic:rift_interval
execute as @e[tag=um_shadow_guardian] at @s unless entity @e[type=player,nbt={Inventory:[{id:"minecraft:shield",Count:1b,Slot:-106b,tag:{um_id:"shadow_shield"}}]},distance=..10] run kill @s
execute as @e[tag=um_warlock_hand] at @s unless entity @e[type=player,nbt={Inventory:[{id:"minecraft:leather_helmet",Count:1b,Slot:103b,tag:{um_id:"abyss_warlock_hood"}},{id:"minecraft:leather_chestplate",Count:1b,Slot:102b,tag:{um_id:"abyss_warlock_robe"}},{id:"minecraft:leather_leggings",Count:1b,Slot:101b,tag:{um_id:"abyss_warlock_pants"}},{id:"minecraft:leather_boots",Count:1b,Slot:100b,tag:{um_id:"abyss_warlock_boots"}}]},distance=..10] run kill @s
execute as @e[tag=um_dragon_wings] at @s unless entity @a[nbt={Inventory:[{id:"minecraft:leather_helmet",Count:1b,Slot:103b,tag:{um_id:"dragon_helmet"}},{id:"minecraft:leather_chestplate",Count:1b,Slot:102b,tag:{um_id:"dragon_chestplate"}},{id:"minecraft:leather_leggings",Count:1b,Slot:101b,tag:{um_id:"dragon_leggings"}},{id:"minecraft:leather_boots",Count:1b,Slot:100b,tag:{um_id:"dragon_boots"}}]},distance=..10] run kill @s

execute as @e[tag=um_charm_table] at @s run data merge entity @s {Rotation:[90F,0F],Fire:100}
execute as @e[tag=um_teleporter] at @s run data merge entity @s {Rotation:[90F,0F],Fire:100}
execute as @e[tag=um_charm_table,tag=!um_processed] at @s run setblock ~ ~ ~ minecraft:dropper[facing=down]{CustomName:'{"text":"Charm Table","italic":false}'} replace
execute as @e[tag=um_charm_table,tag=!um_processed] at @s run tag @s add um_processed
execute as @e[tag=um_charm_table] at @s run function undermagic:charm_table_interval
execute as @e[tag=um_teleporter] at @s run function undermagic:teleporter_interval

execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:clock",Count:1b,tag:{um_id:"relic_of_ruin"}}}] at @s run function undermagic:elder_summon
effect give @e[tag=um_shadebeast] invisibility 2 1 true
execute as @e[tag=um_salamander] at @s run function undermagic:salamander_interval

#wyrmling spawn
execute store result score rand um.dummy run loot spawn ~ -10 ~ loot undermagic:um_rand/rand1_100
execute store result score rand1 um.dummy run loot spawn ~ -10 ~ loot undermagic:um_rand/rand1_100
execute if score difficulty um.dummy matches 2.. if score rand um.dummy matches 1 if entity @e[type=ender_dragon] at @e[sort=random,tag=um_crystal_marker,limit=1] unless entity @e[type=end_crystal,distance=..2] run function undermagic:respawn_crystal
execute if score difficulty um.dummy matches 2.. if score rand um.dummy matches 1..3 if entity @e[type=ender_dragon] at @r in minecraft:the_end run function undermagic:entity/wyrmling/spawn
execute if score rand um.dummy matches 1 if score rand1 um.dummy matches ..10 if score dragon_dead um.dummy matches 1 at @r in minecraft:the_end run function undermagic:entity/wyrmling/spawn

#10 sec counter
scoreboard players add 10sec_counter um.dummy 1
execute if score 10sec_counter um.dummy matches 19 as @a unless score @s um.drac_sh_chg matches 0..5 run scoreboard players add @s um.drac_sh_chg 1
execute if score 10sec_counter um.dummy matches 19 run scoreboard players add @a[scores={um.drac_sh_chg=..4},nbt={Inventory:[{id:"minecraft:shield",Count:1b,Slot:-106b,tag:{um_id:"draconic_bulwark"}}]}] um.drac_sh_chg 1
execute if score 10sec_counter um.dummy matches 20.. run scoreboard players set 10sec_counter um.dummy 0

execute unless entity @e[tag=um_pit_lord_boss] run bossbar set undermagic:pit_lord visible false
execute unless entity @e[tag=um_blood_boss] run bossbar set undermagic:blood_amalgam visible false
execute unless entity @e[tag=um_elemental] run bossbar set undermagic:elemental visible false
execute unless entity @e[tag=um_shadesull] run bossbar set undermagic:shadesull visible false
execute unless entity @e[tag=um_elder_eye] run bossbar set undermagic:elder visible false
execute unless entity @e[tag=um_shadebeast_alpha] run bossbar set undermagic:sb_alpha visible false
execute unless entity @e[tag=um_disciple_of_destruction] run bossbar set undermagic:disciple_of_destruction visible false
execute unless entity @e[tag=um_disciple_of_death] run bossbar set undermagic:disciple_of_death visible false

tag @e[tag=um_pit_lord_boss] add bosshostile
tag @e[tag=um_elder_eye] add bosshostile
tag @e[tag=um_shadesull] add bosshostile
tag @e[tag=um_elemental] add bosshostile
tag @e[tag=um_sb_alpha] add bosshostile
tag @e[tag=um_disciple_of_destruction] add bosshostile
tag @e[tag=um_disciple_of_death] add bosshostile

execute if score 5s 6tic matches 1.. run scoreboard players set @e[tag=um_pit_lord_boss] um.erpg_loot 1
execute if score 5s 6tic matches 1.. run scoreboard players set @e[tag=um_elder_eye] um.erpg_loot 1
execute if score 5s 6tic matches 1.. run scoreboard players set @e[tag=um_shadesull] um.erpg_loot 1
execute if score 5s 6tic matches 1.. run scoreboard players set @e[type=ender_dragon] um.erpg_loot 1
execute if score 5s 6tic matches 1.. run scoreboard players set @e[type=wither] um.erpg_loot 1

execute if score 5s 6tic matches 1.. run effect give @e[tag=um_pit_lord_boss] resistance 2 1 true
execute if score 5s 6tic matches 1.. run effect give @e[tag=um_elder_eye] resistance 2 1 true
execute if score 5s 6tic matches 1.. run effect give @e[tag=um_elder_hand] resistance 2 1 true
execute if score 5s 6tic matches 1.. run effect give @e[tag=um_shadesull] resistance 2 1 true
execute if score 5s 6tic matches 1.. run effect give @e[tag=um_blood_minion] resistance 2 1 true

scoreboard players add swap_clock um.dummy 1
execute if score swap_clock um.dummy matches 100.. as @a at @a run function undermagic:item/tool/swap_charms

execute as @e[tag=um_pit_abs] at @s unless entity @e[tag=um_pit_lord_boss,distance=..5] run kill @s
execute if entity @e[tag=um_pit_lord_boss] run scoreboard players set pit_lord_alive um.dummy 1
execute if entity @e[tag=um_elder_eye] run scoreboard players set elder_alive um.dummy 1

execute if score elder_alive um.dummy matches 1 unless entity @e[tag=um_elder_eye] run advancement grant @a only undermagic:undermagic/elder
execute if score elder_alive um.dummy matches 1 unless entity @e[tag=um_elder_eye] run advancement grant @a only undermagic:undermagic/abyss elder
execute if score elder_alive um.dummy matches 1 unless entity @e[tag=um_elder_eye] run scoreboard players set elder_alive um.dummy 0

execute if score pit_lord_alive um.dummy matches 1 unless entity @e[tag=um_pit_lord_boss] run advancement grant @a only undermagic:undermagic/pit_lord
execute if score pit_lord_alive um.dummy matches 1 unless entity @e[tag=um_pit_lord_boss] run advancement grant @a only undermagic:undermagic/abyss pit_lord
execute if score pit_lord_alive um.dummy matches 1 unless entity @e[tag=um_pit_lord_boss] run scoreboard players set pit_lord_alive um.dummy 0
