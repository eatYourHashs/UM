scoreboard players set interval um.dummy 0
execute as @a[nbt={Dimension:"undermagic:abyss"}] at @s run function undermagic:abyss_player_int
execute as @e[tag=um_undercrafter] at @s if entity @p[distance=..8] run function undermagic:undercrafter_interval
execute as @e[tag=um_bloodchalice] at @s if entity @p[distance=..24] run function undermagic:bloodchalice_interval
execute as @e[tag=um_pedestal] at @s if entity @p[distance=..24] run function undermagic:pedestal_interval
execute as @a[scores={um.dark_energy=6001..}] at @s run particle witch ~ ~ ~ 0.3 0.5 0.3 0 10
execute as @a[scores={um.dark_energy=6001..},nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate",tag:{um_id:"pit_lord_chestplate"}}]}] at @s run effect give @s resistance 2 2 true
execute as @a[scores={um.dark_energy=6001..}] at @s run effect give @s resistance 2 1 true
execute as @a[scores={um.dark_energy=2001..}] at @s run particle witch ~ ~ ~ 0.3 0.5 0.3 0 10
execute as @a[scores={um.dark_energy=2001..},nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate",tag:{um_id:"pit_lord_chestplate"}}]}] at @s run effect give @s resistance 2 1 true
execute as @a[scores={um.dark_energy=2001..}] at @s run effect give @s resistance 2 0 true
execute as @a[scores={um.dark_energy=1..}] at @s run particle witch ~ ~ ~ 0.3 0.5 0.3 0 10
execute as @a[tag=!um_processed] at @s run function undermagic:player_processing
execute as @e[tag=!um_processed,type=end_crystal,nbt={ShowBottom:1b}] at @s run function undermagic:crystal_processing
execute as @e[type=item,nbt={Item:{id:"minecraft:clock",Count:1b,tag:{um_id:"demon_portal_stabilizer"}}}] at @s if block ~ ~-0.2 ~ obsidian run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,ShowArms:0b,Small:0b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["global.ignore","um_entity","um_demon_portal"]}
execute as @e[type=item,nbt={Item:{id:"minecraft:clock",Count:1b,tag:{um_id:"demon_portal_stabilizer"}}}] at @s if block ~ ~-0.2 ~ obsidian run kill @s
execute as @e[tag=um_demon_portal] at @s unless block ~ ~-0.5 ~ obsidian run kill @s
scoreboard players add @e[tag=um_demon_portal] um.dummy 1
execute as @e[tag=um_demon_portal,scores={um.dummy=20..}] at @s if entity @p[distance=..24] run function undermagic:demon_spawn_processing
execute as @e[tag=um_demon_portal,scores={um.dummy=20..}] at @s run scoreboard players set @s um.dummy 0
execute as @e[tag=um_demon_portal] at @s if entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:clock",Count:1b,tag:{um_id:"infernal_summons"}}}] run function undermagic:summon_pit_lord
execute as @a[scores={version=..10}] run function undermagic:update_player
execute as @e[type=item,nbt={Item:{id:"minecraft:written_book",Count:1b,tag:{um_id:"netheric_book"}}}] at @s if block ~ ~ ~ cauldron unless entity @e[tag=um_bloodchalice,distance=..2] run function undermagic:bloodchalice_init
execute as @e[type=item,nbt={Item:{id:"minecraft:written_book",Count:1b,tag:{um_id:"netheric_book"}}}] at @s if block ~ ~-0.9 ~ quartz_pillar run function undermagic:pedestal_init
effect give @e[tag=um_elemental] invisibility 8 2 true
effect give @a[nbt={SelectedItem:{id:"minecraft:diamond_pickaxe",Count:1b,tag:{um_id:"carnage_1"}}}] haste 3 0 true
effect give @a[nbt={SelectedItem:{id:"minecraft:diamond_pickaxe",Count:1b,tag:{um_id:"carnage_2"}}}] haste 3 1 true
effect give @a[nbt={SelectedItem:{id:"minecraft:diamond_pickaxe",Count:1b,tag:{um_id:"carnage_3"}}}] haste 3 2 true
execute as @a[nbt={Inventory:[{id:"minecraft:leather_helmet",Count:1b,Slot:103b,tag:{um_id:"bloodstained_helmet"}},{id:"minecraft:leather_chestplate",Count:1b,Slot:102b,tag:{um_id:"bloodstained_chestplate"}},{id:"minecraft:leather_leggings",Count:1b,Slot:101b,tag:{um_id:"bloodstained_leggings"}},{id:"minecraft:leather_boots",Count:1b,Slot:100b,tag:{um_id:"bloodstained_boots"}}]},scores={um.blood=..195}] at @s if entity @e[tag=um_bloodchalice,scores={um.dummy=5..},sort=nearest,distance=..8] unless entity @e[distance=..64,type=wither] unless entity @e[distance=..64,tag=um_elemental] unless entity @e[distance=..64,tag=um_pit_lord_boss] unless entity @e[distance=..64,tag=um_blood_boss] unless entity @e[distance=..64,type=ender_dragon] run function undermagic:bs_armor_draw_blood
execute as @a[nbt={Inventory:[{id:"minecraft:leather_helmet",Count:1b,Slot:103b,tag:{um_id:"bloodstained_helmet"}},{id:"minecraft:leather_chestplate",Count:1b,Slot:102b,tag:{um_id:"bloodstained_chestplate"}},{id:"minecraft:leather_leggings",Count:1b,Slot:101b,tag:{um_id:"bloodstained_leggings"}},{id:"minecraft:leather_boots",Count:1b,Slot:100b,tag:{um_id:"bloodstained_boots"}}]},scores={um.blood=..10}] at @s run effect give @s wither 4 4
execute as @a[nbt={Inventory:[{id:"minecraft:leather_helmet",Count:1b,Slot:103b,tag:{um_id:"bloodstained_helmet"}},{id:"minecraft:leather_chestplate",Count:1b,Slot:102b,tag:{um_id:"bloodstained_chestplate"}},{id:"minecraft:leather_leggings",Count:1b,Slot:101b,tag:{um_id:"bloodstained_leggings"}},{id:"minecraft:leather_boots",Count:1b,Slot:100b,tag:{um_id:"bloodstained_boots"}}]},scores={um.blood=..10}] at @s run effect give @s hunger 4 4
execute as @a[nbt=!{Inventory:[{Slot:100b,id:"minecraft:leather_boots",tag:{um_id:"boots_demonic_steel"}}]},nbt=!{Inventory:[{Slot:101b,id:"minecraft:leather_leggings",tag:{um_id:"leggings_demonic_steel"}}]},nbt=!{Inventory:[{Slot:102b,id:"minecraft:leather_chestplate",tag:{um_id:"chestplate_demonic_steel"}}]},nbt=!{Inventory:[{Slot:102b,id:"minecraft:leather_chestplate",tag:{um_id:"pit_lord_chestplate"}}]},nbt=!{Inventory:[{Slot:103b,id:"minecraft:leather_helmet",tag:{um_id:"helmet_demonic_steel"}}]},scores={um.dark_energy=1..}] run scoreboard players remove @s um.dark_energy 1000
execute as @a[nbt={Inventory:[{id:"minecraft:leather_helmet",Count:1b,Slot:103b,tag:{um_id:"shade_helmet"}},{id:"minecraft:leather_chestplate",Count:1b,Slot:102b,tag:{um_id:"shade_chestplate"}},{id:"minecraft:leather_leggings",Count:1b,Slot:101b,tag:{um_id:"shade_leggings"}},{id:"minecraft:leather_boots",Count:1b,Slot:100b,tag:{um_id:"shade_boots"}}]}] run effect give @s invisibility 1 0 true
execute as @a[scores={um.shade_invi=..0},nbt={Inventory:[{id:"minecraft:leather_helmet",Count:1b,Slot:103b,tag:{um_id:"shade_helmet"}},{id:"minecraft:leather_chestplate",Count:1b,Slot:102b,tag:{um_id:"shade_chestplate"}},{id:"minecraft:leather_leggings",Count:1b,Slot:101b,tag:{um_id:"shade_leggings"}},{id:"minecraft:leather_boots",Count:1b,Slot:100b,tag:{um_id:"shade_boots"}}]}] run effect give @s resistance 1 4 true
execute as @a[scores={um.shade_invi=..0},nbt={Inventory:[{id:"minecraft:leather_helmet",Count:1b,Slot:103b,tag:{um_id:"shade_helmet"}},{id:"minecraft:leather_chestplate",Count:1b,Slot:102b,tag:{um_id:"shade_chestplate"}},{id:"minecraft:leather_leggings",Count:1b,Slot:101b,tag:{um_id:"shade_leggings"}},{id:"minecraft:leather_boots",Count:1b,Slot:100b,tag:{um_id:"shade_boots"}}]}] run effect give @s strength 1 1 true
execute as @a[nbt={Inventory:[{id:"minecraft:leather_helmet",Count:1b,Slot:103b,tag:{um_id:"abyss_knight_helmet"}},{id:"minecraft:leather_chestplate",Count:1b,Slot:102b,tag:{um_id:"abyss_knight_chestplate"}},{id:"minecraft:leather_leggings",Count:1b,Slot:101b,tag:{um_id:"abyss_knight_leggings"}},{id:"minecraft:leather_boots",Count:1b,Slot:100b,tag:{um_id:"abyss_knight_boots"}}]}] at @s run effect give @s resistance 2 1 true
execute as @a[nbt={Inventory:[{id:"minecraft:leather_helmet",Count:1b,Slot:103b,tag:{um_id:"abyss_ranger_hood"}},{id:"minecraft:leather_chestplate",Count:1b,Slot:102b,tag:{um_id:"abyss_ranger_tunic"}},{id:"minecraft:leather_leggings",Count:1b,Slot:101b,tag:{um_id:"abyss_ranger_pants"}},{id:"minecraft:leather_boots",Count:1b,Slot:100b,tag:{um_id:"abyss_ranger_boots"}}]},scores={um.ar_stealth=100..}] at @s run effect give @s speed 2 0 true
execute as @a[nbt={Inventory:[{id:"minecraft:leather_helmet",Count:1b,Slot:103b,tag:{um_id:"abyss_ranger_hood"}},{id:"minecraft:leather_chestplate",Count:1b,Slot:102b,tag:{um_id:"abyss_ranger_tunic"}},{id:"minecraft:leather_leggings",Count:1b,Slot:101b,tag:{um_id:"abyss_ranger_pants"}},{id:"minecraft:leather_boots",Count:1b,Slot:100b,tag:{um_id:"abyss_ranger_boots"}}]},scores={um.ar_stealth=100..}] at @s run effect give @s invisibility 2 0 true
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
execute if score difficulty um.dummy matches 1.. run give @a[scores={um.dragon_killed=1..}] minecraft:bow{display:{Name:'{"text":"Dragon\'s Wrath","color":"light_purple","italic":false}',Lore:['[{"text":"a","color":"red","italic":false,"obfuscated":true},{"text":" Lunatic Drop ","color":"red","italic":false,"obfuscated":false},{"text":"a","color":"red","italic":false,"obfuscated":true}]','{"text":"Shoots dragon-charged arrows.","color":"gray","italic":false}','{"text":"Hold it in your hand to charge the bow.","color":"gray","italic":false}','{"text":"Shoot while fully charged to unleash","color":"gray","italic":false}','{"text":"draconic fury!","color":"gray","italic":false}']},Unbreakable:1b,CustomModelData:420050,um_id:dragons_wrath,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:6,Operation:0,UUID:[I;0,618843,0,730460],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2,Operation:0,UUID:[I;0,389745,0,143330],Slot:"mainhand"}]} 1
give @a[scores={um.dragon_killed=1..}] clock{display:{Name:'{"text":"Dragon Scale","color":"aqua","italic":false}',Lore:['{"text":"It seems to have fallen off the great wyrm...","color":"gray","italic":false}']},CustomModelData:420090,um_id:"dragon_scale"} 8
execute if score difficulty um.dummy matches 2.. run give @a[scores={um.dragon_killed=1..}] minecraft:carrot_on_a_stick{display:{Name:'{"text":"Mythical Dragon Egg","color":"light_purple","italic":false}',Lore:['[{"text":"a","color":"dark_red","italic":false,"obfuscated":true},{"text":" Infernal Drop ","color":"dark_red","italic":false,"obfuscated":false},{"text":"a","color":"dark_red","italic":false,"obfuscated":true}]','{"text":"Summons a wyrmling familiar.","color":"gray","italic":false}','{"text":"Right clicking binds this item to you and you alone!","color":"gray","italic":true}']},Unbreakable:1b,CustomModelData:420110,um_id:mythical_dragon_egg} 1
execute if entity @a[scores={um.dragon_killed=1..}] run scoreboard players set dragon_dead um.dummy 1
scoreboard players set @a um.dragon_killed 0
execute if score difficulty um.dummy matches 1.. run give @a[scores={um.wither_killed=1..}] minecraft:carrot_on_a_stick{display:{Name:'{"text":"Bone of Wither","color":"light_purple","italic":false}',Lore:['[{"text":"a","color":"red","italic":false,"obfuscated":true},{"text":" Lunatic Drop ","color":"red","italic":false,"obfuscated":false},{"text":"b","color":"red","italic":false,"obfuscated":true}]','{"text":"Bone clubs enemies.","color":"gray","italic":false}','{"text":"Also protects against withering,","color":"gray","italic":false}','{"text":"and shoots skulls.","color":"gray","italic":false}']},Unbreakable:1b,CustomModelData:420051,um_id:"bone_of_wither",AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2,Operation:0,UUID:[I;0,153009,0,92733],Slot:"mainhand"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:9,Operation:0,UUID:[I;0,182825,0,300322],Slot:"mainhand"}]} 1
scoreboard players set @a um.wither_killed 0
execute at @a[nbt={SelectedItem:{id:"minecraft:bow",Count:1b,tag:{um_id:"dragons_wrath"}}},scores={um.dragon_energy=60..}] run particle minecraft:dragon_breath ~ ~1 ~ 0.3 0.4 0.3 0 10
execute as @a[nbt={SelectedItem:{id:"minecraft:bow",Count:1b,tag:{um_id:"dragons_wrath"}}}] at @s run scoreboard players add @s um.dragon_energy 1
execute as @e[tag=um_blood_monolith] at @s rotated 0 0 run tp @s ^ ^ ^
effect give @a[tag=um_ele_limbs] strength 1 0 true
effect give @a[tag=um_ele_limbs] speed 1 0 true
effect give @a[tag=um_ele_limbs] haste 1 0 true
effect give @a[tag=um_ironskin] resistance 1 1 true
effect give @a[tag=um_flame_body] fire_resistance 1 0 true
effect give @a[tag=um_drac_aspect] resistance 1 2 true
effect give @e[tag=um_blood_monolith] invisibility 2 1 true
execute if score difficulty um.dummy matches 1.. as @e[type=wither] at @s run tp @a[distance=100..105] @s
execute as @e[tag=um_shadow_rift] at @s run function undermagic:rift_interval
execute as @e[tag=um_shadow_guardian] at @s unless entity @e[type=player,nbt={Inventory:[{id:"minecraft:shield",Count:1b,Slot:-106b,tag:{um_id:"shadow_shield"}}]},distance=..10] run kill @s
execute as @e[tag=um_warlock_hand] at @s unless entity @e[type=player,nbt={Inventory:[{id:"minecraft:leather_helmet",Count:1b,Slot:103b,tag:{um_id:"abyss_warlock_hood"}},{id:"minecraft:leather_chestplate",Count:1b,Slot:102b,tag:{um_id:"abyss_warlock_robe"}},{id:"minecraft:leather_leggings",Count:1b,Slot:101b,tag:{um_id:"abyss_warlock_pants"}},{id:"minecraft:leather_boots",Count:1b,Slot:100b,tag:{um_id:"abyss_warlock_boots"}}]},distance=..10] run kill @s
execute as @e[tag=um_dragon_wings] at @s unless entity @a[nbt={Inventory:[{id:"minecraft:leather_helmet",Count:1b,Slot:103b,tag:{um_id:"dragon_helmet"}},{id:"minecraft:leather_chestplate",Count:1b,Slot:102b,tag:{um_id:"dragon_chestplate"}},{id:"minecraft:leather_leggings",Count:1b,Slot:101b,tag:{um_id:"dragon_leggings"}},{id:"minecraft:leather_boots",Count:1b,Slot:100b,tag:{um_id:"dragon_boots"}}]},distance=..10] run kill @s
execute as @a[nbt={Inventory:[{Slot:100b,id:"minecraft:leather_boots",tag:{um_id:"boots_demonic_steel"}}]},scores={um.since_damaged=81..,um.dark_energy=..9996}] run scoreboard players add @s um.dark_energy 50
execute as @a[nbt={Inventory:[{Slot:101b,id:"minecraft:leather_leggings",tag:{um_id:"leggings_demonic_steel"}}]},scores={um.since_damaged=81..,um.dark_energy=..9996}] run scoreboard players add @s um.dark_energy 50
execute as @a[nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate",tag:{um_id:"chestplate_demonic_steel"}}]},scores={um.since_damaged=81..,um.dark_energy=..9996}] run scoreboard players add @s um.dark_energy 50
execute as @a[nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate",tag:{um_id:"pit_lord_chestplate"}}]},scores={um.since_damaged=81..,um.dark_energy=..9996}] run scoreboard players add @s um.dark_energy 150
execute as @a[nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet",tag:{um_id:"helmet_demonic_steel"}}]},scores={um.since_damaged=81..,um.dark_energy=..9996}] run scoreboard players add @s um.dark_energy 50
tag @e[type=skeleton] add um_undead
tag @e[type=stray] add um_undead
tag @e[type=zombie] add um_undead
tag @e[type=zombie_villager] add um_undead
tag @e[type=husk] add um_undead
tag @e[type=drowned] add um_undead
tag @e[type=wither_skeleton] add um_undead
tag @e[type=zombified_piglin] add um_undead
tag @e[type=wither] add um_undead
tag @e[type=ghast] add um_undead
tag @e[type=phantom] add um_undead
tag @e[type=zoglin] add um_undead
tag @e[type=skeleton] add um_hostile
tag @e[type=stray] add um_hostile
tag @e[type=zombie] add um_hostile
tag @e[type=zombie_villager] add um_hostile
tag @e[type=husk] add um_hostile
tag @e[type=drowned] add um_hostile
tag @e[type=wither_skeleton] add um_hostile
tag @e[type=zombified_piglin] add um_hostile
tag @e[type=wither] add um_hostile
tag @e[type=ghast] add um_hostile
tag @e[type=phantom] add um_hostile
tag @e[type=blaze] add um_hostile
tag @e[type=creeper] add um_hostile
tag @e[type=elder_guardian] add um_hostile
tag @e[type=endermite] add um_hostile
tag @e[type=evoker] add um_hostile
tag @e[type=guardian] add um_hostile
tag @e[type=magma_cube] add um_hostile
tag @e[type=pillager] add um_hostile
tag @e[type=ravager] add um_hostile
tag @e[type=shulker] add um_hostile
tag @e[type=silverfish] add um_hostile
tag @e[type=slime] add um_hostile
tag @e[type=spider] add um_hostile
tag @e[type=cave_spider] add um_hostile
tag @e[type=vex] add um_hostile
tag @e[type=vindicator] add um_hostile
tag @e[type=witch] add um_hostile
tag @e[type=piglin] add um_hostile
tag @e[type=hoglin] add um_hostile
tag @e[type=zoglin] add um_hostile
execute as @e[tag=um_charm_table] at @s run data merge entity @s {Rotation:[90F,0F],Fire:100}
execute as @e[tag=um_teleporter] at @s run data merge entity @s {Rotation:[90F,0F],Fire:100}
execute as @e[tag=um_charm_table,tag=!um_processed] at @s run setblock ~ ~ ~ minecraft:dropper[facing=down]{CustomName:'{"text":"Charm Table","italic":false}'} replace
execute as @e[tag=um_charm_table,tag=!um_processed] at @s run tag @s add um_processed
execute as @e[tag=um_charm_table] at @s run function undermagic:charm_table_interval
execute as @e[tag=um_teleporter] at @s run function undermagic:teleporter_interval
effect give @a[scores={um.speed_charms=1}] speed 1 0 true
effect give @a[scores={um.speed_charms=2..}] speed 1 1 true
effect give @a[scores={um.resist_charms=1}] resistance 1 0 true
effect give @a[scores={um.resist_charms=2..}] resistance 1 1 true
effect give @a[scores={um.streng_charms=1}] strength 1 0 true
effect give @a[scores={um.streng_charms=2..}] strength 1 1 true
effect give @a[scores={um.haste_charms=1}] haste 1 0 true
effect give @a[scores={um.haste_charms=2..}] haste 1 1 true
effect give @a[scores={um.jump_charms=1}] jump_boost 1 1 true
effect give @a[scores={um.jump_charms=2..}] jump_boost 1 3 true
effect give @a[scores={um.aqua_charms=1..2}] water_breathing 1 0 true
effect give @a[scores={um.aqua_charms=2..}] dolphins_grace 1 1 true
effect give @a[scores={um.aqua_charms=3..}] conduit_power 1 1 true
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:clock",Count:1b,tag:{um_id:"relic_of_ruin"}}}] at @s run function undermagic:elder_summon
execute as @a[nbt={Inventory:[{id:"minecraft:leather_helmet",Count:1b,Slot:103b,tag:{um_id:"omega_helmet"}},{id:"minecraft:leather_chestplate",Count:1b,Slot:102b,tag:{um_id:"omega_chestplate"}},{id:"minecraft:leather_leggings",Count:1b,Slot:101b,tag:{um_id:"omega_leggings"}},{id:"minecraft:leather_boots",Count:1b,Slot:100b,tag:{um_id:"omega_boots"}}]}] at @s run particle minecraft:end_rod ~ ~1 ~ 0.2 0.4 0.2 0.03 2
effect give @e[tag=um_shadebeast] invisibility 2 1 true
execute as @e[type=zombified_piglin,tag=!um_processed] at @s run function undermagic:pigman_processing
execute as @e[type=magma_cube,tag=!um_processed] at @s run function undermagic:cube_processing
execute as @e[tag=um_salamander] at @s run function undermagic:salamander_interval
scoreboard players remove @a um.tp_cooldown 1
execute store result score rand um.dummy run loot spawn ~ -10 ~ loot undermagic:um_rand/rand1_100
execute store result score rand1 um.dummy run loot spawn ~ -10 ~ loot undermagic:um_rand/rand1_100
execute if score difficulty um.dummy matches 2.. if score rand um.dummy matches 1 if entity @e[type=ender_dragon] at @e[sort=random,tag=um_crystal_marker,limit=1] unless entity @e[type=end_crystal,distance=..2] run function undermagic:respawn_crystal
execute if score difficulty um.dummy matches 2.. if score rand um.dummy matches 1..3 if entity @e[type=ender_dragon] at @r in minecraft:the_end run function undermagic:entity/wyrmling/spawn
execute if score rand um.dummy matches 1 if score rand1 um.dummy matches ..10 if score dragon_dead um.dummy matches 1 at @r in minecraft:the_end run function undermagic:entity/wyrmling/spawn
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
execute if score 5s 6tic matches 1.. run scoreboard players set @e[tag=um_pit_lord_boss] um.erpg_loot 1
execute if score 5s 6tic matches 1.. run scoreboard players set @e[tag=um_elder_eye] um.erpg_loot 1
execute if score 5s 6tic matches 1.. run scoreboard players set @e[tag=um_shadesull] um.erpg_loot 1
execute if score 5s 6tic matches 1.. run scoreboard players set @e[type=ender_dragon] um.erpg_loot 1
execute if score 5s 6tic matches 1.. run scoreboard players set @e[type=wither] um.erpg_loot 1
tag @e[tag=um_pit_lord_boss] add bosshostile
tag @e[tag=um_elder_eye] add bosshostile
tag @e[tag=um_shadesull] add bosshostile
tag @e[tag=um_elemental] add bosshostile
tag @e[tag=um_sb_alpha] add bosshostile
tag @e[tag=um_disciple_of_destruction] add bosshostile
tag @e[tag=um_disciple_of_death] add bosshostile
execute if score 5s 6tic matches 1.. run effect give @e[tag=um_pit_lord_boss] resistance 2 1 true
execute if score 5s 6tic matches 1.. run effect give @e[tag=um_elder_eye] resistance 2 1 true
execute if score 5s 6tic matches 1.. run effect give @e[tag=um_elder_hand] resistance 2 1 true
execute if score 5s 6tic matches 1.. run effect give @e[tag=um_shadesull] resistance 2 1 true
execute if score 5s 6tic matches 1.. run effect give @e[tag=um_blood_minion] resistance 2 1 true
scoreboard players add swap_clock um.dummy 1
execute if score swap_clock um.dummy matches 100.. as @a at @a run function undermagic:swap_charms
execute as @e[tag=um_pit_abs] at @s unless entity @e[tag=um_pit_lord_boss,distance=..5] run kill @s
execute if entity @e[tag=um_pit_lord_boss] run scoreboard players set pit_lord_alive um.dummy 1
execute if entity @e[tag=um_elder_eye] run scoreboard players set elder_alive um.dummy 1
execute if score elder_alive um.dummy matches 1 unless entity @e[tag=um_elder_eye] run advancement grant @a only undermagic:undermagic/elder
execute if score elder_alive um.dummy matches 1 unless entity @e[tag=um_elder_eye] run advancement grant @a only undermagic:undermagic/abyss elder
execute if score elder_alive um.dummy matches 1 unless entity @e[tag=um_elder_eye] run scoreboard players set elder_alive um.dummy 0
execute if score pit_lord_alive um.dummy matches 1 unless entity @e[tag=um_pit_lord_boss] run advancement grant @a only undermagic:undermagic/pit_lord
execute if score pit_lord_alive um.dummy matches 1 unless entity @e[tag=um_pit_lord_boss] run advancement grant @a only undermagic:undermagic/abyss pit_lord
execute if score pit_lord_alive um.dummy matches 1 unless entity @e[tag=um_pit_lord_boss] run scoreboard players set pit_lord_alive um.dummy 0