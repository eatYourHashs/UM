execute unless score @s um.dummy matches 80.. run tp @s ^ ^ ^0.2
execute unless score @s um.dummy matches 80.. run particle minecraft:witch ~ ~ ~ 0.5 0.5 0.5 0.02 20
execute if score @s um.dummy matches 80 run playsound minecraft:entity.illusioner.prepare_blindness hostile @a ~ ~ ~ 1 1
execute if score @s um.dummy matches 80 run particle minecraft:witch ~ ~ ~ 0.5 0.5 0.5 0.1 300
execute if score @s um.dummy matches 80.. run particle minecraft:witch ~ ~ ~ 2 0.5 2 0.05 20
scoreboard players add @s um.dummy 1
execute if entity @s[scores={um.dummy=800..}] run kill @s
execute if score @s um.dummy matches 80.. as @a[tag=!global.ignore,scores={um.invuln=10..},distance=..6] run attribute @s minecraft:generic.armor modifier add 1e8e6084-8b38-40bf-8f4c-fd16d40424fa cataclyz_curse -1 multiply
execute unless score @s um.dummy matches 80.. if entity @a[distance=..3,scores={um.kinet_charms=1..}] unless entity @s[tag=um.kinet_proc] run function undermagic:player/charms/kinetic_field_strong