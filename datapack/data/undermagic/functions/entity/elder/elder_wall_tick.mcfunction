execute if entity @s[tag=um.ew_up] run tp @s ~ ~0.5 ~
execute if entity @s[tag=um.ew_up] if entity @e[tag=um.elder_eye,scores={um.boss_hp=..100}] run tp @s ~ ~0.5 ~
execute if entity @s[tag=um.ew_down] run tp @s ~ ~-0.5 ~
execute if entity @s[tag=um.ew_down] if entity @e[tag=um.elder_eye,scores={um.boss_hp=..100}] run tp @s ~ ~-0.5 ~
execute if entity @s[tag=um.ew_north] run tp @s ~ ~ ~-0.5
execute if entity @s[tag=um.ew_north] if entity @e[tag=um.elder_eye,scores={um.boss_hp=..100}] run tp @s ~ ~ ~-0.5
execute if entity @s[tag=um.ew_south] run tp @s ~ ~ ~0.5
execute if entity @s[tag=um.ew_south] if entity @e[tag=um.elder_eye,scores={um.boss_hp=..100}] run tp @s ~ ~ ~0.5
execute if entity @s[tag=um.ew_east] run tp @s ~0.5 ~ ~
execute if entity @s[tag=um.ew_east] if entity @e[tag=um.elder_eye,scores={um.boss_hp=..100}] run tp @s ~0.5 ~ ~
execute if entity @s[tag=um.ew_west] run tp @s ~-0.5 ~ ~
execute if entity @s[tag=um.ew_west] if entity @e[tag=um.elder_eye,scores={um.boss_hp=..100}] run tp @s ~-0.5 ~ ~
execute if entity @s[tag=um.ew_up] run particle minecraft:end_rod ~ ~ ~ 0.1 0.1 2 0 20
execute if entity @s[tag=um.ew_up] run particle minecraft:end_rod ~ ~ ~ 2 0.1 0.1 0 20
execute if entity @s[tag=um.ew_down] run particle minecraft:end_rod ~ ~ ~ 0.1 0.1 2 0 20
execute if entity @s[tag=um.ew_down] run particle minecraft:end_rod ~ ~ ~ 2 0.1 0.1 0 20
execute if entity @s[tag=um.ew_east] if score difficulty um.dummy matches 2.. run particle minecraft:end_rod ~ ~ ~ 0.1 0.1 2 0 20
execute if entity @s[tag=um.ew_east] run particle minecraft:end_rod ~ ~ ~ 0.1 2 0.1 0 20
execute if entity @s[tag=um.ew_west] if score difficulty um.dummy matches 2.. run particle minecraft:end_rod ~ ~ ~ 0.1 0.1 2 0 20
execute if entity @s[tag=um.ew_west] run particle minecraft:end_rod ~ ~ ~ 0.1 2 0.1 0 20
execute if entity @s[tag=um.ew_north] run particle minecraft:end_rod ~ ~ ~ 0.1 2 0.1 0 20
execute if entity @s[tag=um.ew_north] if score difficulty um.dummy matches 2.. run particle minecraft:end_rod ~ ~ ~ 2 0.1 0.1 0 20
execute if entity @s[tag=um.ew_south] run particle minecraft:end_rod ~ ~ ~ 0.1 2 0.1 0 20
execute if entity @s[tag=um.ew_south] if score difficulty um.dummy matches 2.. run particle minecraft:end_rod ~ ~ ~ 2 0.1 0.1 0 20
execute if entity @s[tag=um.ew_up] run effect give @a[distance=..1] instant_damage 1 1
execute if entity @s[tag=um.ew_up] positioned ~1 ~ ~ run effect give @a[distance=..1] instant_damage 1 1
execute if entity @s[tag=um.ew_up] positioned ~2 ~ ~ run effect give @a[distance=..1] instant_damage 1 1
execute if entity @s[tag=um.ew_up] positioned ~3 ~ ~ run effect give @a[distance=..1] instant_damage 1 1
execute if entity @s[tag=um.ew_up] positioned ~4 ~ ~ run effect give @a[distance=..1] instant_damage 1 1
execute if entity @s[tag=um.ew_up] positioned ~-1 ~ ~ run effect give @a[distance=..1] instant_damage 1 1
execute if entity @s[tag=um.ew_up] positioned ~-2 ~ ~ run effect give @a[distance=..1] instant_damage 1 1
execute if entity @s[tag=um.ew_up] positioned ~-3 ~ ~ run effect give @a[distance=..1] instant_damage 1 1
execute if entity @s[tag=um.ew_up] positioned ~-4 ~ ~ run effect give @a[distance=..1] instant_damage 1 1
execute if entity @s[tag=um.ew_up] positioned ~ ~ ~1 run effect give @a[distance=..1] instant_damage 1 1
execute if entity @s[tag=um.ew_up] positioned ~ ~ ~2 run effect give @a[distance=..1] instant_damage 1 1
execute if entity @s[tag=um.ew_up] positioned ~ ~ ~3 run effect give @a[distance=..1] instant_damage 1 1
execute if entity @s[tag=um.ew_up] positioned ~ ~ ~4 run effect give @a[distance=..1] instant_damage 1 1
execute if entity @s[tag=um.ew_up] positioned ~ ~ ~-1 run effect give @a[distance=..1] instant_damage 1 1
execute if entity @s[tag=um.ew_up] positioned ~ ~ ~-2 run effect give @a[distance=..1] instant_damage 1 1
execute if entity @s[tag=um.ew_up] positioned ~ ~ ~-3 run effect give @a[distance=..1] instant_damage 1 1
execute if entity @s[tag=um.ew_up] positioned ~ ~ ~-4 run effect give @a[distance=..1] instant_damage 1 1
execute if entity @s[tag=um.ew_down] run effect give @a[distance=..1] instant_damage 1 1
execute if entity @s[tag=um.ew_down] positioned ~1 ~ ~ run effect give @a[distance=..1] instant_damage 1 1
execute if entity @s[tag=um.ew_down] positioned ~2 ~ ~ run effect give @a[distance=..1] instant_damage 1 1
execute if entity @s[tag=um.ew_down] positioned ~3 ~ ~ run effect give @a[distance=..1] instant_damage 1 1
execute if entity @s[tag=um.ew_down] positioned ~4 ~ ~ run effect give @a[distance=..1] instant_damage 1 1
execute if entity @s[tag=um.ew_down] positioned ~-1 ~ ~ run effect give @a[distance=..1] instant_damage 1 1
execute if entity @s[tag=um.ew_down] positioned ~-2 ~ ~ run effect give @a[distance=..1] instant_damage 1 1
execute if entity @s[tag=um.ew_down] positioned ~-3 ~ ~ run effect give @a[distance=..1] instant_damage 1 1
execute if entity @s[tag=um.ew_down] positioned ~-4 ~ ~ run effect give @a[distance=..1] instant_damage 1 1
execute if entity @s[tag=um.ew_down] positioned ~ ~ ~1 run effect give @a[distance=..1] instant_damage 1 1
execute if entity @s[tag=um.ew_down] positioned ~ ~ ~2 run effect give @a[distance=..1] instant_damage 1 1
execute if entity @s[tag=um.ew_down] positioned ~ ~ ~3 run effect give @a[distance=..1] instant_damage 1 1
execute if entity @s[tag=um.ew_down] positioned ~ ~ ~4 run effect give @a[distance=..1] instant_damage 1 1
execute if entity @s[tag=um.ew_down] positioned ~ ~ ~-1 run effect give @a[distance=..1] instant_damage 1 1
execute if entity @s[tag=um.ew_down] positioned ~ ~ ~-2 run effect give @a[distance=..1] instant_damage 1 1
execute if entity @s[tag=um.ew_down] positioned ~ ~ ~-3 run effect give @a[distance=..1] instant_damage 1 1
execute if entity @s[tag=um.ew_down] positioned ~ ~ ~-4 run effect give @a[distance=..1] instant_damage 1 1
execute if entity @s[tag=um.ew_east] run effect give @a[distance=..1] instant_damage 1 1
execute if entity @s[tag=um.ew_east] positioned ~ ~1 ~ run effect give @a[distance=..1] instant_damage 1 1
execute if entity @s[tag=um.ew_east] positioned ~ ~2 ~ run effect give @a[distance=..1] instant_damage 1 1
execute if entity @s[tag=um.ew_east] positioned ~ ~3 ~ run effect give @a[distance=..1] instant_damage 1 1
execute if entity @s[tag=um.ew_east] positioned ~ ~4 ~ run effect give @a[distance=..1] instant_damage 1 1
execute if entity @s[tag=um.ew_east] positioned ~ ~-1 ~ run effect give @a[distance=..1] instant_damage 1 1
execute if entity @s[tag=um.ew_east] positioned ~ ~-2 ~ run effect give @a[distance=..1] instant_damage 1 1
execute if entity @s[tag=um.ew_east] positioned ~ ~-3 ~ run effect give @a[distance=..1] instant_damage 1 1
execute if entity @s[tag=um.ew_east] positioned ~ ~-4 ~ run effect give @a[distance=..1] instant_damage 1 1
execute if entity @s[tag=um.ew_east] positioned ~ ~ ~1 run effect give @a[distance=..1] instant_damage 1 1
execute if entity @s[tag=um.ew_east] positioned ~ ~ ~2 run effect give @a[distance=..1] instant_damage 1 1
execute if entity @s[tag=um.ew_east] positioned ~ ~ ~3 run effect give @a[distance=..1] instant_damage 1 1
execute if entity @s[tag=um.ew_east] positioned ~ ~ ~4 run effect give @a[distance=..1] instant_damage 1 1
execute if entity @s[tag=um.ew_east] positioned ~ ~ ~-1 run effect give @a[distance=..1] instant_damage 1 1
execute if entity @s[tag=um.ew_east] positioned ~ ~ ~-2 run effect give @a[distance=..1] instant_damage 1 1
execute if entity @s[tag=um.ew_east] positioned ~ ~ ~-3 run effect give @a[distance=..1] instant_damage 1 1
execute if entity @s[tag=um.ew_east] positioned ~ ~ ~-4 run effect give @a[distance=..1] instant_damage 1 1
execute if entity @s[tag=um.ew_west] run effect give @a[distance=..1] instant_damage 1 1
execute if entity @s[tag=um.ew_west] positioned ~ ~1 ~ run effect give @a[distance=..1] instant_damage 1 1
execute if entity @s[tag=um.ew_west] positioned ~ ~2 ~ run effect give @a[distance=..1] instant_damage 1 1
execute if entity @s[tag=um.ew_west] positioned ~ ~3 ~ run effect give @a[distance=..1] instant_damage 1 1
execute if entity @s[tag=um.ew_west] positioned ~ ~4 ~ run effect give @a[distance=..1] instant_damage 1 1
execute if entity @s[tag=um.ew_west] positioned ~ ~-1 ~ run effect give @a[distance=..1] instant_damage 1 1
execute if entity @s[tag=um.ew_west] positioned ~ ~-2 ~ run effect give @a[distance=..1] instant_damage 1 1
execute if entity @s[tag=um.ew_west] positioned ~ ~-3 ~ run effect give @a[distance=..1] instant_damage 1 1
execute if entity @s[tag=um.ew_west] positioned ~ ~-4 ~ run effect give @a[distance=..1] instant_damage 1 1
execute if entity @s[tag=um.ew_west] positioned ~ ~ ~1 run effect give @a[distance=..1] instant_damage 1 1
execute if entity @s[tag=um.ew_west] positioned ~ ~ ~2 run effect give @a[distance=..1] instant_damage 1 1
execute if entity @s[tag=um.ew_west] positioned ~ ~ ~3 run effect give @a[distance=..1] instant_damage 1 1
execute if entity @s[tag=um.ew_west] positioned ~ ~ ~4 run effect give @a[distance=..1] instant_damage 1 1
execute if entity @s[tag=um.ew_west] positioned ~ ~ ~-1 run effect give @a[distance=..1] instant_damage 1 1
execute if entity @s[tag=um.ew_west] positioned ~ ~ ~-2 run effect give @a[distance=..1] instant_damage 1 1
execute if entity @s[tag=um.ew_west] positioned ~ ~ ~-3 run effect give @a[distance=..1] instant_damage 1 1
execute if entity @s[tag=um.ew_west] positioned ~ ~ ~-4 run effect give @a[distance=..1] instant_damage 1 1
execute if entity @s[tag=um.ew_north] run effect give @a[distance=..1] instant_damage 1 1
execute if entity @s[tag=um.ew_north] positioned ~1 ~ ~ run effect give @a[distance=..1] instant_damage 1 1
execute if entity @s[tag=um.ew_north] positioned ~2 ~ ~ run effect give @a[distance=..1] instant_damage 1 1
execute if entity @s[tag=um.ew_north] positioned ~3 ~ ~ run effect give @a[distance=..1] instant_damage 1 1
execute if entity @s[tag=um.ew_north] positioned ~4 ~ ~ run effect give @a[distance=..1] instant_damage 1 1
execute if entity @s[tag=um.ew_north] positioned ~-1 ~ ~ run effect give @a[distance=..1] instant_damage 1 1
execute if entity @s[tag=um.ew_north] positioned ~-2 ~ ~ run effect give @a[distance=..1] instant_damage 1 1
execute if entity @s[tag=um.ew_north] positioned ~-3 ~ ~ run effect give @a[distance=..1] instant_damage 1 1
execute if entity @s[tag=um.ew_north] positioned ~-4 ~ ~ run effect give @a[distance=..1] instant_damage 1 1
execute if entity @s[tag=um.ew_north] positioned ~ ~1 ~ run effect give @a[distance=..1] instant_damage 1 1
execute if entity @s[tag=um.ew_north] positioned ~ ~2 ~ run effect give @a[distance=..1] instant_damage 1 1
execute if entity @s[tag=um.ew_north] positioned ~ ~3 ~ run effect give @a[distance=..1] instant_damage 1 1
execute if entity @s[tag=um.ew_north] positioned ~ ~4 ~ run effect give @a[distance=..1] instant_damage 1 1
execute if entity @s[tag=um.ew_north] positioned ~ ~-1 ~ run effect give @a[distance=..1] instant_damage 1 1
execute if entity @s[tag=um.ew_north] positioned ~ ~-2 ~ run effect give @a[distance=..1] instant_damage 1 1
execute if entity @s[tag=um.ew_north] positioned ~ ~-3 ~ run effect give @a[distance=..1] instant_damage 1 1
execute if entity @s[tag=um.ew_north] positioned ~ ~-4 ~ run effect give @a[distance=..1] instant_damage 1 1
execute if entity @s[tag=um.ew_south] run effect give @a[distance=..1] instant_damage 1 1
execute if entity @s[tag=um.ew_south] positioned ~1 ~ ~ run effect give @a[distance=..1] instant_damage 1 1
execute if entity @s[tag=um.ew_south] positioned ~2 ~ ~ run effect give @a[distance=..1] instant_damage 1 1
execute if entity @s[tag=um.ew_south] positioned ~3 ~ ~ run effect give @a[distance=..1] instant_damage 1 1
execute if entity @s[tag=um.ew_south] positioned ~4 ~ ~ run effect give @a[distance=..1] instant_damage 1 1
execute if entity @s[tag=um.ew_south] positioned ~-1 ~ ~ run effect give @a[distance=..1] instant_damage 1 1
execute if entity @s[tag=um.ew_south] positioned ~-2 ~ ~ run effect give @a[distance=..1] instant_damage 1 1
execute if entity @s[tag=um.ew_south] positioned ~-3 ~ ~ run effect give @a[distance=..1] instant_damage 1 1
execute if entity @s[tag=um.ew_south] positioned ~-4 ~ ~ run effect give @a[distance=..1] instant_damage 1 1
execute if entity @s[tag=um.ew_south] positioned ~ ~1 ~ run effect give @a[distance=..1] instant_damage 1 1
execute if entity @s[tag=um.ew_south] positioned ~ ~2 ~ run effect give @a[distance=..1] instant_damage 1 1
execute if entity @s[tag=um.ew_south] positioned ~ ~3 ~ run effect give @a[distance=..1] instant_damage 1 1
execute if entity @s[tag=um.ew_south] positioned ~ ~4 ~ run effect give @a[distance=..1] instant_damage 1 1
execute if entity @s[tag=um.ew_south] positioned ~ ~-1 ~ run effect give @a[distance=..1] instant_damage 1 1
execute if entity @s[tag=um.ew_south] positioned ~ ~-2 ~ run effect give @a[distance=..1] instant_damage 1 1
execute if entity @s[tag=um.ew_south] positioned ~ ~-3 ~ run effect give @a[distance=..1] instant_damage 1 1
execute if entity @s[tag=um.ew_south] positioned ~ ~-4 ~ run effect give @a[distance=..1] instant_damage 1 1
scoreboard players add @s um.dummy 1
execute if score @s um.dummy matches 100.. run kill @s