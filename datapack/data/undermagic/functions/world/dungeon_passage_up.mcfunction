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
execute if block ^ ^3 ^1 polished_blackstone_bricks run scoreboard players set stop um.dummy 1
execute if block ^ ^3 ^2 polished_blackstone_bricks run scoreboard players set stop um.dummy 1
execute if block ^ ^3 ^3 polished_blackstone_bricks run scoreboard players set stop um.dummy 1
execute if block ^ ^3 ^4 polished_blackstone_bricks run scoreboard players set stop um.dummy 1
execute if block ^ ^3 ^5 polished_blackstone_bricks run scoreboard players set stop um.dummy 1
execute if block ^ ^3 ^6 polished_blackstone_bricks run scoreboard players set stop um.dummy 1
execute if block ^ ^3 ^7 polished_blackstone_bricks run scoreboard players set stop um.dummy 1
execute if block ^ ^3 ^8 polished_blackstone_bricks run scoreboard players set stop um.dummy 1
execute if block ^ ^3 ^9 polished_blackstone_bricks run scoreboard players set stop um.dummy 1
scoreboard players set $math.in_0 um.dummy 100
execute unless score stop um.dummy matches 1 run setblock ^ ^1 ^ air
execute unless score stop um.dummy matches 1 run setblock ^ ^ ^ air
execute unless score stop um.dummy matches 1 run fill ^-2 ^-1 ^1 ^2 ^6 ^10 minecraft:polished_blackstone_bricks
execute unless score stop um.dummy matches 1 run fill ^-1 ^ ^1 ^1 ^5 ^10 minecraft:air
execute unless score stop um.dummy matches 1 run fill ^-1 ^ ^2 ^1 ^ ^2 minecraft:polished_blackstone_brick_slab
execute unless score stop um.dummy matches 1 run fill ^-1 ^ ^3 ^1 ^ ^3 minecraft:polished_blackstone_bricks
execute unless score stop um.dummy matches 1 run fill ^-1 ^1 ^4 ^1 ^1 ^4 minecraft:polished_blackstone_brick_slab
execute unless score stop um.dummy matches 1 run fill ^-1 ^1 ^5 ^1 ^1 ^5 minecraft:polished_blackstone_bricks
execute unless score stop um.dummy matches 1 run fill ^-1 ^2 ^6 ^1 ^2 ^6 minecraft:polished_blackstone_brick_slab
execute unless score stop um.dummy matches 1 run fill ^-1 ^2 ^7 ^1 ^2 ^10 minecraft:polished_blackstone_bricks
execute unless score stop um.dummy matches 1 run fill ^-1 ^4 ^ ^1 ^5 ^ minecraft:polished_blackstone_bricks
execute unless score stop um.dummy matches 1 run setblock ^ ^5 ^5 soul_lantern[hanging=true]
execute unless score stop um.dummy matches 1 run function undermagic:utils/random
execute unless score stop um.dummy matches 1 if score $math.out_0 um.dummy matches 1..50 positioned ^ ^3 ^9 run summon zombie ~ ~ ~ {Silent:1b,DeathLootTable:"undermagic:entities/revenant",PersistenceRequired:1b,CanPickUpLoot:0b,Health:40f,IsBaby:0b,Tags:["um.entity","um.abyssal_revenant"],CustomName:'{"text":"Abyssal Revenant"}',ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:420123}}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.670F],Attributes:[{Name:generic.max_health,Base:40},{Name:generic.follow_range,Base:16},{Name:generic.knockback_resistance,Base:1},{Name:generic.movement_speed,Base:0.25},{Name:generic.attack_damage,Base:15},{Name:generic.armor,Base:14},{Name:generic.armor_toughness,Base:4},{Name:zombie.spawn_reinforcements,Base:0}]}
execute unless score stop um.dummy matches 1 run function undermagic:utils/random
execute unless score stop um.dummy matches 1 if score $math.out_0 um.dummy matches 1..29 positioned ^ ^3 ^9 run function undermagic:world/dungeon_passage_mark
execute unless score stop um.dummy matches 1 if score $math.out_0 um.dummy matches 30..39 positioned ^ ^3 ^9 run function undermagic:world/dungeon_passage_up_mark
execute unless score stop um.dummy matches 1 if score $math.out_0 um.dummy matches 40..49 positioned ^ ^3 ^9 run function undermagic:world/dungeon_passage_down_mark
execute store success score succ um.dummy if entity @e[tag=um.dungeon_intersection]
execute unless score stop um.dummy matches 1 if score $math.out_0 um.dummy matches 50..90 positioned ^ ^3 ^9 unless entity @e[tag=um.dungeon_intersection,distance=..24] unless score succ um.dummy matches 8.. run function undermagic:world/dungeon_intersection_mark
execute unless score stop um.dummy matches 1 if score $math.out_0 um.dummy matches 50..90 positioned ^ ^3 ^9 unless entity @e[tag=um.dungeon_intersection,distance=..24] if score succ um.dummy matches 8.. run function undermagic:world/dungeon_passage_mark
execute unless score stop um.dummy matches 1 if score $math.out_0 um.dummy matches 50..90 positioned ^ ^3 ^9 if entity @e[tag=um.dungeon_intersection,distance=..24] unless score succ um.dummy matches 8.. run function undermagic:world/dungeon_passage_mark
execute unless score stop um.dummy matches 1 if score $math.out_0 um.dummy matches 50..90 positioned ^ ^3 ^9 if entity @e[tag=um.dungeon_intersection,distance=..24] if score succ um.dummy matches 8.. run function undermagic:world/dungeon_passage_mark
execute unless score stop um.dummy matches 1 if score $math.out_0 um.dummy matches 91..100 positioned ^ ^3 ^9 unless entity @e[tag=um.dungeon_spawn,distance=..96] if entity @e[tag=um.shadesull_arena] run fill ^-1 ^ ^1 ^1 ^2 ^1 polished_blackstone_bricks 
execute unless score stop um.dummy matches 1 if score $math.out_0 um.dummy matches 91..100 positioned ^ ^3 ^9 unless entity @e[tag=um.dungeon_spawn,distance=..96] unless entity @e[tag=um.shadesull_arena] run function undermagic:entity/shadesull/shadesull_arena_mark
execute unless score stop um.dummy matches 1 if score $math.out_0 um.dummy matches 91..100 positioned ^ ^3 ^9 if entity @e[tag=um.dungeon_spawn,distance=..96] run function undermagic:world/dungeon_passage_mark
execute if score stop um.dummy matches 1 run fill ^-1 ^ ^1 ^1 ^2 ^1 polished_blackstone_bricks
scoreboard players set stop um.dummy 0
execute if entity @s[type=armor_stand] run kill @s