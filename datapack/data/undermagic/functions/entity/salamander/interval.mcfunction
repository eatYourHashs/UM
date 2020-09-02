effect give @s invisibility 10 1 true
effect give @s slowness 10 0 true
scoreboard players add @s um.dummy 1
scoreboard players add @s[scores={um.dummy=31..}] um.dummy 1
effect give @s[scores={um.dummy=28..}] slowness 1 2 true
execute if entity @p[distance=..40,gamemode=!creative,gamemode=!spectator] facing entity @p[distance=..40,gamemode=!creative,gamemode=!spectator] feet if score @s um.dummy matches 30 run function undermagic:entity/salamander/salamander_firespit

