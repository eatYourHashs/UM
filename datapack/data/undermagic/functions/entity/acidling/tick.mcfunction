scoreboard players add @s um.dummy 1
execute if score @s um.dummy matches 201.. run scoreboard players set @s um.dummy 0
execute if score @s um.dummy matches 200 run scoreboard players set $cast.temp um.dummy 0
execute if score @s um.dummy matches 200 positioned ~ ~1.8 ~ if entity @p[gamemode=!creative,gamemode=!spectator,distance=..64] facing entity @p[gamemode=!creative,gamemode=!spectator] feet run function undermagic:entity/acidling/acidling_attempt_bolt
effect give @s invisibility 10 1 true
