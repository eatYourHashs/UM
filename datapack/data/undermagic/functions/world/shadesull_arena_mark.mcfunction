summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,Tags:[global.ignore,um.entity,um.shadesull_arena_marker,um.dungeon_marker_new]}
tp @e[tag=um.dungeon_marker_new,limit=1] ~ ~ ~ ~ ~
tag @e[tag=um.dungeon_marker_new] remove um.dungeon_marker_new
scoreboard players set shade_arena_spawned um.dummy 1