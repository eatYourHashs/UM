
data modify storage undermagic:common boss_status.disciple_of_destruction set value 0b

bossbar set undermagic:disciple_of_destruction visible false
bossbar set undermagic:disciple_of_destruction players @s

execute unless entity @e[tag=um.disciple_of_destruction] run scoreboard players set destruction_downed um.dummy 1

execute as @e[tag=um.disciple_of_destruction_model] at @s run particle minecraft:explosion_emitter
execute as @e[tag=um.disciple_of_destruction_model] at @s run playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1 0.5

tp @e[tag=um.disciple_of_destruction] ~ -100 ~
kill @e[tag=um.disciple_of_destruction]
