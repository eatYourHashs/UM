execute if block ^ ^ ^ polished_blackstone_bricks run scoreboard players set stop um.dummy 1
execute if block ^ ^ ^1 polished_blackstone_bricks run scoreboard players set stop um.dummy 1
execute if block ^ ^ ^2 polished_blackstone_bricks run scoreboard players set stop um.dummy 1
execute if block ^ ^ ^3 polished_blackstone_bricks run scoreboard players set stop um.dummy 1
execute if block ^ ^ ^4 polished_blackstone_bricks run scoreboard players set stop um.dummy 1
execute if block ^ ^ ^5 polished_blackstone_bricks run scoreboard players set stop um.dummy 1
execute if block ^ ^ ^6 polished_blackstone_bricks run scoreboard players set stop um.dummy 1
execute if block ^ ^ ^7 polished_blackstone_bricks run scoreboard players set stop um.dummy 1
execute if block ^ ^ ^8 polished_blackstone_bricks run scoreboard players set stop um.dummy 1
execute if block ^ ^ ^9 polished_blackstone_bricks run scoreboard players set stop um.dummy 1
execute unless score stop um.dummy matches 1 run setblock ^ ^1 ^ air
execute unless score stop um.dummy matches 1 run setblock ^ ^ ^ air
execute unless score stop um.dummy matches 1 run fill ^-2 ^-1 ^1 ^2 ^3 ^9 minecraft:polished_blackstone_bricks
execute unless score stop um.dummy matches 1 run fill ^-1 ^ ^1 ^1 ^2 ^9 minecraft:air
execute unless score stop um.dummy matches 1 run setblock ^ ^2 ^5 soul_lantern[hanging=true]
execute unless score stop um.dummy matches 1 store result score rand um.dummy run loot spawn 0 -10 0 loot undermagic:um_rand/rand1_100
execute unless score stop um.dummy matches 1 if score rand um.dummy matches 1..50 positioned ^ ^ ^9 run summon zombie ~ ~ ~ {Silent:1b,DeathLootTable:"undermagic:um_mob/revenant",PersistenceRequired:1b,CanPickUpLoot:0b,Health:40f,IsBaby:0b,Tags:["um_entity","um_abyssal_revenant"],CustomName:'{"text":"Abyssal Revenant"}',ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:420123}}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.670F],Attributes:[{Name:generic.max_health,Base:40},{Name:generic.follow_range,Base:16},{Name:generic.knockback_resistance,Base:1},{Name:generic.movement_speed,Base:0.25},{Name:generic.attack_damage,Base:15},{Name:generic.armor,Base:14},{Name:generic.armor_toughness,Base:4},{Name:zombie.spawn_reinforcements,Base:0}]}
execute unless score stop um.dummy matches 1 store result score rand um.dummy run loot spawn 0 -10 0 loot undermagic:um_rand/rand1_100
execute unless score stop um.dummy matches 1 if score rand um.dummy matches 1..39 positioned ^ ^ ^9 run function undermagic:dungeon_passage
execute unless score stop um.dummy matches 1 if score rand um.dummy matches 40..44 positioned ^ ^ ^9 run function undermagic:dungeon_passage_up
execute unless score stop um.dummy matches 1 if score rand um.dummy matches 45..49 positioned ^ ^ ^9 run function undermagic:dungeon_passage_down
execute unless score stop um.dummy matches 1 store success score succ um.dummy if entity @e[tag=um_dungeon_intersection]
execute unless score stop um.dummy matches 1 if score rand um.dummy matches 50..90 positioned ^ ^ ^9 unless entity @e[tag=um_dungeon_intersection,distance=..24] unless score succ um.dummy matches 8.. run function undermagic:dungeon_intersection
execute unless score stop um.dummy matches 1 if score rand um.dummy matches 50..90 positioned ^ ^ ^9 unless entity @e[tag=um_dungeon_intersection,distance=..24] if score succ um.dummy matches 8.. run function undermagic:dungeon_passage
execute unless score stop um.dummy matches 1 if score rand um.dummy matches 50..90 positioned ^ ^ ^9 if entity @e[tag=um_dungeon_intersection,distance=..24] unless score succ um.dummy matches 8.. run function undermagic:dungeon_passage
execute unless score stop um.dummy matches 1 if score rand um.dummy matches 50..90 positioned ^ ^ ^9 if entity @e[tag=um_dungeon_intersection,distance=..24] if score succ um.dummy matches 8.. run function undermagic:dungeon_passage
execute unless score stop um.dummy matches 1 if score rand um.dummy matches 91..100 positioned ^ ^ ^9 unless entity @e[tag=um_dungeon_spawn,distance=..128] if entity @e[tag=um_shadesull_arena] run fill ^-1 ^ ^1 ^1 ^2 ^1 polished_blackstone_bricks 
execute unless score stop um.dummy matches 1 if score rand um.dummy matches 91..100 positioned ^ ^ ^9 unless entity @e[tag=um_dungeon_spawn,distance=..128] unless entity @e[tag=um_shadesull_arena] run function undermagic:shadesull_arena
execute unless score stop um.dummy matches 1 if score rand um.dummy matches 91..100 positioned ^ ^ ^9 if entity @e[tag=um_dungeon_spawn,distance=..128] run function undermagic:dungeon_passage
execute if score stop um.dummy matches 1 run fill ^-1 ^ ^1 ^1 ^2 ^1 polished_blackstone_bricks
scoreboard players set stop um.dummy 0