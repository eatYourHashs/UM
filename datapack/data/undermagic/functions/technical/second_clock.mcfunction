execute as @a[scores={um.mr_charms=1..}] at @s run function undermagic:player/charms/mana_regen
execute as @a[scores={um.blaze_charms=1..}] at @s run function undermagic:player/charms/blaze
execute as @a[scores={um.cure_charms=1..}] at @s run function undermagic:player/charms/cure
execute as @a[scores={um.count_charms=1..}] at @s if score @s um.count_cd matches 1.. run scoreboard players remove @s um.count_cd 1
execute if score difficulty_set um.dummy matches 1.. run function undermagic:technical/difficulty_set
execute if score nohit_set um.dummy matches 1.. run function undermagic:technical/nohit_set
schedule function undermagic:technical/second_clock 1s replace
