execute store result score @s um.dummy if entity @e[tag=um.demon,distance=..100]
# ONLY SUMMON DEMONS IF THERE ARE LESS THAN 10 DEMONS!!!!
tag @s[scores={um.dummy=..10},predicate=undermagic:probability/0.5] add um.tag
execute if entity @s[tag=um.tag,scores={um.dummy=..10}] run function undermagic:entity/lesser_demon/summon
execute if entity @s[tag=!um.tag,scores={um.dummy=..10}] run function undermagic:entity/greater_demon/summon
tag @s remove um.tag
scoreboard players reset @s um.dummy
