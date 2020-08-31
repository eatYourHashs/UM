playsound minecraft:entity.dragon_fireball.explode hostile @a ~ ~ ~ 1 0.5
particle minecraft:flame ~ ~ ~ 0.1 0.1 0.1 0.2 200
particle minecraft:explosion
kill @s
execute if entity @p[distance=..4] run effect give @p instant_damage 1 3