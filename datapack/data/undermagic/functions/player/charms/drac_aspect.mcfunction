
effect give @s[scores={um.sneak=1..}] minecraft:levitation 1 15 true
effect give @s[scores={um.sneak=1..}] minecraft:slow_falling 5 0 true
execute if score @s um.sneak matches 1.. run particle minecraft:dragon_breath ~ ~-1 ~ 0.1 0.1 0.1 0.1 10
