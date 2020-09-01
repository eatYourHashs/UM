scoreboard players add @s um.dummy 1
execute if score @s un.dummy matches 101.. run scoreboard players set @s um.dummy 0
execute if score @s un.dummy matches 100 if entity @p[gamemode=!creative,gamemode=!spectator,distance=..64] facing entity @p[gamemode=!creative,gamemode=!spectator] feet run function undermagic:voidling_bolt
effect give @s invisibility 10 1 true
