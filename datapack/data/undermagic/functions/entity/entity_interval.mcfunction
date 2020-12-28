
execute if entity @s[type=wither] run function undermagic:entity/generic/wither_interval

execute if entity @s[tag=um.demon_portal] run function undermagic:entity/generic/demon_portal
execute if entity @s[tag=um.shadow_rift] run function undermagic:entity/rift/interval
execute if entity @e[tag=um.salamander] run function undermagic:entity/salamander/interval

effect give @s[tag=um.blood_monolith] invisibility 2 1 true
effect give @s[tag=um.shadebeast] invisibility 2 1 true
effect give @s[tag=um.abyssal_revenant] invisibility 2 1 true

execute if entity @s[tag=um.blood_monolith] rotated 0 0 run tp @s ^ ^ ^
execute if entity @s[tag=um.shadow_guardian] unless entity @a[nbt={Inventory:[{id:"minecraft:shield",Count:1b,Slot:-106b,tag:{um_id:"shadow_shield"}}]},distance=..10] run kill @s
execute if entity @s[tag=um.warlock_hand] unless entity @a[distance=..10,predicate=undermagic:armor_sets/abyss_warlock] run kill @s
execute if entity @s[tag=um.dragon_wings] unless entity @a[distance=..10,predicate=undermagic:armor_sets/dragon] run kill @s

#Crafting Blocks
execute if entity @s[tag=um.undercrafter] if entity @p[distance=..8] run function undermagic:block/undercrafter/interval
execute if entity @s[tag=um.bloodchalice] if entity @p[distance=..24] run function undermagic:block/bloodchalice/interval
execute if entity @s[tag=um.pedestal] if entity @p[distance=..24] run function undermagic:block/pedestal_interval
execute if entity @s[tag=um.teleporter] run function undermagic:block/teleporter_interval
execute if entity @s[tag=um.charm_table] run function undermagic:block/charm_table_interval
execute if entity @s[tag=um.radiant_monolith] run function undermagic:block/radiant_monolith_interval
execute if entity @s[tag=um.blood_monolith] run function undermagic:block/blood_monolith_interval

#dungeon markers
execute if entity @s[tag=um.break_walls_marker] run fill ~-1 ~ ~-1 ~1 ~2 ~1 air
execute if entity @s[tag=um.break_walls_marker] run kill @s
execute if entity @s[tag=um.dungeon_passage_marker] if entity @a[distance=..32] run function undermagic:world/dungeon_passage
execute if entity @s[tag=um.dungeon_passage_down_marker] if entity @a[distance=..32] run function undermagic:world/dungeon_passage_down
execute if entity @s[tag=um.dungeon_passage_up_marker] if entity @a[distance=..32] run function undermagic:world/dungeon_passage_up
execute if entity @s[tag=um.dungeon_intersection_marker] if entity @a[distance=..32] run function undermagic:world/dungeon_intersection
execute if entity @s[tag=um.dungeon_great_hall_marker] if entity @a[distance=..32] run function undermagic:world/dungeon_great_hall
execute if entity @s[tag=um.dungeon_library_marker] if entity @a[distance=..32] run function undermagic:world/dungeon_library
execute if entity @s[tag=um.dungeon_small_parkour_marker] if entity @a[distance=..32] run function undermagic:world/dungeon_small_parkour
execute if entity @s[tag=um.dungeon_large_parkour_marker] if entity @a[distance=..32] run function undermagic:world/dungeon_large_parkour
execute if entity @s[tag=um.dungeon_destruction_room_marker] if entity @a[distance=..32] run function undermagic:world/dungeon_destruction_room
execute if entity @s[tag=um.dungeon_death_room_marker] if entity @a[distance=..32] run function undermagic:world/dungeon_death_room
execute if entity @s[tag=um.shadesull_arena_marker] if entity @a[distance=..32] run function undermagic:world/shadesull_arena

execute if entity @s[tag=um.disciple_of_destruction_spawner] if entity @a[distance=..14] run function undermagic:entity/disciple_of_destruction/summon
execute if entity @s[tag=um.disciple_of_death_spawner] if entity @a[distance=..14] run function undermagic:entity/disciple_of_death/summon
execute if entity @s[tag=um.shadesull_door] if entity @a[distance=..5] if score destruction_downed um.dummy matches 1 if score death_downed um.dummy matches 1 run function undermagic:entity/shadesull/door_open
execute if entity @s[tag=um.shadesull_spawner] if entity @a[distance=..14] unless entity @e[tag=um.shadesull_door] run function undermagic:entity/shadesull/summon