tp @s ^ ^ ^1
execute if block ~ ~ ~ obsidian run kill @s
execute if block ~ ~ ~ bedrock run kill @s
particle minecraft:poof ~ ~ ~ 0 0 0 0 1
scoreboard players add @s um.dummy 1
execute if score @s um.dummy matches 200.. run kill @s
execute if entity @e[distance=..2,tag=!global.ignore] if score @s um.dummy matches 10.. run function undermagic:entity/projectile/ice_bolt_burst 
execute if entity @a[distance=..3,scores={um.kinet_charms=1..}] if score @s um.dummy matches 10.. unless entity @s[tag=um.kinet_proc] run function undermagic:player/charms/kinetic_field_weak