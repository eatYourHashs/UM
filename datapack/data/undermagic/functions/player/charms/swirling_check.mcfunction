execute store result score temp0 um.dummy run loot spawn 0 -10 0 loot undermagic:technical/rand1_100
execute if score temp0 um.dummy matches 1..10 run function undermagic:player/charms/swirling_trigger
execute if score temp0 um.dummy matches 11..15 if score @s um.swirl_charms matches 2.. run function undermagic:player/charms/swirling_trigger
execute if score temp0 um.dummy matches 16..20 if score @s um.swirl_charms matches 3.. run function undermagic:player/charms/swirling_trigger
execute if score temp0 um.dummy matches 21..25 if score @s um.swirl_charms matches 4.. run function undermagic:player/charms/swirling_trigger
