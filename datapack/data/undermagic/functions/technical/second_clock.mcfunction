execute as @a[scores={um.mr_charms=1..}] at @s run function undermagic:player/charms/mana_regen
execute as @a[scores={um.blaze_charms=1..}] at @s run function undermagic:player/charms/blaze
execute as @a[scores={um.cure_charms=1..}] at @s run function undermagic:player/charms/cure
schedule function undermagic:technical/second_clock 1s replace
