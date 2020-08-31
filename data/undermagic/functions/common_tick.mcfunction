execute as @e[type=item_frame,nbt={Item:{id:"minecraft:book",Count:1b}}] at @s if block ~ ~-1 ~ fire if block ~ ~-2 ~ netherrack run scoreboard players add @s um.dummy 1
execute as @e[type=item_frame,nbt={Item:{id:"minecraft:book",Count:1b}}] at @s if block ~ ~-1 ~ fire if block ~ ~-2 ~ netherrack if score @s um.dummy matches 20.. run function undermagic:book_conversion
execute as @e[type=ghast,tag=!um_processed] at @s run function undermagic:ghast_processing
execute as @e[type=wither_skeleton,tag=!um_processed] at @s run function undermagic:skel_processing
execute as @e[type=creeper,tag=!um_processed] at @s run function undermagic:creep_processing
execute as @e[type=item,nbt={Item:{id:"minecraft:written_book",Count:1b,tag:{um_id:"netheric_book"}}}] at @s if block ~ ~-0.9 ~ crafting_table run function undermagic:undercrafter_init
execute as @e[tag=um_entity] at @s run function undermagic:um_entity_tick
execute as @e[type=arrow,tag=!um_processed] at @s run function undermagic:arrow_processing
execute as @a[scores={um.cstick=1..}] at @s run function undermagic:cstick
execute as @a[nbt={Inventory:[{id:"minecraft:leather_helmet",Count:1b,Slot:103b,tag:{um_id:"abyss_ranger_hood"}},{id:"minecraft:leather_chestplate",Count:1b,Slot:102b,tag:{um_id:"abyss_ranger_tunic"}},{id:"minecraft:leather_leggings",Count:1b,Slot:101b,tag:{um_id:"abyss_ranger_pants"}},{id:"minecraft:leather_boots",Count:1b,Slot:100b,tag:{um_id:"abyss_ranger_boots"}}]}] at @s run function undermagic:abyss_ranger_tick
execute as @a[nbt={Inventory:[{id:"minecraft:leather_helmet",Count:1b,Slot:103b,tag:{um_id:"dragon_helmet"}},{id:"minecraft:leather_chestplate",Count:1b,Slot:102b,tag:{um_id:"dragon_chestplate"}},{id:"minecraft:leather_leggings",Count:1b,Slot:101b,tag:{um_id:"dragon_leggings"}},{id:"minecraft:leather_boots",Count:1b,Slot:100b,tag:{um_id:"dragon_boots"}}]}] at @s run function undermagic:dragon_armor_tick
execute as @a[nbt={Inventory:[{id:"minecraft:leather_helmet",Count:1b,Slot:103b,tag:{um_id:"abyss_warlock_hood"}},{id:"minecraft:leather_chestplate",Count:1b,Slot:102b,tag:{um_id:"abyss_warlock_robe"}},{id:"minecraft:leather_leggings",Count:1b,Slot:101b,tag:{um_id:"abyss_warlock_pants"}},{id:"minecraft:leather_boots",Count:1b,Slot:100b,tag:{um_id:"abyss_warlock_boots"}}]}] at @s run function undermagic:abyss_warlock_tick
execute as @a[tag=um_enderlord,scores={um.sneak=1..,um.jump=1..}] at @s run function undermagic:enderlord_warp
execute as @a[scores={um.sneak=1..,um.jump=1..,um.ender_charms=2..}] at @s run function undermagic:enderlord_warp
effect give @a[tag=um_drac_aspect,scores={um.sneak=1..}] minecraft:levitation 1 15 true
effect give @a[tag=um_drac_aspect,scores={um.sneak=1..}] minecraft:slow_falling 5 0 true
effect give @a[scores={um.sneak=1..,um.slowfa_charms=2..}] minecraft:slow_falling 1 0 true
effect give @a[scores={um.sneak=1..,um.slowfa_charms=1,um.airtime=..2}] minecraft:slow_falling 5 0 true
scoreboard players add @a[nbt={OnGround:0b}] um.airtime 1
scoreboard players set @a[nbt={OnGround:1b}] um.airtime 0
scoreboard players add @a um.since_attack 1
scoreboard players set @a[scores={um.deal_damage=1..}] um.since_attack 0
effect give @a[scores={um.dedstr_charms=1,um.since_attack=1200..}] minecraft:strength 1 1 true
effect give @a[scores={um.dedstr_charms=2..,um.since_attack=1200..}] minecraft:strength 1 3 true
effect give @a[scores={um.shield_charms=1,um.since_damaged=600}] minecraft:absorption 7200 0 true
effect give @a[scores={um.shield_charms=2..,um.since_damaged=600}] minecraft:absorption 7200 1 true
effect clear @a[scores={um.flight_charms=1..}] minecraft:levitation
effect give @a[scores={um.flight_charms=1,um.airtime=..100},x_rotation=-90..-40] minecraft:levitation 1 9 true
effect give @a[scores={um.flight_charms=1,um.airtime=..100},x_rotation=-40..40,nbt={OnGround:0b}] minecraft:levitation 1 255 true
effect give @a[scores={um.flight_charms=1,um.airtime=..100},x_rotation=40..90] minecraft:slow_falling 1 0 true
effect give @a[scores={um.flight_charms=2,um.airtime=..200},x_rotation=-90..-40] minecraft:levitation 1 14 true
effect give @a[scores={um.flight_charms=2,um.airtime=..200},x_rotation=-40..40,nbt={OnGround:0b}] minecraft:levitation 1 255 true
effect give @a[scores={um.flight_charms=2,um.airtime=..200},x_rotation=40..90] minecraft:slow_falling 1 0 true
effect give @a[scores={um.flight_charms=3,um.airtime=..600},x_rotation=-90..-40] minecraft:levitation 1 19 true
effect give @a[scores={um.flight_charms=3,um.airtime=..600},x_rotation=-40..40,nbt={OnGround:0b}] minecraft:levitation 1 255 true
effect give @a[scores={um.flight_charms=3,um.airtime=..600},x_rotation=40..90] minecraft:slow_falling 1 0 true
effect give @a[scores={um.flight_charms=4..},x_rotation=-90..-40] minecraft:levitation 1 19 true
effect give @a[scores={um.flight_charms=4..},x_rotation=-40..40,nbt={OnGround:0b}] minecraft:levitation 1 255 true
effect give @a[scores={um.flight_charms=4..},x_rotation=40..90] minecraft:slow_falling 1 0 true
execute as @a[tag=um_drac_aspect,scores={um.sneak=1..}] at @s run particle minecraft:dragon_breath ~ ~-1 ~ 0.1 0.1 0.1 0.1 10
execute as @a[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Count:1b,Slot:-106b,tag:{um_id:"longsword_demonic_steel"}}]}] at @s run function undermagic:ds_sheath
execute as @a[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Count:1b,Slot:-106b,tag:{um_id:"longsword_shadow"}}]}] at @s run function undermagic:shadow_sheath
execute as @a[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Count:1b,Slot:-106b,tag:{um_id:"longsword_abyss"}}]}] at @s run function undermagic:abyss_sheath
execute as @a[nbt={Inventory:[{id:"minecraft:shield",Count:1b,Slot:-106b,tag:{um_id:"shadow_shield"}}]}] at @s run function undermagic:shadow_shield_tick
execute as @a[nbt={Inventory:[{id:"minecraft:shield",Count:1b,Slot:-106b,tag:{um_id:"shadow_shield"}}]},scores={um.shield_block=1..}] at @s run function undermagic:shadow_counter
execute as @a[nbt={Inventory:[{id:"minecraft:shield",Count:1b,Slot:-106b,tag:{um_id:"draconic_bulwark"}}]}] at @s run function undermagic:draconic_shield_tick
execute as @a[nbt={Inventory:[{id:"minecraft:shield",Count:1b,Slot:-106b,tag:{um_id:"draconic_bulwark"}}]},scores={um.shield_block=1..,um.drac_sh_chg=1..}] at @s run function undermagic:draconic_counter
scoreboard players add @a[scores={um.resist=1..}] um.shade_invi 100
scoreboard players add @a[scores={um.deal_damage=1..}] um.shade_invi 60
scoreboard players set @a um.cstick 0
scoreboard players set @a um.sneak 0
scoreboard players set @a um.jump 0
scoreboard players set @a um.shield_block 0
scoreboard players set @a um.resist 0
scoreboard players set @a um.bow_shot 0
scoreboard players set @a um.crossbow_shot 0
scoreboard players remove @a[scores={um.orb_cooldown=1..}] um.orb_cooldown 1
scoreboard players add interval um.dummy 1
scoreboard players add @a um.since_damaged 1
scoreboard players add @a um.reviv_cd 1
scoreboard players remove @e[scores={um.aw_mark=1..}] um.aw_mark 1
scoreboard players remove @e[scores={um.oathbow_mark=1..}] um.oathbow_mark 1
execute as @a[scores={um.reviv_cd=6000}] if score @s um.reviv_charms > @s um.reviv_chg run scoreboard players add @s um.reviv_chg 1
execute as @a[scores={um.reviv_cd=12000}] if score @s um.reviv_charms > @s um.reviv_chg run scoreboard players add @s um.reviv_chg 1
execute as @a[scores={um.reviv_cd=18000}] if score @s um.reviv_charms > @s um.reviv_chg run scoreboard players add @s um.reviv_chg 1
execute as @a[scores={um.reviv_cd=24000}] if score @s um.reviv_charms > @s um.reviv_chg run scoreboard players add @s um.reviv_chg 1
execute as @a[scores={um.health=..6,um.reviv_chg=1..}] at @s run function undermagic:revivify
scoreboard players set @a[scores={um.reviv_cd=24000..}] um.reviv_cd 0
execute if score interval um.dummy matches 10.. run function undermagic:common_interval
execute as @a[scores={um.take_damage=1..}] run function undermagic:player_take_damage
execute as @a[nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate",tag:{um_id:"pit_lord_chestplate"}}]},scores={um.dark_energy=2000..}] at @s if block ~ ~ ~ lava run effect give @s fire_resistance 4 0 true
execute as @a[nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate",tag:{um_id:"pit_lord_chestplate"}}]},scores={um.dark_energy=2000..}] at @s if block ~ ~ ~ fire run effect give @s fire_resistance 4 0 true
execute as @a[nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate",tag:{um_id:"pit_lord_chestplate"}}]},scores={um.dark_energy=2000..}] at @s if block ~ ~ ~ lava run scoreboard players set @s um.since_damaged 0
execute as @a[nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate",tag:{um_id:"pit_lord_chestplate"}}]},scores={um.dark_energy=2000..}] at @s if block ~ ~ ~ fire run scoreboard players set @s um.since_damaged 0
scoreboard players add @e[type=arrow] um.dummy 1
scoreboard players remove @a um.flame_grasp 1
execute as @a[scores={um.flame_grasp=1..20}] at @s run particle flame ~ ~1 ~ 0.2 0.3 0.2 0 4
execute as @a[scores={um.flame_grasp=1..20}] at @s run playsound minecraft:entity.ender_dragon.shoot hostile @a ~ ~ ~ 1 2
execute as @a[scores={um.flame_grasp=4..6}] at @s run tp @s @e[limit=1,sort=nearest,tag=um_pit_lord_boss]
execute as @e[type=item,nbt={Item:{id:"minecraft:clock",Count:1b,tag:{um_id:"pit_lord_heart"}}}] run data merge entity @s {Health:100}
execute as @a[scores={um.deal_damage=1..},nbt={SelectedItem:{id:"minecraft:iron_sword",Count:1b,tag:{um_id:"bloody_edge_3"}}}] at @s run effect give @s minecraft:instant_health
execute as @a[scores={um.deal_damage=1..,um.drain_charms=1}] at @s run effect give @s minecraft:instant_health
execute as @a[scores={um.deal_damage=1..,um.drain_charms=2..}] at @s run effect give @s minecraft:instant_health 1 1
execute as @a[scores={um.deal_damage=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{um_id:"inferno_staff"}}}] at @s run effect give @s minecraft:absorption 20 0 true
scoreboard players set @a um.deal_damage 0
execute if score difficulty um.dummy matches 1.. as @e[type=ender_dragon,nbt={DragonPhase:8}] at @s facing entity @p feet run tp @s ^ ^ ^0.5
execute if score difficulty um.dummy matches 1.. if entity @e[type=ender_dragon] run scoreboard players add dragon um.dummy 1
execute if score difficulty um.dummy matches 1.. if score dragon um.dummy matches 301.. run scoreboard players set dragon um.dummy 0
execute if score difficulty um.dummy matches 1.. if entity @e[type=ender_dragon] if score dragon um.dummy matches 130 at @r in minecraft:the_end run summon minecraft:dragon_fireball ~ ~40 ~ {direction:[0.0,-1.0,0.0],power:[0.0,-0.1,0.0]}
execute if score difficulty um.dummy matches 2.. if entity @e[type=ender_dragon] if score dragon um.dummy matches 50 at @r in minecraft:the_end run summon minecraft:dragon_fireball ~ ~40 ~ {direction:[0.0,-1.0,0.0],power:[0.0,-0.1,0.0]}
execute if score difficulty um.dummy matches 2.. if entity @e[type=ender_dragon] if score dragon um.dummy matches 100 at @r in minecraft:the_end run summon minecraft:dragon_fireball ~ ~40 ~ {direction:[0.0,-1.0,0.0],power:[0.0,-0.1,0.0]}
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{um_id:"bone_of_wither"}}}] run effect clear @s minecraft:wither
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{um_id:"inferno_staff"}}}] run effect give @s minecraft:fire_resistance 2 0 true
scoreboard players remove @a[scores={um.shade_invi=1..}] um.shade_invi 1
execute store result bossbar undermagic:elder value run scoreboard players get @e[tag=um_elder_eye,limit=1] um.boss_hp
kill @e[type=item,nbt={Item:{id:"minecraft:structure_block"}}]
execute as @e[tag=um_split_shot] at @s run particle smoke
execute as @a[scores={um.kill_count=1..}] at @s run function undermagic:player_kill
scoreboard players add @a[scores={um.mana=0..99}] um.mana 1