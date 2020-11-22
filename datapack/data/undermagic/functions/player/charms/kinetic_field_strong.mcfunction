scoreboard players set $math.in_0 um.dummy 100
function undermagic:utils/random
execute if score $math.out_0 um.dummy matches 1..15 run effect give @p[scores={um.kinet_charms=1..},distance=..3] absorption 20 1
execute if score $math.out_0 um.dummy matches 16..20 run effect give @p[scores={um.kinet_charms=2..},distance=..3] absorption 20 1
execute if score $math.out_0 um.dummy matches 21..25 run effect give @p[scores={um.kinet_charms=3..},distance=..3] absorption 20 1
execute if score $math.out_0 um.dummy matches 26..30 run effect give @p[scores={um.kinet_charms=4..},distance=..3] absorption 20 1
execute if score $math.out_0 um.dummy matches 1..15 if entity @p[scores={um.kinet_charms=1..},distance=..3] run playsound minecraft:entity.blaze.death player @a ~ ~ ~ 1 2
execute if score $math.out_0 um.dummy matches 16..20 if entity @p[scores={um.kinet_charms=2..},distance=..3] run playsound minecraft:entity.blaze.death player @a ~ ~ ~ 1 2
execute if score $math.out_0 um.dummy matches 21..25 if entity @p[scores={um.kinet_charms=3..},distance=..3] run playsound minecraft:entity.blaze.death player @a ~ ~ ~ 1 2
execute if score $math.out_0 um.dummy matches 26..30 if entity @p[scores={um.kinet_charms=4..},distance=..3] run playsound minecraft:entity.blaze.death player @a ~ ~ ~ 1 2
execute if score $math.out_0 um.dummy matches 1..15 if entity @p[scores={um.kinet_charms=1..},distance=..3] run playsound minecraft:entity.blaze.hurt player @a ~ ~ ~ 1 1
execute if score $math.out_0 um.dummy matches 16..20 if entity @p[scores={um.kinet_charms=2..},distance=..3] run playsound minecraft:entity.blaze.hurt player @a ~ ~ ~ 1 1
execute if score $math.out_0 um.dummy matches 21..25 if entity @p[scores={um.kinet_charms=3..},distance=..3] run playsound minecraft:entity.blaze.hurt player @a ~ ~ ~ 1 1
execute if score $math.out_0 um.dummy matches 26..30 if entity @p[scores={um.kinet_charms=4..},distance=..3] run playsound minecraft:entity.blaze.hurt player @a ~ ~ ~ 1 1
execute if score $math.out_0 um.dummy matches 1..15 if entity @p[scores={um.kinet_charms=1..},distance=..3] run kill @s
execute if score $math.out_0 um.dummy matches 16..20 if entity @p[scores={um.kinet_charms=2..},distance=..3] run kill @s
execute if score $math.out_0 um.dummy matches 21..25 if entity @p[scores={um.kinet_charms=3..},distance=..3] run kill @s
execute if score $math.out_0 um.dummy matches 26..30 if entity @p[scores={um.kinet_charms=4..},distance=..3] run kill @s
tag @s add um.kinet_proc
