scoreboard players add $cast.temp um.dummy 1
execute if entity @a[distance=..2,gamemode=!creative,gamemode=!spectator] at @s facing entity @p[gamemode=!creative,gamemode=!spectator] feet run function undermagic:entity/acidling/acidling_bolt
execute unless score $cast.temp um.dummy matches 40.. if block ~ ~ ~ minecraft:air positioned ^ ^ ^0.5 run function undermagic:entity/acidling/acidling_attempt_bolt
execute unless score $cast.temp um.dummy matches 40.. if block ~ ~ ~ minecraft:cave_air positioned ^ ^ ^0.5 run function undermagic:entity/acidling/acidling_attempt_bolt
