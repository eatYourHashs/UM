execute facing entity @p feet if block ^ ^-2 ^3 lava run tp @s ^ ^ ^0.2
execute facing entity @p feet if block ^ ^-1 ^2 lava run tp @s ^ ^ ^0.2
execute if block ~ ~-0.4 ~ lava run effect give @s slow_falling 1 0 true
execute if block ~ ~-0.4 ~ lava run tp @s ~ ~0.1 ~

