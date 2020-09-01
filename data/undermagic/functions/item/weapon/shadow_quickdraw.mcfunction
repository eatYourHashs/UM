
particle minecraft:smoke ^ ^1 ^2.5 0.5 0.2 0.5 0.1 30
particle minecraft:sweep_attack ^ ^0.6 ^2.5 0 0 0 0 1
execute positioned ^ ^0.4 ^2.1 run effect give @a[distance=..2] instant_damage 1 1 true
execute positioned ^ ^0.4 ^2.1 run effect give @e[distance=..2,type=!#undermagic:undead] instant_damage 1 1 true
execute positioned ^ ^0.4 ^2.1 run effect give @e[distance=..2,type=#undermagic:undead] instant_health 1 1 true
playsound minecraft:entity.player.attack.sweep player @a ^ ^1 ^1 1 0.7
loot replace entity @s weapon.mainhand loot undermagic:items/longsword_shadow
