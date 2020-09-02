particle minecraft:portal ~ ~0.2 ~ 0.2 0.2 0.2 0.2 4
effect give @s invisibility 1 1 true
execute if entity @p[distance=..2.5] if entity @s[nbt={OnGround:1b},scores={um.dummy=..-20}] run effect give @s levitation 1 70 true
execute if entity @p[distance=..2.5] if entity @s[nbt={OnGround:1b},scores={um.dummy=..-20}] run scoreboard players set @s um.dummy 1
execute if entity @s[scores={um.dummy=..0}] run effect clear @s levitation
effect give @a[distance=..5,gamemode=!creative] blindness 3 0 true
execute if score @s um.dummy_two matches 40..50 if entity @p[distance=5..10,gamemode=!creative] facing entity @p[distance=3..7] feet run tp @s ^ ^0.5 ^5
execute if score @s um.dummy_two matches 120 facing entity @p[distance=..20] feet run function undermagic:entity/shadebeast/dark_orb_shadebeast
execute if score @s um.dummy_two matches 160 facing entity @p[distance=..20] feet run function undermagic:entity/shadebeast/dark_orb_shadebeast
execute if score @s um.dummy_two matches 80 facing entity @p[distance=..20] feet run function undermagic:entity/shadebeast/dark_orb_shadebeast
scoreboard players remove @s um.dummy 1
scoreboard players add @s um.dummy_two 1
execute if score @s um.dummy_two matches 201.. run scoreboard players set @s um.dummy_two 0
execute store result bossbar undermagic:sb_alpha value run data get entity @s Health 1
bossbar set undermagic:sb_alpha visible true
bossbar set undermagic:sb_alpha players @a[distance=..32]