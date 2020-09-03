setblock ^ ^1 ^ air
setblock ^ ^ ^ air
fill ^-2 ^-1 ^1 ^2 ^3 ^2 minecraft:polished_blackstone_bricks
fill ^-4 ^-1 ^3 ^-3 ^3 ^7 minecraft:polished_blackstone_bricks
fill ^3 ^-1 ^3 ^4 ^3 ^7 minecraft:polished_blackstone_bricks
fill ^-2 ^-1 ^3 ^2 ^4 ^8 minecraft:polished_blackstone_bricks
fill ^-1 ^ ^1 ^1 ^2 ^3 minecraft:air
fill ^-2 ^ ^3 ^2 ^3 ^7 minecraft:air
fill ^-4 ^ ^4 ^-3 ^2 ^6 minecraft:air
fill ^3 ^ ^4 ^4 ^2 ^6 minecraft:air
setblock ^ ^3 ^5 soul_lantern[hanging=true]
setblock ^ ^1 ^6 chest{LootTable:"minecraft:undermagic/abyssal_spire"}
setblock ^ ^ ^6 polished_blackstone
summon armor_stand ^ ^ ^5 {Tags:["um_entity","global.ignore","um_dungeon_intersection"],Marker:1b,NoGravity:1b,Invulnerable:1b,Invisible:1b}
summon zombie ^ ^ ^5 {Silent:1b,DeathLootTable:"undermagic:um_mob/revenant",PersistenceRequired:1b,CanPickUpLoot:0b,Health:40f,IsBaby:0b,Tags:["um_entity","um_abyssal_revenant"],CustomName:'{"text":"Abyssal Revenant"}',ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:420123}}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.670F],Attributes:[{Name:generic.max_health,Base:40},{Name:generic.follow_range,Base:16},{Name:generic.knockback_resistance,Base:1},{Name:generic.movement_speed,Base:0.25},{Name:generic.attack_damage,Base:15},{Name:generic.armor,Base:14},{Name:generic.armor_toughness,Base:4},{Name:zombie.spawn_reinforcements,Base:0}]}
execute store result score rand um.dummy run loot spawn 0 -10 0 loot undermagic:um_rand/rand1_100
execute positioned ^-4 ^ ^5 facing ^-1 ^ ^ run function undermagic:dungeon_passage
execute positioned ^4 ^ ^5 facing ^1 ^ ^ run function undermagic:dungeon_passage
