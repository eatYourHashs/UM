scoreboard players set $math.in_0 um.dummy 100
function undermagic:utils/random
execute if score $math.out_0 um.dummy matches 1..10 run function undermagic:player/charms/swirling_trigger
execute if score $math.out_0 um.dummy matches 11..15 if score @s um.swirl_charms matches 2.. run function undermagic:player/charms/swirling_trigger
execute if score $math.out_0 um.dummy matches 16..20 if score @s um.swirl_charms matches 3.. run function undermagic:player/charms/swirling_trigger
execute if score $math.out_0 um.dummy matches 21..25 if score @s um.swirl_charms matches 4.. run function undermagic:player/charms/swirling_trigger
